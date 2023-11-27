package Crud;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.UserVO;
import modelo.UserDAO;

@WebServlet(name = "ServletUser", urlPatterns = {"/"})
public class ServletUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //crear objetos ejecutando constructor
        UserDAO proDao = new UserDAO();
        String accion; // guarda la accion
        RequestDispatcher dispatcher = null;
        accion = request.getParameter("accion");

        //Validar las acciones que está realizando el usuario
        //Acción nula o vacia
        if (accion == null || accion.isEmpty()) {
            dispatcher = request.getRequestDispatcher("Usuarios/index.jsp");

            List<UserVO> listaUsuarios = proDao.listarUsuarios();
            request.setAttribute("listaUsuarios", listaUsuarios);
        }
        
        //Redirigir a pestaña nuevo
        else if ("nuevo".equals(accion)){
            dispatcher = request.getRequestDispatcher("Usuarios/nuevo.jsp");
        }
        
        //Agregar
        else if ("insertar".equals(accion)){
            
            String nombre = request.getParameter("txtnombre");
            String apellido = request.getParameter("txtapellido");
            
            UserVO pro = new UserVO(0, nombre, apellido);
            
            proDao.insertar(pro);
            
            dispatcher = request.getRequestDispatcher("Usuarios/index.jsp");
            
            List<UserVO> listaUsuarios = proDao.listarUsuarios();
            request.setAttribute("listaUsuarios", listaUsuarios);
            
        }
        
        //Ver id a modificar
        else if ("vermodificar".equals(accion)){
            dispatcher = request.getRequestDispatcher("Usuarios/editar.jsp");
            int id = Integer.parseInt(request.getParameter("urlid"));
            System.out.println("EL ID ES: "+ id);
            UserVO pro = proDao.mostrarUsuario(id);
            
            request.setAttribute("proModificar", pro);
        }
        
        //Actualizar
        else if ("actualizar".equals(accion)){
            
            int id = Integer.parseInt(request.getParameter("txtid"));
            String nombre = request.getParameter("txtnombre");
            String apellido = request.getParameter("txtapellido");
            
            UserVO pro = new UserVO(id, nombre, apellido);
            
            proDao.actualizar(pro);
            
            dispatcher = request.getRequestDispatcher("Usuarios/index.jsp");
            List<UserVO> listaUsuarios = proDao.listarUsuarios();
            request.setAttribute("listaUsuarios", listaUsuarios);
            
        }
        
        //Eliminar
        else if ("eliminar".equals(accion)){
            
            int id = Integer.parseInt(request.getParameter("urlid"));
            
            proDao.eliminar(id);
            
            dispatcher = request.getRequestDispatcher("Usuarios/index.jsp");
            List<UserVO> listaUsuarios = proDao.listarUsuarios();
            request.setAttribute("listaUsuarios", listaUsuarios);
        }
        
        //Mostrar vista principal si no coincide con ningúna accion
        else {
            dispatcher = request.getRequestDispatcher("Usuarios/index.jsp");
            List<UserVO> listaUsuarios = proDao.listarUsuarios();
            request.setAttribute("listaUsuarios", listaUsuarios);
        }
        
        //Reenvio de solicitud a otro recurso
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Enviar todas las peticiones que hace el usuario al método doGet
        doGet(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
