 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <li class="active">게시판</li>
                </ol>
                
                <h4 class="page-title">게시판</h4>
                 <!-- *************************************************************************************************************************** -->
                
                
                
                <!-- Main Widgets -->
               
                <div class="block-area">

                       <!-- 네비게이션  시작-->
                       <div class="col-md-4">
							<div class="col-md-12" id="oneDepth">
								<div class="list-group block">
			                         <a href="#" class="list-group-item active" id="twoBack">게시판 카데고리</a>
			                         <div>
				                         <a href="#" class="list-group-item" onClick="fnGoTowDepth();">나우 용산 <span class="icon pull-right">&#61815;</span></a>
				                         <a href="#" class="list-group-item">신나는 용산</a>
				                         <a href="#" class="list-group-item">용산 PEOPLE</a>
				                         <a href="#" class="list-group-item">INFO 용산</a>
				                         <a href="#" class="list-group-item">용산 스페셜</a>
			                         </div>
			                         <a href="#" class="list-group-item active">
			                         <button class="btn btn-sm btn-alt m-r-5">서브메뉴 +</button>
			                         <button class="btn btn-sm btn-alt m-r-5 pull-left">게시판 +</button>
			                         </a>
			                    </div>
			               	</div>
							<div class="col-md-12" id="twoDepth" style="display:none;">
			                    <div class="list-group block">
			                    	<a href="#" class="list-group-item active">게시판 카데고리 ><span>나우 용산</span></a>
				                    <div>
				                         <a href="#" class="list-group-item" onClick="fnGoThreeDepth();">용산 투데이<span class="icon pull-right">&#61815;</span></a>
				                         <a href="#" class="list-group-item">뉴스메거진</a>
				                         <a href="#" class="list-group-item">영어뉴스</a>
				                         <a href="#" class="list-group-item">확대간부회의</a>
				                         <a href="#" class="list-group-item">의정리포트</a>
			                         </div>
			                        <a href="#" class="list-group-item active">
			                         <button class="btn btn-sm m-r-5 pull-left" onClick="fnBackOneDepth();"><span class="icon">&#61760;</span></button>
			                         <button class="btn btn-sm btn-alt m-r-5">서브메뉴 +</button>
			                         <button class="btn btn-sm btn-alt m-r-5 pull-left">게시판 +</button>
			                         </a>
			                    </div>
			                </div>
			                <div class="col-md-12" id="threeDepth" style="display:none;">
			                    <div class="list-group block">
			                    	<a href="#" class="list-group-item active" id="twoBack">게시판 카데고리 ><span>나우 용산 ></span><span >용산투데이 </span></a>
				                    <div>
				                         <a href="#" class="list-group-item" onClick="fnGoFourDepth();">투데이 서브1<span class="icon pull-right">&#61815;</span></a>
				                         <a href="#" class="list-group-item">투데이 서브2</a>
				                         <a href="#" class="list-group-item">투데이 서브3</a>
			                         </div>
			                        <a href="#" class="list-group-item active">
			                         <button class="btn btn-sm m-r-5 pull-left" onClick="fnBackTwoDepth();"><span class="icon">&#61760;</span></button>
			                         <button class="btn btn-sm btn-alt m-r-5">서브메뉴 +</button>
			                         <button class="btn btn-sm btn-alt m-r-5 pull-left">게시판 +</button>
			                         </a>
			                    </div>
			                </div>
							<div class="col-md-12" id="fourDepth" style="display:none;">
			                    <div class="list-group block">
			                         <a href="#" class="list-group-item active"><span class="icon pull-left">게시판 카데고리 ></span><span >나우 용산 ></span><span class="pull-left">용산투데이  ></span>투데이 서브1</a>
			                         <div>
				                         <a href="#" class="list-group-item active">투데이 서브의 서브1</a>
				                         <a href="#" class="list-group-item">투데이 서브의 서브2</a>
				                         <a href="#" class="list-group-item">투데이 서브의 서브3</a>
			                         </div>
			                         <a href="#" class="list-group-item active">
			                         <button class="btn btn-sm m-r-5 pull-left" onClick="fnBackThreeDepth();"><span class="icon">&#61760;</span></button>
			                         <button class="btn btn-sm btn-alt m-r-5">서브메뉴 +</button>
			                         <button class="btn btn-sm btn-alt m-r-5 pull-left">게시판 +</button>
			                         </a>
			                    </div>
			                 </div>
						</div>
                       <!-- 네비게이션  끝-->
                        <div class="tile col-md-8" style="padding:0px;">
                	<!-- 리스트 부분 시작-->
                	<div class="listview list-container">
                    <header class="listview-header media">
                        <input type="checkbox" class="pull-left list-parent-check" value="">
                            
                        <ul class="list-inline pull-right m-t-5 m-b-0">
                            <li class="pagin-value hidden-xs">35-70</li>
                            <li>
                                <a href="" title="Previous" class="tooltips">
                                    <i class="sa-list-back"></i>
                                </a>
                            </li>
                            <li>
                                <a href="" title="Next" class="tooltips">
                                    <i class="sa-list-forwad"></i>
                                </a>
                            </li>
                        </ul>
                        
                        <ul class="list-inline list-mass-actions pull-left">
                            <li>
                                <a data-toggle="modal" href="#compose-message" title="Add" class="tooltips">
                                    <i class="sa-list-add"></i>
                                </a>
                            </li>
                            <li>
                                <a href="" title="Refresh" class="tooltips">
                                    <i class="sa-list-refresh"></i>
                                </a>
                            </li>
                            <li class="show-on" style="display: none;">
                                <a href="" title="Move" class="tooltips">
                                    <i class="sa-list-move"></i>
                                </a>
                            </li>
                            <li class="show-on" style="display: none;">
                                <a href="" title="Delete" class="tooltips">
                                    <i class="sa-list-delete"></i>
                                </a>
                            </li>
                        </ul>

                        <input class="input-sm col-md-4 pull-right message-search" type="text" placeholder="Search....">
                        
                        <div class="clearfix"></div>
                    </header>
                                        
                    
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/1.jpg" alt="" width="45">
                       <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/5.jpg" alt="" width="45">
                        <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/2.jpg" alt="" width="45">
                        <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/1.jpg" alt="" width="45">
                       <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/5.jpg" alt="" width="45">
                        <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/2.jpg" alt="" width="45">
                        <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/1.jpg" alt="" width="45">
                       <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    <div class="media">
                        <input type="checkbox" class="pull-left list-check" value="">
                        <img class="media-object pull-left" src="img/profile-pics/5.jpg" alt="" width="45">
                        <div class="media-body">
                            용산구 공무원 직업체험 프로그램 운
                            <div class="clearfix"></div>
                            <small> 용산구에서는 공무원 직업에 대한 이해와 추ㅡ고등하갯ㅇ들의 진료 설계관정을 돕기 위해 용산구 공무원 직업체험 프로그램을 운영합니다.</small><br>
                            <div class="block attrs">
                                날짜 : 01/01/2013
                            </div>
                            <div class="block attrs">
                                조회수: 17580
                            </div>
                            <div class="block attrs">
                                배포: Yes
                            </div>
                        </div>
                        <div class="list-options">
                            <button class="btn btn-sm">View</button>
                            <button class="btn btn-sm">Delete</button>                                
                        </div>
                    </div>
                    
                    
                    <div class="media text-center">
                        <ul class="pagination">
                            <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
                	
                	<!-- 리스트 부붙 끝 -->
                </div>
                </div>
               
			</section>
			<script>
			var right = {direction:"right"};
			var left = {direction:"left"};
				$(function(){
					
					$("#one").click(function(){
						$("#oneDepth").hide( "slide", left ,100);
						$("#oneDepth").show( "slide", right, 150);
						$(this).hide();
					});
					$("#twoBack").click(function(){feerrerreer124
						$("#oneDepth").hide();
						$("#oneDepth").show( "slide", left, 150);
					});
				});
				function fnGoTowDepth(){
					$("#oneDepth").hide();
					$("#twoDepth").show( "slide", right, 150);
				}
				function fnGoThreeDepth(){
					$("#twoDepth").hide( );
					$("#threeDepth").show( "slide", right, 150);
				}
				function fnGoFourDepth(){
					$("#threeDepth").hide( );
					$("#fourDepth").show( "slide", right, 150);
				}
				
				
				function fnBackOneDepth(){
					$("#twoDepth").hide( );
					$("#oneDepth").show( "slide", left, 100);
				}
				function fnBackTwoDepth(){
					$("#threeDepth").hide();
					$("#twoDepth").show( "slide", left, 100);
				}
				function fnBackThreeDepth(){
					$("#fourDepth").hide();
					$("#threeDepth").show( "slide", left, 100);
				}
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