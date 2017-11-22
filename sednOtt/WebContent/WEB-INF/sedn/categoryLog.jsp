 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <script>
//Bar Chart
  $(function () {
      if ($("#bar-chart")[0]) {
          var data1 = [[1,60], [2,30], [3,50], [4,100], [5,10], [6,90], [7,85], [8,40], [9,5],[10,5]];
          var data2 = [[1,20], [2,90], [3,60], [4,40], [5,100], [6,25], [7,65], [8,5], [9,70],[10,20]];
          var data3 = [[1,60], [2,30], [3,50], [4,100], [5,10], [6,90], [7,85], [8,40], [9,5],[10,5]];
          var data4 = [[1,20], [2,90], [3,60], [4,40], [5,100], [6,25], [7,65], [8,5], [9,70],[10,20]];
          var barData = new Array();

          barData.push({
                  data : data1,
                  label: 'VOD',
                  bars : {
                          show : true,
                          barWidth : 0.1,
                          order : 1,
                          fill:1,
                          lineWidth: 0,
                          fillColor: 'rgba(255,255,255,0.6)'
                  }
          });
          barData.push({
                  data : data2,
                  label: 'LIVE',
                  bars : {
                          show : true,
                          barWidth : 0.1,
                          order : 2,
                          fill:1,
                          lineWidth: 0,
                          fillColor: 'rgba(255,255,255,0.8)'
                  }
          });
          barData.push({
              data : data3,
              label: 'BOARD',
              bars : {
                      show : true,
                      barWidth : 0.1,
                      order : 2,
                      fill:1,
                      lineWidth: 0,
                      fillColor: 'rgba(255,255,255,0.8)'
              }
          
      });
          barData.push({
              data : data4,
              label: 'GALLERY',
              bars : {
                      show : true,
                      barWidth : 0.1,
                      order : 2,
                      fill:1,
                      lineWidth: 0,
                      fillColor: 'rgba(255,255,255,0.8)'
              }
          
      });
          //Display graph
          $.plot($("#bar-chart"), barData, {
                  
                  grid : {
                          borderWidth: 1,
                          borderColor: 'rgba(255,255,255,0.25)',
                          show : true,
                          hoverable : true,
                          clickable : true,       
                  },
                  
                  yaxis: {
                      tickColor: 'rgba(255,255,255,0.15)',
                      tickDecimals: 0,
                      font :{
                          lineHeight: 13,
                          style: "normal",
                          color: "rgba(255,255,255,0.8)",
                      },
                      shadowSize: 0,
                  },
                  
                  xaxis: {
                      tickColor: 'rgba(255,255,255,0)',
                      tickDecimals: 0,
                      font :{
                          lineHeight: 13,
                          style: "normal",
                          color: "rgba(255,255,255,0.8)",
                      },
                      shadowSize: 0,
                  },
                  
                  legend : true,
                  tooltip : true,
                  tooltipOpts : {
                          content : "<b>%x</b> = <span>%y</span>",
                          defaultTheme : false
                  }

          });
          
          $("#bar-chart").bind("plothover", function (event, pos, item) {
              if (item) {
                  var x = item.datapoint[0].toFixed(2),
                      y = item.datapoint[1].toFixed(2);
                  $("#barchart-tooltip").html(item.series.label + " of " + x + " = " + y).css({top: item.pageY+5, left: item.pageX+5}).fadeIn(200);
              }
              else {
                  $("#barchart-tooltip").hide();
              }
          });

          $("<div id='barchart-tooltip' class='chart-tooltip'></div>").appendTo("body");

      }

  });
</script>
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
                    <li class="active">Category Log</li>
                </ol>
                
                <h4 class="page-title">CATEGORY LOG</h4>
                 <!-- *************************************************************************************************************************** -->
                
                <!-- Main Widgets -->
               
                <div class="block-area">
                
                	<div class="row">
                    	<h3 class="block-title">YEAR TOTAL</h3>
                    
	                    <!-- Sparkline -->
	                    <div class="row">
	                        <div class="col-md-3 col-xs-6">
	                            <div class="tile quick-stats">
	                                <div id="stats-line-1" class="pull-left"></div>
	                                <div class="data">
	                                    <h2 data-value="450">0</h2>
	                                    <small>WEB VISITS TOTAL</small>
	                                </div>
	                            </div>
	                        </div>
	    
	                        <div class="col-md-3 col-xs-6">
	                            <div class="tile quick-stats media">
	                                <div id="stats-line-2" class="pull-left"></div>
	                                <div class="media-body">
	                                    <h2 data-value="56">0</h2>
	                                    <small>MOBILE VISITS TOTAL</small>
	                                </div>
	                            </div>
	                        </div>
	    
	                        <div class="col-md-3 col-xs-6">
	                            <div class="tile quick-stats media">
	    
	                                <div id="stats-line-3" class="pull-left"></div>
	    
	                                <div class="media-body">
	                                    <h2 data-value="350">0</h2>
	                                    <small>VOD VISITS TOTAL</small>
	                                </div>
	                            </div>
	                        </div>
	    
	                        <div class="col-md-3 col-xs-6">
	                            <div class="tile quick-stats media">
	                                <div id="stats-line-4" class="pull-left"></div>
	                                <div class="media-body">
	                                    <h2 data-value="144">0</h2>
	                                    <small>LIVE VISITS TOTAL</small>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                    </div>
                    
                    <div class="row">
                        <h3 class="block-title">VIEW COUNT BY MONTH</h3>
                    	<div class="tile text-center">
	                        <div class="tile-dark p-10">
	                            <div class="pie-chart-tiny" data-percent="45">
	                                <span class="percent"></span>
	                                <span class="pie-title">VOD </span>
	                            </div>
	                            <div class="pie-chart-tiny" data-percent="6">
	                                <span class="percent"></span>
	                                <span class="pie-title">LIVE </span>
	                            </div>
	                            <div class="pie-chart-tiny" data-percent="35">
	                                <span class="percent"></span>
	                                <span class="pie-title">BOARD</span>
	                            </div>
	                            <div class="pie-chart-tiny" data-percent="14">
	                                <span class="percent"></span>
	                                <span class="pie-title">GALLERY</span>
	                            </div>
	                        </div>
	                    </div>
                    </div>
                    
                    <div class="row">
                    	<div class="tile">
                        <h2 class="tile-title">VIEW COUNT BY CATEGORY</h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
                            <ul class="dropdown-menu pull-right text-right">
                                <li><a href="">Refresh</a></li>
                                <li><a href="">Settings</a></li>
                            </ul>
                        </div>
                        <div class="p-10">
                            <div id="bar-chart" class="main-chart" style="height: 250px"></div>
                        </div>
                    </div>
                    </div>
                </div>

                    
                  
                    
                    
            </section>

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