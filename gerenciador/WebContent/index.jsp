<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	Bem vindo ao nosso gerenciador de empresas!
	<br />
	<c:if test="${usuarioLogado!=null}">Você está logado com ${usuarioLogado.email }</c:if>
	<form action="executa" method="post">
		<input type="hidden" name="tarefa" value="NovaEmpresa"/>
		Nome:<input type="text" name="nome" /> <input type="submit" />
	</form>

	<form action="login" method="post">
		email:<input type="email" name="email"/></br>
		password:<input type="password" name="senha"/></br>
		 <input type="submit" />
	</form>
	
	<form action="executa" method="post">
		<input type="hidden" name="tarefa" value="Logout"/>
		 <input type="submit" value="Logout"/>
	</form>

</body>
</html>