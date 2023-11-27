<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Almacen</title>
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
        <br>
        <div>
            <div>
                <div>
                    <h1 >Agregar nuevo usuario</h1>
                <hr/>

                    <form action="ServletUser?accion=insertar" method="POST">
                        <p>Nombre: <input required="" id="nombre" type="text" name="txtnombre"></p>
                        <p>Apellido: <input required="" id="apellido" type="text" name="txtapellido"></p>
                        <button id="registrar" name="registrar" type="submit">Registrar</button>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
