<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" class="media">
            <a href="" id="menu-toggle"></a> 
            <a class="logo pull-left" href="${pageContext.request.contextPath}/sedn.do" style="font-weight:bold;">SEDN 3.0</a>
            
            <div class="media-body">
                <div class="media" id="top-menu">
                    <div class="pull-left tm-icon">
                        <a data-drawer="messages" class="drawer-toggle" href="">
                            <i class="sa-top-message"></i>
                            <i class="n-count animated">5</i>
                            <span>Update Live</span>
                        </a>
                    </div>
                    <div class="pull-left tm-icon">
                        <a data-drawer="notifications" class="drawer-toggle" href="">
                            <i class="sa-top-updates"></i>
                            <i class="n-count animated">9</i>
                            <span>Updates Vod</span>
                        </a>
                    </div>

                    

                    <div id="time" class="pull-right">
                        <span id="hours"></span>
                        :
                        <span id="min"></span>
                        :
                        <span id="sec"></span>
                    </div>
                    
                    <!-- <div class="media-body">
                        <input type="text" class="main-search">
                    </div> -->
                </div>
            </div>
        </header>