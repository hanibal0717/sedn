<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
 <!-- Sidebar -->
            <aside id="sidebar">
                
                <!-- Sidbar Widgets -->
                <div class="side-widgets overflow">
                    <!-- Profile Menu -->
                    <div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
                        <a href="" data-toggle="dropdown">
                            <img class="profile-pic animated" src="${pageContext.request.contextPath}/sednImg/profile-pic.png" alt="">
                        </a>
                        <ul class="dropdown-menu profile-menu">
                            <!-- <li><a href="">My Profile</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="">Messages</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                            <li><a href="">Settings</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li> -->
                            <li><a href="">Sign Out</a> <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i></li>
                        </ul>
                        <h4 class="m-0"><c:out value="${sessionScope.admin_name }"/></h4>

                    </div>
                    
                    <!-- Calendar -->
                    <div class="s-widget m-b-25">
                        <div id="sidebar-calendar"></div>
                    </div>
                    
                    <!-- Feeds -->
                    <div class="s-widget m-b-25">
                        <h2 class="tile-title">
                           Notice
                        </h2>
                        
                        <div class="s-widget-body">
                            <div id="news-feed"></div>
                        </div>
                    </div>
                    
                    <!-- Projects -->
                   <!--  <div class="s-widget m-b-25">
                        <h2 class="tile-title">
                            Projects on going
                        </h2>
                        
                        <div class="s-widget-body">
                            <div class="side-border">
                                <small>Joomla Website</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="progress-bar tooltips progress-bar-danger" style="width: 60%;" data-original-title="60%">
                                          <span class="sr-only">60% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>Opencart E-Commerce Website</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-info" style="width: 43%;" data-original-title="43%">
                                          <span class="sr-only">43% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>Social Media API</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-warning" style="width: 81%;" data-original-title="81%">
                                          <span class="sr-only">81% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>VB.Net Software Package</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-success" style="width: 10%;" data-original-title="10%">
                                          <span class="sr-only">10% Complete</span>
                                     </a>
                                </div>
                            </div>
                            <div class="side-border">
                                <small>Chrome Extension</small>
                                <div class="progress progress-small">
                                     <a href="#" data-toggle="tooltip" title="" class="tooltips progress-bar progress-bar-success" style="width: 95%;" data-original-title="95%">
                                          <span class="sr-only">95% Complete</span>
                                     </a>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
                
                <!-- Side Menu -->
                <ul class="list-unstyled side-menu">
                    <li class="active">
                        <a class="sa-side" href="${pageContext.request.contextPath}/sedn.do">
                            <span class="icon">&#61753;</span>
                            <span class="menu-item">대시보드</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side" href="${pageContext.request.contextPath}/contents.do">
                            <span class="icon">&#61696;</span>
                            <span class="menu-item">컨텐츠</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side" href="${pageContext.request.contextPath}/board.do">
                            <span class="icon">&#61875;</span>
                            <span class="menu-item">게시판</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side" href="${pageContext.request.contextPath}/page.do">
                            <span class="icon">&#61717;</span>
                            <span class="menu-item">페이지</span>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a class="sa-side" href="">
                        	<span class="icon">&#61931;</span>
                            <span class="menu-item">STB Management</span>
                        </a>
                        <ul class="list-unstyled menu-item">
                        <li><a href="${pageContext.request.contextPath}/STB/monitering.do">STB MONITERING</a></li>
                            <li><a href="${pageContext.request.contextPath}/STB/log.do">STB LOG</a></li>
                            <li><a href="${pageContext.request.contextPath}/STB/schedule.do">STB schedule</a></li>
                            <li><a href="${pageContext.request.contextPath}/STB/setting.do">STB UI Setting</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="sa-side" href="${pageContext.request.contextPath}/managerAccount.do">
                            <span class="icon">&#61887;</span>
                            <span class="menu-item">회원관리</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side" href="${pageContext.request.contextPath}/categoryLog.do">
                            <span class="icon">&#61721;</span>
                            <span class="menu-item">통계</span>
                        </a>
                    </li>
                    <!-- 
                     <li>
                        <a class="sa-side" href="${pageContext.request.contextPath}/vodManager.do">
                        	<span class="icon">&#61934;</span>
                            <span class="menu-item">VOD Management</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-ui" href="${pageContext.request.contextPath}/liveManager.do">
                            <span class="menu-item">LIVE Management</span>
                        </a>
                    </li>
                     <li>
                        <a class="sa-side-chart" href="${pageContext.request.contextPath}/webLog.do">
                            <span class="menu-item">CONTACT LOG</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-photos" href="${pageContext.request.contextPath}/categoryLog.do">
                            <span class="menu-item">CATEGORY LOG</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-form" href="${pageContext.request.contextPath}/inuBoard.do?BdStyle=Qa">
                            <span class="menu-item">BOARD</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-calendar" href="${pageContext.request.contextPath}/inuBoard.do?BdStyle=Ns">
                            <span class="menu-item">NEWS</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-widget" href="${pageContext.request.contextPath}/inuBoard.do?BdStyle=Gl">
                            <span class="menu-item">GALLARY</span>
                        </a>
                    </li>
                    <li>
                        <a class="sa-side-page" href="${pageContext.request.contextPath}/categorySetting.do?categoryDepth=A&categoryCode=">
                            <span class="menu-item">CATEGORY SETTING</span>
                        </a>
                    </li>
                   <li>
                        <a class="sa-side-table" href="${pageContext.request.contextPath}/managerAccount.do">
                            <span class="menu-item">MANAGER ACCOUNT</span>
                        </a>
                    </li>
                     -->
                    
                    
                </ul>

            </aside>