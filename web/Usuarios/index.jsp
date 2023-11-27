<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de usuarios</title>

    </head>

    <body>
        <header>
            <nav style="background-color: #363062; height: 80px; color: #F5E8C7; display: flex; justify-content: space-between; align-items: center;  padding: 30px">
                <h3 style="font-size: 30px; ">Creación módulos de Software - William Herrera</h3>
                <div style="color: #F5E8C7">
                    <ul style="list-style: none; display: flex; flex-direction: row; font-size: 20px;  color: #F5E8C7" >
                        <li style="color: #F5E8C7; padding-right: 10px; color: #F5E8C7">
                            <a style="color: #F5E8C7; text-decoration: none" href="CRUDUsers">Usuarios</a>
                        </li>
                        <li >
                            <a style="color: #F5E8C7; text-decoration: none" class="nav-link fs-3" href="ServletUser?accion=nuevo">Añadir</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <br>

        <div >
            <div >
                <h1 >Lista de Usuarios</h1>
                <hr/>
                <div class="container text-left">
                    <a href="ServletUser?accion=nuevo" class="btn btn-success">Nuevo Usuario</a>
                </div>

                <br>

                <table style="width: 50%;
                       background-color: #FFFFFF;
                       border-collapse: collapse;
                       border-width: 2px;
                       border-color: #7ea8f8;
                       border-style: solid;
                       color: #000000;" >
                    <thead style="background-color: #7ea8f8;">
                        <tr style="border-width: 2px;
                            border-color: #7ea8f8;
                            border-style: solid;
                            padding: 5px;">
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <!-- forEach que proviene de la librería JSTL -->
                        <c:forEach var="usuario" items="${listaUsuarios}">

                            <tr>
                                <td><c:out value="${usuario.nombre}" /></td>
                                <td><c:out value="${usuario.apellido}" /></td>
                                <td><a href="ServletUser?accion=vermodificar&urlid=<c:out value="${usuario.id}" />">Modificar</a></td>
                                <td><a href="ServletUser?accion=eliminar&urlid=<c:out value="${usuario.id}" />">Eliminar</a></td>
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
