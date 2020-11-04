<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
	<head>
		<meta charset="ISO-8859-1">
	</head>
	<body>
		<c:import url="cabecalho.jsp"></c:import>
		<caelum:teste/>
		
		<form action="cliente/adiciona">
			Nome: <input type="text" name="usuario"/>
			<br>
			End: <input type="text" name="endereco"/>
			<br>
			Email: <input type="text" name="email"/>
			<br>
			Data Nascimento: 
				<input type="text" name="dataNascimento"/> <br/>
			
			<input type="submit" value="Gravar"/>
		</form>
	</body>
</html>