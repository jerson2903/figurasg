<%-- 
    Document   : index
    Created on : 22 jun. 2024, 10:52:25 p. m.
    Author     : jerso
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcula tu Figura Geométrica</title>
        <style>
        body {
			background-color: #f2f2f2;
	}
        .container {
		width: 50%; /* adjust the width to your liking */
		margin: 40px auto; /* center the container horizontally */
		background-color: #fff;
		padding: 20px;
		border: 1px solid #ddd;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
        .centered {
	text-align: center;
	}
                
        </style>
    </head>
    <body>
        <div class="container">
        <h1 class="centered">Calcula tu Figura Geométrica</h1>
        <form action="procesarFigura.jsp" method="post">
            <label for="lado1">Lado 1:</label>
            <input type="number" STYLE="border:double;background:yellow" id="lado1" name="lado1" value="0" ><br><br>
            <label for="lado2">Lado 2:</label>
            <input type="number" STYLE="border:double;background:yellow" id="lado2" name="lado2" value="0" ><br><br>
            <label for="lado3">Lado 3:</label>
            <input type="number" STYLE="border:double;background:yellow" id="lado3" name="lado3" value="0"><br><br>
            <label for="lado4">Lado 4:</label>
            <input type="number" STYLE="border:double;background:yellow" id="lado4" name="lado4" value="0"><br><br>
            <div class="centered"><input type="submit" value="Procesar"></div>
        </form>
        </div>
    </body>
</html>