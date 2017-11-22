 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                    <li class="active">Category Setting</li>
                </ol>
                
                <h4 class="page-title">CATEGORY SETTING</h4>
                 <!-- *************************************************************************************************************************** -->
                
                <!-- Main Widgets -->
               
                <div class="block-area">
					<div class="col">
                        <div class="col-md-12">
                        	<table class="table table-bordered table-hover tile" style="margin-bottom:0px;">
			                	<thead>
				                	<tr>
				                   		<th>${depthTitle }</th>
				                   		<th>Type</th>
				                   		<th>
				                   			<div class="tile-config dropdown">
					                            <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
					                            <ul class="dropdown-menu pull-right text-right">
					                                <li><a id="addForm">Add category</a></li>
					                            </ul>
					                        </div>
				                   		</th>
									</tr>
			                    </thead>
			                    <tbody id="listTR" >
				                 </tbody>
				              </table>
				              
				              <hr class="whiter">
				           <div id="categoryInsertForm" >
				             <form class="form-validation-1"   method="post"  action="${pageContext.request.contextPath }/categoryInsert.do" id="insertForm">
				              	<div class="well tile" >
	                        		<div class="col-lg-2">
										<select class="form-control input-sm m-b-5" name="categoryType">
											<c:if test="${categoryDepth ne 'C'}">
		                        			<option value="Sub">Sub</option>
		                        			</c:if>
		                        			<option value="Vod">VOD</option>
		                        			<option value="Live">Live</option>
		                        			<option value="Qa">Board</option>
		                        			<option value="Ns">News</option>
		                        			<option value="Gl">Gallery</option>
	                    				</select>
									</div>
		                      		<div class="col-lg-4">
		                      			<input type="text" name="categoryName" class="input-sm validate[required] form-control m-b-5" placeholder="Category Name" id="form-validation-field-0">
                   					</div>
                   					<div class="col-lg-2">
										<select class="form-control input-sm m-b-5" name="categoryAuth">
		                            		<option value="1">All user </option>
		                        			<option value="2">Login user</option>
	                    				</select>
									</div>
                   					<div class="col-lg-2">
                   						<div class="make-switch switch-small" data-text-label="Open">
                     							<input type="checkbox"  name="categoryOpen" value="Y">
                 						</div>
                   					</div>
                   					<div class="col-lg-2">
                   						<input type="hidden" name="categoryCode" value="${categoryCode }" />
                   						<input type="hidden" name="categoryDepth" value="${categoryDepth }" />
                   						<input type="submit" class="btn btn-sm" style="float:right;" value="Add Catogory" />
                   					</div>
                   					
                   					<div class="clearfix"></div>
                            	</div>
                            	</form>
                            </div>
                            <div id="categoryEditForm" style="display:none;">
				             	
								<div class="well tile" >
								<form class="form-validation-2"   method="post"  action="${pageContext.request.contextPath }/categoryEdit.do" id="editForm">
								   <div class="col-lg-2">
									<select class="form-control input-sm m-b-5" name="categoryType" id="fcType">
											<c:if test="${categoryDepth ne 'C'}">
								 			<option value="Sub">Sub</option>
								 			</c:if>
								 			<option value="Vod">VOD</option>
								 			<option value="Live">Live</option>
								 			<option value="Qa">Board</option>
								 			<option value="Ns">News</option>
								 			<option value="Gl">Gallery</option>
									</select>
								</div>
								<div class="col-lg-4">
								  <input type="text" name="categoryName" class="input-sm validate[required] form-control m-b-5" placeholder="Category Name" id="form-validation-field-1">
								</div>
								<div class="col-lg-2">
									<select class="form-control input-sm m-b-5" name="categoryAuth" id="fcAuth">
								      <option value="1">All user </option>
								 	  <option value="2">Login user</option>
								</select>
								</div>
								<div class="col-lg-2" >
									<div class="make-switch switch-small" data-text-label="Open" id="checkSwitch">
									<input type="checkbox"  name="categoryOpen" value="Y" id="fcOpen">
									</div>
								</div>
								<div class="col-lg-1">
								    <input type="hidden" name="categoryCode" value="" id="fcCode"/>
									<input type="hidden" name="categoryDepth" value="" id="fcDepth"/>
									<input type="hidden" name="idx" value="" id="fcIdx"/>
									<input type="submit" class="btn btn-sm" style="float:right;" value="Edit" />
								</div>
								</form>
								<div class="col-lg-1">
									<button class="btn btn-sm" style="float:right;" id="delBtn">Delete</button>
								</div>   					
									<div class="clearfix"></div>
								</div>
								
                            </div>
				           <div class="clearfix"></div>
				        </div>
				         	
	               	</div>
	              </div>
	               		
	               		
	               		
	               		
	               		
                        
  


                    
                  
                    
                    
            </section>
			<script>
			$(function(){
				$.ajax({url:"${pageContext.request.contextPath}/categoryList.do?categoryDepth=${categoryDepth }&categoryCode=${categoryCode }",
					success:function(data){
					$("#listTR").empty();
					$("#listTR").html(data);
					},
					error:fnError
				});
				var odf=$("#insertForm");
				odf.submit(function(ev){
					var jcName=$("#form-validation-field-0").val();
					if(jcName!=""){
						$.ajax({
							type: odf.attr("method"),
				            url: odf.attr("action"),
				            data: odf.serialize(),
							success:function(data){
								$("#listTR tr").removeClass();
								var idx=$.trim(data);
								$.ajax({url:"${pageContext.request.contextPath}/categoryList.do?categoryDepth=${categoryDepth }&categoryCode=${categoryCode }",
									success:function(data){
									$("#listTR").empty();
									$("#listTR").html(data);
									$("#"+idx).addClass("well tile"); 
									},
									error:fnError
								});
								
							}
						
						});
						ev.preventDefault();
					}
					return false;
				});
				var cef=$("#editForm");
				cef.submit(function(ev){
					var jcName=$("#form-validation-field-1").val();
					if(jcName!=""){
						$.ajax({
							type: cef.attr("method"),
				            url: cef.attr("action"),
				            data: cef.serialize(),
							success:function(data){
								$("#listTR tr").removeClass();
								var idx=$.trim(data);
								$.ajax({url:"${pageContext.request.contextPath}/categoryList.do?categoryDepth="+$("#fcDepth").val()+"&categoryCode="+idx,
									success:function(data){
									$("#listTR").empty();
									$("#listTR").html(data);
									},
									error:fnError
								});
							}
						
						});
						ev.preventDefault();
					}
					return false;
				});
				$("#delBtn").click(function(){
					var jcCode=$("#fcCode").val();
					$.ajax({url:"${pageContext.request.contextPath}/categoryDelete.do?categoryCode="+jcCode,
						success:function(data){
							$("#"+$.trim(data)).remove();
						},
						error:fnError
					});
				});
				$("#addForm").click(function(){
					$("#categoryInsertForm").css("display","block");
					$("#categoryEditForm").css("display","none");
				});
				function fnError(data){alert("AjaxError============:"+data);}
			});
			
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