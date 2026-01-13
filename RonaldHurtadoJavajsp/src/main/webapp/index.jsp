<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tres en Raya</title>

    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
        }

        .contenedor {
            text-align: center;
        }

        table {
            border-collapse: collapse;
            margin-top: 20px;
            margin-left: auto;
            margin-right: auto;
        }

        td {
            width: 70px;
            height: 70px;
            border: 2px solid #bbb;
            text-align: center;
            vertical-align: middle;
        }

        /* Cruz roja */
        .x {
            color: #c62828;
            font-size: 42px;
            font-weight: bold;
        }

        /* Círculo negro */
        .o {
            width: 40px;
            height: 40px;
            border: 4px solid black;
            border-radius: 50%;
            margin: auto;
        }
    </style>
</head>

<body>

<div class="contenedor">

<h2>Partida finalizada - Tres en Raya</h2>

<%
    // 1. Crear el tablero (3 X, 3 O y 3 vacíos)
    String[] tablero = {
        "X", "X", "X",
        "O", "O", "O",
        "", "", ""
    };

    // 2. Mezclar el tablero de forma aleatoria
    for (int i = 0; i < tablero.length; i++) {
        int j = (int)(Math.random() * tablero.length);
        String aux = tablero[i];
        tablero[i] = tablero[j];
        tablero[j] = aux;
    }
%>

<table>
<%
    int pos = 0;
    for (int fila = 0; fila < 3; fila++) {
%>
    <tr>
    <%
        for (int col = 0; col < 3; col++) {
            String valor = tablero[pos++];
    %>
        <td>
            <% if (valor.equals("X")) { %>
                <span class="x">X</span>
            <% } else if (valor.equals("O")) { %>
                <div class="o"></div>
            <% } %>
        </td>
    <%
        }
    %>
    </tr>
<%
    }
%>
</table>

</div>

</body>
</html>
