<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"/>
</head>
<body>

	<%!String today(){
		java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
	}%>
	
	<c:set var="variavel" value="Testando pagina JSP utilizando JSTL"/> 
	<c:out value="${variavel} "/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>a data de hoje é: <c:out value="${d1}"/></h1>
	<h1>a data de hoje é: <fmt:formatDate pattern = "yyyy-MM-dd hh:mm:ss" value="${d1 }"/></h1>
	<c:if test="${formatar == true }">
	      <p> variavel formatar = <c:out value="${formatar}"/></p>
 	</c:if>
 	<h1>a data de hoje é: <c:choose>
 								<c:when test="${formatar == true }">
 									<c:out value="<%=today()%>"/>
 									</c:when>
 									<c:otherwise>
 									<c:out value="${d1}"/>
 								</c:otherwise>
 							</c:choose></h1>
	
	
	
	
		<!-- EXERCICIO-->
			<div class="bg-dark text-light text-center">	
			
				<c:set var="num" value="8"/>
				
				  
				<c:choose>
		 				<c:when test="${num>10}">
		 					<h1><c:out value="${num}é maior que 10"/></h1>
		 				</c:when>
		 				<c:otherwise>
		 					<h1><c:out value="${num} é menor que 10"/></h1>
		 				</c:otherwise>
		 		</c:choose>
	 		
	 		
	 		
	 	
	
		
				<c:set var="comparacao" value="false"/>
				<c:set var="num1" value="8"/>
				<c:set var="num2" value="12"/>
		 		<c:if test="${num1!=num2}">
			     	<h1 class="text-decoration-none"><c:out value="${num1}"/> e <c:out value="${num2}"/> são diferentes. Pesquise no <a class="fw-bold text-decoration-none" href="https://google.com" target="_blank">google</a>!</h1>
		 		</c:if>
		 		
		 		
		 		
		 		
		 		<c:set var="minusculo" value="enviar"/>
		 		<button class="btn btn-warning w-50">${fn:toUpperCase(minusculo)}</button>
				
		  
			<!-- FIM EXERCICIO-->
	</div>
	
	
</body>
</html>