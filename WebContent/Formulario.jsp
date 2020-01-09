<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina de Formulario</title>
</head>
<body>
	<h1> TESTANDO SCRIP COM FORMULARIOS E COOKIES </h1>
	
	<!-- Criando formulario  -->
	<form action="Cookies.jsp">
	Nome:
	<input type="text" name="nome">
	<input type="submit" value="Enviar">
	</form>
	
	<!-- Pegando os cookies de Cookies.jsp e redirecionando a pagina caso os cookies exista -->
	<%
	Cookie[] cookies = request.getCookies(); // o que essa linha faz na vdd ??? captura todos os cookies ?!
		for(Cookie temp: cookies){
			if(temp.getName().equals("nomeUser")){ // verificando se tem o cookie com nome "nomeUser" 
				response.sendRedirect("Cookies.jsp"); // Entra no if e redireciona a pagina
			}
		}
	%>
	
</body>
</html>