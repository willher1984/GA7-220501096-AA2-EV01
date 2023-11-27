<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
                            <a style="color: #F5E8C7; text-decoration: none" href="ServletUser?accion=nuevo">Añadir</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <br>
        <div>
            <div>
                <div>
                    <h1 >Modificar usuario</h1>
                <hr/>
                    <form action="ServletUser?accion=actualizar" method="POST">
                        <input id="id" type="hidden" name="txtid" value="<c:out value="${proModificar.id}"/>">
                        <p>Código: <input id="nombre" type="text" name="txtnombre" value="<c:out value="${proModificar.nombre}"/>"></p>
                        <p>Nombre: <input id="apellido" type="text" name="txtapellido" value="<c:out value="${proModificar.apellido}"/>"></p>
                        <button id="modificar" name="modificar" type="submit">Modificar</button>
                    </form>
                </div>
            </div>
        </div>


    </body>
</html>
