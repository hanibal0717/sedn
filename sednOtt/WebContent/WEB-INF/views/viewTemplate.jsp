<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiels"%>
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
        <link href="${pageContext.request.contextPath}/sednCss/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/icons.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/sednCss/generics.css" rel="stylesheet"> 
    </head>
    <body id="skin-blur-violate">
		<tiels:insertAttribute name="viewTemplate"/>
	 </body>
</html>