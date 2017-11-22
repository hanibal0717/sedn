 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:choose>
	<c:when test="${empty dataLists}">
		<tr>
			<td colspan="6">해당 메뉴의 영상이 없습니다.</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${dataLists}" var="dataLists" varStatus="loop">
			<tr style="cursor: pointer;" onClick="dataSpray('${dataLists.idx}');">
				<td><div class="pull-left"><img src="${pageContext.request.contextPath }/boxImg/${dataLists.sdImgbox}" width="50px"/></div></td>
				<td>${dataLists.sdCategory}</td>
                <td>${dataLists.sdTitle }</td>
                <td>${dataLists.sdCount}</td>
                <td>${fn:substring(dataLists.sdCreateDate,0,4) }.${fn:substring(dataLists.sdCreateDate,4,6) }.${fn:substring(dataLists.sdCreateDate,6,8) }</td>
                <td>${fn:substring(dataLists.sdOpenDate,0,4) }.${fn:substring(dataLists.sdOpenDate,4,6) }.${fn:substring(dataLists.sdOpenDate,6,8) }</td>
			</tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
<script>
	$(function(){
		$("#paging").html("${pagingStr}");
		$(".pagination li a").click(function(){
	       	$.ajax({url:$(this).attr('rel'),
    			success:function(data){
    				$("#dataList").empty();
    				$("#dataList").html(data);
    				},
    				error:fnError
	    	});
	    });
	});
</script>


