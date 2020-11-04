<html>
	<body>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<%@ page contentType="text/html; charset=UTF-8" %>
		
		<c:import url="cabecalho.jsp"/>	
		
		<table border="1">
			<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.nome}</td>
				<td>
					<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if>
					
					<c:if test="${empty contato.email}">
						Email não informado
					</c:if>
				</td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>
				<a href="mvc?logica=RemoveContatoLogica&id=${contato.id}">Remover</a>
				</td>
			</tr>		
			</c:forEach>
		</table>
		
		<c:import url="rodape.jsp"/>
	</body>
</html>