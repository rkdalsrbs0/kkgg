<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:import url="/WEB-INF/views/include/header.jsp" />

	<div class="main_container">
		<div class="main_container_area">
			<img src="img/main_img.jpg">
		</div>
	</div>
	
<c:import url="/WEB-INF/views/include/footer.jsp" />
<script>
	$(document).ready(function() { 
		if('${result}' == 'false'){
			alert('${resultMsg}');
		}
	});
</script>