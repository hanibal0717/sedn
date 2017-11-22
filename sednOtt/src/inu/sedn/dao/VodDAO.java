package inu.sedn.dao;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.ibatis.sqlmap.client.SqlMapClient;

import inu.sedn.model.CategoryDTO;
import inu.sedn.model.SednDataDTO;


public class VodDAO {
	public void setSqlMapper(SqlMapClient sqlMapper) {
	}
	public void setSqlFactory(SqlSessionFactory sqlFactory) {
	}
	
	private SqlSessionTemplate sqlTemplate;	
	public void setSqlTemplate(SqlSessionTemplate sqlTemplate) {
		this.sqlTemplate = sqlTemplate;
	}
	SqlMapClientTemplate sqlMapTemplate;
	public void setSqlMapTemplate(SqlMapClientTemplate sqlMapTemplate) {
		this.sqlMapTemplate = sqlMapTemplate;
	}
	public String topData() {
		String topIdx=sqlTemplate.selectOne("topData");
		return topIdx;
	}
	public String categoryToText(String sdCategory) {
		String categoryText="";
		String oneCode=sdCategory.substring(0,3);
		String twoCode=sdCategory.substring(3,6);
		String threeCode=sdCategory.substring(6,9);
		String catchMenuCode="";
		if(!oneCode.equals("000")&&twoCode.equals("000")&&threeCode.equals("000")){
			catchMenuCode=sdCategory;
			categoryText=sqlTemplate.selectOne("catchMenuText",catchMenuCode);//1depth
		}else if(!oneCode.equals("000")&&!twoCode.equals("000")&&threeCode.equals("000")){
			catchMenuCode=oneCode+"000000";
			categoryText=sqlTemplate.selectOne("catchMenuText",catchMenuCode);//1depth
			catchMenuCode=oneCode+twoCode+"000";
			categoryText=categoryText+" / "+sqlTemplate.selectOne("catchMenuText",catchMenuCode);//2depth
		}else if(!oneCode.equals("000")&&!twoCode.equals("000")&&!threeCode.equals("000")){
			catchMenuCode=oneCode+"000000";
			categoryText=sqlTemplate.selectOne("catchMenuText",catchMenuCode);//1depth
			catchMenuCode=oneCode+twoCode+"000";
			categoryText=categoryText+" / "+sqlTemplate.selectOne("catchMenuText",catchMenuCode);//2depth
			catchMenuCode=oneCode+twoCode+threeCode;
			categoryText=categoryText+" / "+sqlTemplate.selectOne("catchMenuText",catchMenuCode);//3depth
		}else{
			categoryText="============Wrong Category====================";

		}
		//System.out.println(categoryText);
		return categoryText;
	}
	public List<CategoryDTO> categoryLists(String categoryType) {
		List<CategoryDTO> lists=sqlTemplate.selectList("categoryList",categoryType);
		return lists;
	}
	public SednDataDTO jasonDataView(String idx) {
		SednDataDTO dataView=sqlTemplate.selectOne("dataView",idx);
		return dataView;
	}
	public int getTotalRecordCount(String categoryCode, String sword) {
		int totalCount =0;
		Map<String,String> map = new HashMap<String,String>();	
		map.put("categoryCode",categoryCode);
		map.put("sword", sword);
		totalCount=sqlTemplate.selectOne("dataTotalCount",map);
		return totalCount;	
	}
	public List<SednDataDTO> dataList(String categoryCode, String sword,int start, int end) {
		List<SednDataDTO> lists=null;
		Map map = new HashMap();	
			map.put("start", start);
			map.put("end", end);
			map.put("sword", sword);
			map.put("categoryCode",categoryCode);
		lists=sqlTemplate.selectList("dataList",map);
		return lists;
	}
	public String imagesSlice(String vodPath, String imgPath, String sdVodbox, String sdImgbox) {
		//String ffmpegPath ="/usr/bin/avconv";
		String ffmpegPath ="/usr/local/bin/avconv";
		String fOriginal = vodPath+"/"+sdVodbox;  
		String fResult = imgPath+"/"+sdImgbox;     
		String[] cmdLine=new String[]{ffmpegPath,"-i",fOriginal,"-an","-ss","00:00:10","-an","-r","1","-vframes","1","-y",fResult};
		ProcessBuilder pb = new ProcessBuilder(cmdLine);
        pb.redirectErrorStream(true);
        Process p=null;
		try {
             p = pb.start();
        } catch (IOException e) {
        	 e.printStackTrace();
        	 p.destroy();
        	 System.out.println("false");
            return "false";
        }
		exhaustInputStream(p.getInputStream());
		 try {
			 p.waitFor();
		 } catch (InterruptedException e) {
			 p.destroy();
		 }
		 if (p.exitValue() != 0) {
			 System.out.println("source error");
			 return "false";
		 }

		 if (fResult.length() == 0) {
			 System.out.println("noimage");
			 	return "false";
		  }
		 p.destroy();
		 return sdImgbox;
	}
	private void exhaustInputStream(final InputStream is) {
		try {
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			String cmd = null;
			while((cmd = br.readLine()) != null) { 
                	System.out.println(cmd);
            }
			br.close();
		} catch(IOException e) {
				e.printStackTrace();
		}

	}
	public String mediaEncoder(String vodPath, String originChName, String sdVodbox) {
		//String ffmpegPath ="/usr/bin/ffmpeg";
		String ffmpegPath ="/usr/local/bin/ffmpeg";
		String fOriginal = vodPath+"/"+originChName;  
		String fResult = vodPath+"/"+sdVodbox; 
		String[] cmdLine=new String[]{ffmpegPath,"-i",fOriginal,"-ar","22050","-vcodec","libx264",fResult};
		ProcessBuilder pb = new ProcessBuilder(cmdLine);
        pb.redirectErrorStream(true);
        Process p=null;
		try {
             p = pb.start();
        } catch (IOException e) {
        	 e.printStackTrace();
        	 p.destroy();
        	System.out.println("false");
            return "false";
        }
		exhaustInputStream(p.getInputStream());
		 try {
			 p.waitFor();
		 } catch (InterruptedException e) {
			 p.destroy();
		 }
		 if (p.exitValue() != 0) {
			 System.out.println("source error");
			 return "false";
		 }

		 if (fResult.length() == 0) {
			 System.out.println("no mp4");
			 	return "false";
		  }
		 p.destroy();
		 File df=new File(fOriginal);
		 df.delete();
		 return sdVodbox;
	}
	public String createMetaFile(String vodPath, String metaPath, String sdVodbox, String sdMetabox) throws IOException {
		//String exiftoolPath ="/usr/bin/exiftool";
		String exiftoolPath ="/usr/local/bin/exiftool";
		String fOriginal = vodPath+"/"+sdVodbox;  
		String fResult = metaPath+"/"+sdMetabox;
		try {
            File file = new File(fResult);
            if(file.createNewFile())
                System.out.println("File creation successfull");
            else
                System.out.println("Error while creating File, file already exists in specified path");
        }
        catch(IOException io) {
            io.printStackTrace();
        }
		Runtime runtime = Runtime.getRuntime();
        Process process = runtime.exec(exiftoolPath+" "+fOriginal);
        InputStream is = process.getInputStream();
        InputStreamReader isr = new InputStreamReader(is);
        BufferedReader br = new BufferedReader(isr);
        PrintWriter out = new PrintWriter(new FileWriter(fResult));
        String line;
        while((line = br.readLine()) != null) {
        	out.write(line+"</br>");
        }
        out.flush();
        out.close();
        return sdMetabox;
	}
	public int ftpUseUpload(String ftpIp, String ftpUser, String ftpPass, String ftpUploadPath, String ftpFileName)throws Exception {
		FTPClient ftp=null;
		FileInputStream fis=null;
		File uploadfile=new File(ftpUploadPath+"/"+ftpFileName);
		System.out.println(">"+ftpIp+">"+ftpUser+">"+ftpPass);
		String url  = ftpIp; 
		String id  = ftpUser;
		String pwd  = ftpPass;
		int port =21;
		int result = -1;
		  try{         
			   ftp = new FTPClient(); // FTP Client 객체 생성
		      ftp.setControlEncoding("UTF-8"); // 문자 코드를 UTF-8로 인코딩
		      ftp.connect(url, port); // 서버접속 " "안에 서버 주소 입력 또는 "서버주소", 포트번호
		      ftp.login(id, pwd); // FTP 로그인 ID, PASSWORLD 입력
		      System.out.println("Connected to " + url);
		      int reply;
		      reply=ftp.getReplyCode();
		      if(!FTPReply.isPositiveCompletion(reply)){
		    	  ftp.disconnect();
		    	  System.out.println("deny");
		      }
		      ftp.enterLocalPassiveMode(); // Passive Mode 접속일때
		      ftp.changeWorkingDirectory("./"); // 작업 디렉토리 변경
		      ftp.setFileType(FTP.BINARY_FILE_TYPE); // 업로드 파일 타입 셋팅
		      
		      try{
		          fis = new FileInputStream(uploadfile); // 업로드할 File 생성
		          boolean isSuccess = ftp.storeFile(uploadfile.getName(), fis); // File 업로드
		          if (isSuccess){
		        	  result = 1; // 성공     
		          }else{
		        	  throw new Exception(" no upload");
		          	}
		      } catch(IOException ex){
		          System.out.println("IO Exception 1: " + ex.getMessage());
		      }finally{
		          if (fis != null){
		              try{
		                  fis.close(); // Stream 닫기
		                  return result;
		                 
		              }
		              catch(IOException ex){
		                  System.out.println("IO Exception2 : " + ex.getMessage());
		              }
		          }
		      }
		      ftp.logout(); // FTP Log Out
		  }catch(IOException e){
		     System.out.println("IO3:"+e.getMessage());
		  }finally{
		      if (ftp != null && ftp.isConnected()){
		          try{
		              ftp.disconnect(); // 접속 끊기
		              return result;
		          }
		          catch (IOException e){
		              System.out.println("IO Exception : " + e.getMessage());
		          }
		      }
		  }
		  return result;  
	}
	public void uploadComplete(SednDataDTO dto) {
		sqlTemplate.insert("insertVodData",dto);
	}
	public void imgUpdate(String idx, String originChName) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("sdIdx",idx);
		map.put("originChName",originChName);
		sqlTemplate.update("imageUpdate",map);
		
	}
	public void dataDelete(int idx) {
		sqlTemplate.delete("dataDelete",idx);
	}
	public int dataEdit(SednDataDTO dto) {
		int affectCount=0;
		affectCount=sqlTemplate.update("dataUpdate",dto);
		return affectCount;
	}
}
