<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <meta name="format-detection" content="telephone=no">
        <meta charset="UTF-8">

        <meta name="description" content="">
        <meta name="keywords" content="">

        <title>SEDN 3.0 Media Management System</title>
            
        <!-- CSS -->
        <link href="${pageContext.request.contextPath}/sednCss/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/animate.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/font-awesome.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/form.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/calendar.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/photo-gallery.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/icons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/lightbox.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/media-player.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/generics.css" rel="stylesheet"> 
        
        
        <script src="${pageContext.request.contextPath}/sednJs/jquery.min.js"></script> <!-- jQuery Library -->
        <script src="${pageContext.request.contextPath}/sednJs/jquery-ui.min.js"></script> <!-- jQuery UI -->
       	<script src="${pageContext.request.contextPath}/sednJs/jquery.form.min.js"></script>
       	
    </head>
    <body id="skin-blur-violate">
		<!-- header -->
      <tiles:insertAttribute name="header"/>
        <!-- header -->
        <div class="clearfix"></div>
        
        <section id="main" class="p-relative" role="main">
            
           <!-- left start -->
           <!-- left end -->
        	 <tiles:insertAttribute name="left"/>
           		 <tiles:insertAttribute name="body"/>
        </section>
        
        <!-- Javascript Libraries -->
        <!-- jQuery -->
        
        <script src="${pageContext.request.contextPath}/sednJs/jquery.easing.1.3.js"></script> <!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->

        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/sednJs/bootstrap.min.js"></script>

        <!-- Charts -->
        <script src="${pageContext.request.contextPath}/sednJs/charts/jquery.flot.js"></script> <!-- Flot Main -->
        <script src="${pageContext.request.contextPath}/sednJs/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
        <script src="${pageContext.request.contextPath}/sednJs/charts/jquery.flot.animator.min.js"></script> <!-- Flot sub -->
        <script src="${pageContext.request.contextPath}/sednJs/charts/jquery.flot.resize.min.js"></script> <!-- Flot sub - for repaint when resizing the screen -->
        <script src="${pageContext.request.contextPath}/sednJs/charts/jquery.flot.orderBar.js"></script> <!-- Flot Bar chart -->
        <script src="${pageContext.request.contextPath}/sednJs/charts/jquery.flot.pie.min.js"></script> <!-- Flot Pie chart -->

        <script src="${pageContext.request.contextPath}/sednJs/sparkline.min.js"></script> <!-- Sparkline - Tiny charts 메인상단 미니차트 JS -->
        <script src="${pageContext.request.contextPath}/sednJs/easypiechart.js"></script> <!-- EasyPieChart - Animated Pie Charts -->
        <script src="${pageContext.request.contextPath}/sednJs/charts.js"></script> <!-- All the above chart related functions -->

        <!-- Map -->
        <script src="${pageContext.request.contextPath}/sednJs/maps/jvectormap.min.js"></script> <!-- jVectorMap main library -->
        <script src="${pageContext.request.contextPath}/sednJs/maps/usa.js"></script> <!-- USA Map for jVectorMap -->
		
		
		<script src="${pageContext.request.contextPath}/sednJs/select.min.js"></script> <!-- Custom Select -->
        <script src="${pageContext.request.contextPath}/sednJs/chosen.min.js"></script> <!-- Custom Multi Select -->
        <script src="${pageContext.request.contextPath}/sednJs/datetimepicker.min.js"></script> <!-- Date & Time Picker -->
        <script src="${pageContext.request.contextPath}/sednJs/colorpicker.min.js"></script> <!-- Color Picker -->
        <script src="${pageContext.request.contextPath}/sednJs/autosize.min.js"></script> <!-- Textare autosize -->
        <script src="${pageContext.request.contextPath}/sednJs/toggler.min.js"></script> <!-- Toggler -->
        <script src="${pageContext.request.contextPath}/sednJs/input-mask.min.js"></script> <!-- Input Mask -->
        <script src="${pageContext.request.contextPath}/sednJs/spinner.min.js"></script> <!-- Spinner -->
        <script src="${pageContext.request.contextPath}/sednJs/slider.min.js"></script> <!-- Input Slider -->
        <!--  Form Related -->
        <script src="${pageContext.request.contextPath}/sednJs/icheck.js"></script> <!-- Custom Checkbox + Radio -->
		<!-- Text Editor -->
        <script src="${pageContext.request.contextPath}/sednJs/editor.min.js"></script> <!-- WYSIWYG Editor -->
        <script src="${pageContext.request.contextPath}/sednJs/markdown.min.js"></script> <!-- Markdown Editor -->
        <script src="${pageContext.request.contextPath}/sednJs/superbox.min.js"></script> <!-- Photo Gallery -->
        <!-- UX -->
        <script src="${pageContext.request.contextPath}/sednJs/scroll.min.js"></script> <!-- Custom Scrollbar -->
        
        <!--  Form Related -->
        <script src="${pageContext.request.contextPath}/sednJs/validation/validate.min.js"></script> <!-- jQuery Form Validation Library -->
        <script src="${pageContext.request.contextPath}/sednJs/validation/validationEngine.min.js"></script> <!-- jQuery Form Validation Library - requirred with above js -->
        

        <!-- Other -->
        <script src="${pageContext.request.contextPath}/sednJs/calendar.js"></script> <!-- Calendar -->
        <script src="${pageContext.request.contextPath}/sednJs/feeds.min.js"></script> <!-- News Feeds -->
        
		 <script src="${pageContext.request.contextPath}/sednJs/fileupload.min.js"></script> <!-- File Upload -->
        
        <!-- All JS functions -->
        <script src="${pageContext.request.contextPath}/sednJs/functions.js"></script>
        
			
    </body>
</html>
