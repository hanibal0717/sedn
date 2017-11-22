 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="date" value="<%=new java.util.Date() %>"/>
<fmt:formatDate var="currentYear" value="${date}" pattern="yyyy"/>
<fmt:formatDate var="currentMonth" value="${date}" pattern="MM"/>
<fmt:formatDate var="currentDay" value="${date}" pattern="dd"/>
<fmt:formatDate var="currentHour" value="${date}" pattern="HH"/>
<fmt:formatDate var="currentMinute" value="${date}" pattern="mm"/>
<fmt:formatDate var="currentSecond" value="${date}" pattern="ss"/> 
 <!-- Content -->
            <section id="content" class="container">
            	<!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
                <!-- Messages Drawer 메세지 클릭햇을시 (최신영상이 )%%%대메뉴 공통 부 분-->
                <div id="messages" class="tile drawer animated">
                    <div class="listview narrow">
                        <div class="media">
                            <a href="">Send a New Message</a>
                            <span class="drawer-close">&times;</span>
                            
                        </div>
                        <div class="overflow" style="height: 254px">
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - 2 Hours ago</small><br>
                                    <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - 5 Hours ago</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 14/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - On 16/12/2013</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 17/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 18/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/5.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Wendy Mitchell - On 19/12/2013</small><br>
                                    <a class="t-overflow" href="">Integer a eros dapibus, vehicula quam accumsan, tincidunt purus</a>
                                </div>
                            </div>
                        </div>
                        <div class="media text-center whiter l-100">
                            <a href=""><small>VIEW ALL</small></a>
                        </div>
                    </div>
                </div>
                
                <!-- Notification Drawer -->
                <div id="notifications" class="tile drawer animated">
                    <div class="listview narrow">
                        <div class="media">
                            <a href="">Notification Settings</a>
                            <span class="drawer-close">&times;</span>
                        </div>
                        <div class="overflow" style="height: 254px">
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - 2 Hours ago</small><br>
                                    <a class="t-overflow" href="">Mauris consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - 5 Hours ago</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/3.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Harris worgon - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Maecenas venenatis enim condimentum ultrices fringilla. Nulla eget libero rhoncus, bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar, ornare turpis id</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/4.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Mitch Bradberry - On 14/12/2013</small><br>
                                    <a class="t-overflow" href="">Phasellus interdum felis enim, eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci, sed viverra felis aliquet quis. Curabitur vel blandit odio. Vestibulum sagittis quis sem sit amet tristique.</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/1.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">Nadin Jackson - On 15/12/2013</small><br>
                                    <a class="t-overflow" href="">Ipsum wintoo consectetur urna nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing lectus</a>
                                </div>
                            </div>
                            <div class="media">
                                <div class="pull-left">
                                    <img width="40" src="img/profile-pics/2.jpg" alt="">
                                </div>
                                <div class="media-body">
                                    <small class="text-muted">David Villa - On 16/12/2013</small><br>
                                    <a class="t-overflow" href="">Suspendisse in purus ut nibh placerat Cras pulvinar euismod nunc quis gravida. Suspendisse pharetra</a>
                                </div>
                            </div>
                        </div>
                        <div class="media text-center whiter l-100">
                            <a href=""><small>VIEW ALL</small></a>
                        </div>
                    </div>
                </div>
                <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%대메뉴 공통%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
                
                
                <!-- *************************************************************************************************************************** -->
                <!-- Breadcrumb 메뉴경로... -->
                <ol class="breadcrumb hidden-xs">
                    <li><a href="#">Home</a></li>
                    <li class="active">vod manager</li>
                </ol>
                
                <h4 class="page-title">VOD MANAGER</h4>
                 <!-- *************************************************************************************************************************** --
                 <!-- Main Widgets -->
               	<div class="block-area">
			 		<div class="row">
				 		<!-- 영상플레이어 -->
	                    <div class="col-md-4">
	                         <div class="tile">
	                            <h2 class="tile-title m-b-5">Video</h2>
                             	<div style="width:100%;height:auto;" class="tile p-5">
                             		<div id="JWplayer" >Loading the player.... </div>
                             	</div>
                             	<h2 class="tile-title m-b-5">Image </h2>
                             	<div style="width:100%;height:auto;" class="tile p-5">
                             		<div class="fileupload fileupload-new" data-provides="fileupload">
                        				<div class="fileupload-preview thumbnail form-control" id="fsdImgbox"></div>
                        				<form id="imgUploadForm" action="${pageContext.request.contextPath }/imgUploadFile.do" method="post" enctype="multipart/form-data">
                        				<div>
                            				<span class="btn btn-file btn-alt btn-sm">
                                			<span class="fileupload-new">Select image</span>
                                			<span class="fileupload-exists">Change</span>
                                			<input type="file" id="imgfile" name="sdImgbox"/>
                                			<input type="hidden" id="imgEditCode" name="idx" />
                            				</span>
                            				<a href="#" class="btn fileupload-exists btn-sm" data-dismiss="fileupload">Remove</a>
                            				<input type="submit" id="submitBtn" class="btn btn-sm btn-alt m-r-5" value="update">
                        				</div>
                        				</form>
                  				 		</div>
                               </div>
	                        </div>
	                    </div>
	 					<div id="JWplayer" ></div>
	                    
	                   <!-- 영상상세정보 -->
	                   <div class="col-md-4">
                            <div class="tile" id="dataEditForm">
                            
                               <h2 class="tile-title m-b-5">Description</h2>
                               
                               	<p style="padding-left:5px;">Catogory</p>
                              
                               	
                               	
	                               <div class="col-lg-12">
		                            	<select class="form-control input-sm m-b-2 " id="fsdCategory">
		                        			 <c:choose>
												<c:when test="${empty optionLists }">
													<option>메뉴가 없습니다.</option>
												</c:when>
												<c:otherwise>
													<c:forEach items="${optionLists}" var="optionLists"  varStatus="status">
				                            			<option value="${optionLists.categoryCode }">${optionLists.categoryName }</option>
				                            		</c:forEach>
												</c:otherwise>	
											</c:choose>
		                    			</select>
		                    		</div>
	                    		
	                    		<div class="col">
	                    		<p style="padding-left:5px;">Open date</p>
	                    			<div class="col-md-12 m-b-15">
                            			<div class="input-icon datetime-pick date-only">
                                			<input data-format="yyyy/MM/dd" type="text" class="form-control input-sm" id="fsdOpenDate">
                                			<span class="add-on">
                                   		 	<i class="sa-plus icon-calendar"></i>
                                			</span>
                            			</div>
                        			</div>
	                    		</div>	
	                    		<div class="col">
	                    			<div class="col-lg-12">
	                    				<input type="text" class="form-control m-b-10" placeholder="title"  id="fsdTitle">
	                    			</div>
	                    		</div>	
	                    		<div class="col">
	                    			<div class="col-lg-12">
	                    				 <div class="wysiwye-editor" ></div>
										<input type="hidden" id="fsdContent">
	                    			</div>
	                    		</div>
	                    		<div class="col-md-8" style="padding:5px 5px 5px 5px;">
                    				<div class="make-switch" data-text-label="Main">
                       					<input type="checkbox" value="1" id="fsdDelflag">
                       					
                   					</div>
                   				</div>
                   				
                               
                   				<div class="col-md-2" style="padding:5px 5px 5px 5px;">
                   				<form  id="bdataForm" action="${pageContext.request.contextPath }/dataEdit.do" method="post" >
                               	<input type="hidden" name="sdCategory"  id="bsdCategory"/>
                               	<input type="hidden" name="sdOpenDate"  id="bsdOpenDate" /> 
                               	<input type="hidden" name="sdTitle"   id="bsdTitle"/>  
                               	<input type="hidden" name="sdContent" id="bsdContent"/>
                               	<input type="hidden" name="idx" id="fIdx"/>
                               <input type="submit" class="btn btn-alt m-r-5" style="float:right;" value="Edit">
	                    		</form>
	                    		</div>
	                    		<div class="col-md-2" style="padding:5px 5px 5px 5px;">
		                    	    <button class="btn btn-alt m-r-5" style="float:right;" id="vodDeleteBtn">Delete</button>
	                    		</div>
                               <div class="clearfix"></div>
                               
                            </div>
                            
                        </div> 
                         <!-- 영상이미지 -->
	                    <div class="col-md-4">
	                       <div class="tile">
	                             <h2 class="tile-title m-b-5">Video Info</h2>
	                             <div class="tile p-5  m-b-5">
				                        
				                    	<table class="table tile table-condensed">
				                            <thead>
				                                <tr>
				                                    <th>Property  :  Value</th>
				                                </tr>
				                            </thead>
				                            <tbody>
				                            	<tr>
				                                	<td ><div id="fsdMetabox" class="overflow" style="height:595px;"></div></td>
				                                </tr>
				                            </tbody>
				                        </table>
				                </div>
				                
	                       </div>
	                   </div> 
                   </div>  
                           
    					  
                    	<!-- 영싱업로드 -->
		                
		             <div class="tab-container tile">
                        <ul class="nav tab nav-tabs" >
                            <li><a href="#upload">VOD UPLOAD</a></li>
                             <li class="active"><a href="#profile" onClick="dataList('')">ALL VOD</a></li>
                            <c:choose>
								<c:when test="${empty optionLists }">
									<li style="line-height:30px;font-size: 0.85em;color:#FFFFFF;padding-left:5px;">메뉴가 없습니다.</li>
								</c:when>
								<c:otherwise>
									<c:forEach items="${optionLists}" var="optionLists"  varStatus="status">
                            			<li id="${optionLists.categoryCode }"><a href="#profile" onClick="dataList('${optionLists.categoryCode }')">${optionLists.categoryName }</a></li>
                            		</c:forEach>
								</c:otherwise>	
							</c:choose>

                        </ul>
                          
                        <div class="tab-content">
                        
                            <div class="tab-pane" id="upload">
                            	<form id="UploadForm" action="${pageContext.request.contextPath }/uploadVod.do" method="post" enctype="multipart/form-data">
                              	<div class="fileupload fileupload-new row" data-provides="fileupload">
                        			<div class="input-group col-md-6">
		                           		<div class="uneditable-input form-control">
		                               		<i class="fa fa-file m-r-5 fileupload-exists"></i>
		                               		<span class="fileupload-preview"></span>
		                           		</div>
		                           		<div class="input-group-btn" id="uploadD">
		                               		<span class="btn btn-file btn-alt btn-sm">
		                               		<span class="fileupload-new">Select file</span>
		                              		<span class="fileupload-exists">Change</span>
		                               		<input type="file" id="myfile" name="vodData"/>
		                               		</span>
		                           			<a href="#" class="btn btn-sm btn-gr-gray fileupload-exists" data-dismiss="fileupload">Remove</a>
		                           			<input type="submit" class="btn btn-sm btn-alt m-r-5" value="Upload Server">
		                           			
		                          		</div>
		                          		
									</div>
                        			<div id="uploadMsg" class="col-md-6"></div>
                        			<div class="clearfix"></div>
                        			<div class="progress progress-striped active" style="display:none;" id="progressbox">
                            			<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"  id="showProgress"  style="width:0%">
                                			<span class="sr-only" id="barPercent">45% Complete</span>
                            			</div>
                       				</div>
                       				
                       				<div class="progress progress-striped progress-alt" style="display:none;" id="encoding">
                       					<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div>
     								</div>
                    			</div>
                    			</form>
							</div>
                            <div class="tab-pane active" id="profile">
	      						<div class="col-lg-12" style="margin-bottom:10px;margin-left:0px;">
	                    			<div class="col-lg-4" >
	                    				<div class="form-control input-sm m-b-2" style="padding:0px;">
	                    					<input type="text"  id="searchWord" class="main-search" placeholder="Keywords">
	                    					<input type="hidden" id="searchCategory" >
	                    				</div>
	                    			</div>
		                    		<div class="col-lg-1" >
	                    				<div class="m-b-1 text-center" >
	                    					<button class="btn m-r-5" id="searchBtn">Search</button>
	                    				</div>	
	                    			</div>
                    			</div>
	                    	</div>
	                    	<hr class="whiter"/>
                            <div class="clearfix"></div>
                            <div class="tile ">
                             	<div class="table-responsive overflow">
			                        <table class="table table-bordered table-hover tile">
			                            <thead>
			                                <tr>
			                                    <th>SCREEN SHOT</th>
			                                    <th>CATEGORY PATH</th>
			                                    <th>TITLE</th>
			                                    <th>COUNT</th>
			                                    <th>UPLOAD DATE</th>
			                                    <th>OPEN DATE</th>
			                                </tr>
			                            </thead>
			                            <tbody id="dataList">
			                               <!-- data list -->
			                            </tbody>
			                        </table>
                   				 </div> 
                   				 <div class="text-center" id="paging">
			                        <!-- paging -->
			                    </div>
                            </div>
                        </div>
                    </div>
                  </div>      
                

                    
                  
                    
                    
            </section>
            <script type="text/javascript" src="${pageContext.request.contextPath}/sednJs/jwplayer.js"></script>
			<script type="text/javascript" >jwplayer.key="svwRIIR8pxaRsuvAhsMZ6xi2qBlUWSkdr41skA=="</script>
			<script>
			   	$(function(){
			   		var frm=$("#bdataForm");
			   		frm.submit(function(ev){
			   			var contentHtml=$(".note-editable").html();
		   				$("#bsdContent").val(contentHtml);
		   				$("#bsdTitle").val($("#fsdTitle").val());
		   				var openDate=($("#fsdOpenDate").val().replace('/','')).replace('/','')+""+"000000";
		   				$("#bsdOpenDate").val(openDate);
		   				$("#bsdCategory").val($("#fsdCategory").val());
		   				alert(openDate);
		   				alert($("#bsdCategory").val());
		   			  	$("#dataEditForm").hide();
		   				$.ajax({
		   					type: frm.attr("method"),
		   		            url: frm.attr("action"),
		   		            data: frm.serialize(),
		   		            success: function (data) {
		   		            	$("#dataEditForm").css("display","block");
		   		            	dataList("");
	   						    dataSpray("${topIdx}");
		   		            }
		   		        });
			   	 	ev.preventDefault();
			   		});
			   		$("#vodDeleteBtn").click(function(){
			   			$("#dataEditForm").css("display","none");
			   			$("#fsdImgbox").empty();
			   			$("#fsdImgbox").html("<img src='${pageContext.request.contextPath}/sednImg/loading_white01.gif' style='width:80px;height:80px'/>");
			   			$("#JWpalyer").empty();
			   			$("#JWplayer").html("<img src='${pageContext.request.contextPath}/sednImg/loading_white01.gif' style='width:80px;height:80px'/>");
	   					$.ajax({url:"${pageContext.request.contextPath}/dataDelete.do?idx="+$("#fIdx").val(),
	   						success:function(data){
	   							$("#dataEditForm").css("display","block");
	   							dataList("");
	   						    dataSpray("${topIdx}");
	   							},
	   							error:fnError
	   					});
			   		 });
			   		$("#searchBtn").click(function(){
			   			var sword=$("#searchWord").val();
			   			var searchCategory=$("#searchCategory").val();
			   			$.ajax({url:"${pageContext.request.contextPath}/dataList.do?categoryCode="+searchCategory+"&sword="+sword,
							success:function(data){
								$("#dataList").empty();
								$("#dataList").html(data);
							},
							error:fnError
						});
				    });
			   		$("#imgUploadForm").submit(function(){
			    		var fileName=$("#imgfile").val();
			    		if(fileName.length==0){
			    			$("#fsdImgbox").html("Insert Image File");
			    			return false;
			    		}
			    		var ext=$("#imgfile").val().split('.').pop().toLowerCase();
						if($.inArray(ext,['jpg','jpeg','png','gif'])==-1){
							$("#fsdImgbox").html("jpg,png,gif only!!");
							return false;
						}
					});
			   		$('#imgUploadForm').ajaxForm({
			        	success: function(data){
			        		$("#fsdImgbox").empty();
			        		$("#fsdImgbox").html("<img src='${pageContext.request.contextPath}/sednImg/loading_white01.gif' style='width:80px;height:80px'/>");
			        		setTimeout(function(){
			        			$("#fsdImgbox").empty();
			        			$("#fsdImgbox").html(data);
			        		},5000);
			        	}
			       });
			   		$("#UploadForm").submit(function(){
			   			var fileName=$("#myfile").val();
			   			//alert(fileName);

			    		if(fileName.length==0){
			    			$("#uploadMsg").html("input video file!!");
			    			return false;
			    		}
			    		
			    		var ext=$("#myfile").val().split('.').pop().toLowerCase();
						if($.inArray(ext,['wmv','mp4','avi'])==-1){
							$("#uploadMsg").html("avi,wmv,mp4 file only!!");
							return false;
						}
					});
			   		$("#UploadForm").ajaxForm({
						beforeSend : function() {
							$("#uploadMsg").empty();
							$("#uploadD").css("display","none");
		    				$("#progressbox").css("display","block");
			   				// clear everything
			   				$("#showProgress").css("width","0%");
			   				$("#barPercent").html("0% Complete");
			   			},
			   			uploadProgress : function(event, position, total, percentComplete) {
			   				$("#showProgress").css("width",percentComplete + '%');
			   				$("#barPercent").html(percentComplete + '% Complete');
							
			   				if (percentComplete >3) {
			   					$("#uploadMsg").html("started upload......");
			   				}
			   				if (percentComplete >98) {
			   					$("#uploadMsg").html("upload complete !!!");
			   				}
			   				if (percentComplete > 99) {
			   					$("#uploadMsg").html("encoding started!! please wait....till disappear  loading bar ");
			   					$("#progressbox").css("display","none");
			   					$("#encoding").css("display","block");
			   				}
			   				
			   			},
			   			success : function(data) {
			   				$("#showProgress").width('100%');
			   				$("#barPercent").html('100%');
			   				dataSpray(data);
			   			},
			   			complete : function(response) {
			   				$("#encoding").css("display","none");
			   				$("#uploadD").css("display","block");
			   				$("#myfile").val("");
			   				dataList("");
			   				$("#uploadMsg").html("upload complete...click locker");
			   			},
			   			error : function() {
			   				$("#uploadMsg").html("<font style='color:red;'>업로드에 실패했습니다.</font>");
			   			}
			   			
		    		});
			   		
			   	});
			   	
			    function dataSpray(index){
			    	$.ajax({
						dataType:"json",
						url:"${pageContext.request.contextPath}/dataView.do?idx="+index,
						success:function(data){
							vodPlayer(data[0].sdVodbox);
							$("#fsdCategory").val(data[0].sdCategory);
							editFormData(data[0].sdOpenDate);
							$("#fsdTitle").val(data[0].sdTitle);
							$(".note-editable").empty();
							$(".note-editable").css("height","390px");
							$(".note-editable").append(data[0].sdContent);
							$("#fsdImgbox").html("<img src='${pageContext.request.contextPath}/boxImg/"+data[0].sdImgbox+"'/>");
							$("#fsdMetabox").html(data[0].sdMetabox);
							$("#imgEditCode").val(data[0].idx);
							$("#fIdx").val(data[0].idx);
						},
						error:fnError
					});
				}
			    function dataList(categoryCode){
			    	$("#searchCategory").val(categoryCode);
			    	$.ajax({url:"${pageContext.request.contextPath}/dataList.do?categoryCode="+categoryCode,
						success:function(data){
							$("#dataList").empty();
							$("#dataList").html(data);
						},
						error:fnError
					});
			    }
			    function check_device(){
			    	var mobileKeyWords = new Array('iPad','iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
			    	var device_name = '';
			    	for (var word in mobileKeyWords){
			    		if (navigator.userAgent.match(mobileKeyWords[word]) != null){
			    			device_name = mobileKeyWords[word];
			    			break;
			    		}
			    	}
			    return device_name;
			    }
			    function vodPlayer(vodFile){
			    	var device = check_device();
			    	if(device !=''){
			    		$("#JWplayer").html('<video width="100%" height="100%" controls="controls"><source src="http://${mediaserverIp}:1935/vod/mp4:'+vodFile+'/playlist.m3u8"></video>');
			    	 }else{
						jwplayer("JWplayer").setup({
							file:"rtmp://${mediaserverIp}:1935/vod/mp4:"+vodFile,
							image:"",
							width:"100%",
						    aspectratio:"16:9",
						    autostart:"true"
						});
			        }
			    }
			    function fnError(data){alert("AjaxError:"+data);}
			    function editFormData(dbDate){
			    	var editFormDate=dbDate.substring(0,4)+"/"+dbDate.substring(4,6)+"/"+dbDate.substring(6,8);
			    	//alert(editFormDate)
			    	$("#fsdOpenDate").val(editFormDate);
			    }
			    dataList("");
			    dataSpray("${topIdx}");
			    
			  </script>
            <!-- Older IE Message -->
            <!--[if lt IE 9]>
                <div class="ie-block">
                    <h1 class="Ops">Ooops!</h1>
                    <p>You are using an outdated version of Internet Explorer, upgrade to any of the following web browser in order to access the maximum functionality of this website. </p>
                    <ul class="browsers">
                        <li>
                            <a href="https://www.google.com/intl/en/chrome/browser/">
                                <img src="img/browsers/chrome.png" alt="">
                                <div>Google Chrome</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.mozilla.org/en-US/firefox/new/">
                                <img src="img/browsers/firefox.png" alt="">
                                <div>Mozilla Firefox</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.opera.com/computer/windows">
                                <img src="img/browsers/opera.png" alt="">
                                <div>Opera</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://safari.en.softonic.com/">
                                <img src="img/browsers/safari.png" alt="">
                                <div>Safari</div>
                            </a>
                        </li>
                        <li>
                            <a href="http://windows.microsoft.com/en-us/internet-explorer/downloads/ie-10/worldwide-languages">
                                <img src="img/browsers/ie.png" alt="">
                                <div>Internet Explorer(New)</div>
                            </a>
                        </li>
                    </ul>
                    <p>Upgrade your browser for a Safer and Faster web experience. <br/>Thank you for your patience...</p>
                </div>   
            <![endif]-->