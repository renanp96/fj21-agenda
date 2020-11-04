<html>
	<%@ import="br.com.caelum.agenda.dao.ClienteDao,java.util.List"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<%@ page contentType="text/html; charset=UTF-8" %>
	<body>
	
		<h1>Lista de clientes</h1>
		
		<table border="1">
			<tr>
				<td>Id</td>
				<td>Nome</td>
				<td>Endereco</td>
				<td>Email</td>
			</tr>
			
			<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao">
			<table border="1">
			<c:forEach var="contato" items="${dao.lista}">
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
				</td>
			</tr>		
			</c:forEach>
		</table>
				
			</jsp:useBean>
		</table>
		
	</body>
</html>