package inu.sedn.function;

public class OpenName {
	public static String openText(String type){
		String typeName="";
		if(type.equals("Y")){
			typeName="Open";
		}else if(type.equals("N")){
			typeName="close";
		}

		return typeName;
	}
	
}
