<html>
<body>

<%-- comentario em JSL: nossa primeira pagina JSP --%>

<%
	String mensagem = "Bem vindo ao sistema agenda do FJ-21!";
%>
<%
	out.println(mensagem);
%><br/>

<%
	String desenvolvido = "Desenvolvido por Renan P Andrade";
%>
<%= desenvolvido %><br/>

<%
	System.out.println("Tudo foi executado");
%>


</body>
</html>