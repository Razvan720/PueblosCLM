<%-- 
    Document   : pueblos
    Created on : 10-feb-2020, 21:16:04
    Author     : DAW209
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String provincia_activa = (String) request.getAttribute("provincia");

			ArrayList<String> pueblos = (ArrayList<String>) request.getAttribute("pueblos");
			ArrayList<String> provincias = (ArrayList<String>) request.getAttribute("provincias");%>

        <h1>Pueblos de Castilla La Mancha</h1>
        <h2>Provincia activa: <%= provincia_activa%></h2>

		<% for (int p = 0; p < provincias.size(); p++) {%>

		<a href="Poblaciones?provincia=<%= provincias.get(p)%>" class="btn btn-primary"  > <%= provincias.get(p)%> </a>
		<% } %>

		<br><br>


	<table class="table table-striped ">
		<thead class="thead-dark">
			<tr>
				<th scope="col">#</th>
				<th scope="col">Poblacion</th>
				
			</tr>
		</thead>
		<tbody>
			<% for (int i = 0; i < pueblos.size(); i++) {%>
			<tr>
				<th scope="row"><%= i %></th>
				<td><%= pueblos.get(i)%></td>
			</tr>
			<% }%>
		</tbody>
	</table>

	

</body>
</html>
