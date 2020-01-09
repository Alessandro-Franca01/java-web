<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Testando Cookies </title>
</head>
<body>
<!--  TESTAR DEPOIS ESSE PROJETO SE ESTA RODANDO COMO DEVERIA SER -->
<%
	// REQUEST = objeto que faz com que vc consiga capturar os dados da pagina HTML (minha observação)
	String nome = request.getParameter("nome"); // a String declarada recebe o valor do "nome" da pagina formulario
	
	// Verificando e salvando o Cookie!
	if(nome != null){
		Cookie cookieNome = new Cookie("nomeUser", nome); // intaciando um obj cookie com o nome do usuario
		cookieNome.setMaxAge(60*60*24); // salvando o cookie por tempo estabelecido 1 dia
		response.addCookie(cookieNome);  //passando o obj cookie para o navegador
	}
	
	// reutilizando codigo da pagina formulario
	Cookie[] cookies = request.getCookies();
	for(Cookie temp: cookies){
		if(temp.getName().equals("nomeUser")){
			nome = temp.getValue();

		}
	}
	
	out.print("Seu nome é "+nome+"<br>");
%>
	<img src="img/sem_foto.png">
	
	
</body>
</html>