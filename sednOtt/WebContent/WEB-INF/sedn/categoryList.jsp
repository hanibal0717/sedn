 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:choose>
	<c:when test="${empty lists }">

no one dpeth category. please add category

	</c:when>
		<c:otherwise>
			<c:forEach items="${lists}" var="lists"  varStatus="loop">
				<tr id="${lists.idx}">
				  <td class="goEdit" id="${lists.categoryCode}">${lists.categoryName }</td>
				  <td>${lists.categoryType }</td>
				  <td>${lists.categoryOpen }</td>
				</tr>
			</c:forEach>
		</c:otherwise>	
	</c:choose>
<script>
	$(function(){
		$("#listTR tr").click(function(){
			$("#listTR tr").removeClass();
			$(this).addClass("well tile"); 
		});
		$(".goEdit").click(function(){
			$.ajax({
				dataType:"json",
				url:"${pageContext.request.contextPath}/categoryView.do?categoryCode="+$(this).attr("id"),
				success:function(data){
				$("#categoryInsertForm").css("display","none");
				$("#categoryEditForm").css("display","block");
				$("#fcType").val(data[0].categoryType);
				$("#form-validation-field-1").val(data[0].categoryName);
				$("#fcIdx").val(data[0].categoryIdx); 
				$(".switch-off").css("left","-50%");
				if(data[0].categoryOpen=="Y"){
					$("#fcOpen").prop("checked", true);
					$(".switch-off").css("left","0%");

				}else{
					$("#fcOpen").prop("checked", false);
					$(".switch-off").css("left","-50%");
			    }
				
				$("#fcAuth").val(data[0].categoryAuth);
				$("#fcDepth").val(data[0].categoryDepth);
				$("#fcCode").val(data[0].categoryCode);
				},
				error:fnError
			});
		});
		function fnError(data){alert("AjaxError:"+data);}
	});
</script>
