/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.userController;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import users.UserDAO;
import users.UserDTO;

/**
 *
 * @author HOANG DUNG
 */
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

    private static final String SIGNIN_PAGE = "signin.jsp";
    //
    private static final String ADMIN_PAGE = "admin/admin.jsp";
    private static final String CUSTOMER_PAGE = "customer.jsp";
    private static final String STAFF_PAGE = "staff/staff.jsp";
    private static final String INSTRUCTOR_PAGE = "instructor.jsp";
    //
    private static final String ADMIN = "Admin";
    private static final String CUSTOMER = "Customer";
    private static final String STAFF = "Staff";
    private static final String INSTRUCTOR = "Instructor";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = SIGNIN_PAGE;

        try {
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            UserDAO dao = new UserDAO();
            UserDTO loginUser = dao.checkLogin(userName, password);
            if (loginUser == null) {
                request.setAttribute("ERROR", "Username or Password is incorrect");
            } else {
                String role = loginUser.getRole();
                HttpSession session = request.getSession();
                if (role.equalsIgnoreCase(ADMIN)) {
                    session.setAttribute("LOGIN_USER", loginUser);
                    url = ADMIN_PAGE;
                } else if (role.equalsIgnoreCase(STAFF)) {
                    session.setAttribute("LOGIN_USER", loginUser);
                    url = STAFF_PAGE;
                } else if (role.equalsIgnoreCase(INSTRUCTOR)) {
                    session.setAttribute("LOGIN_USER", loginUser);
                    url = INSTRUCTOR_PAGE;
                } else if (role.equalsIgnoreCase(CUSTOMER)) {
                    session.setAttribute("LOGIN_USER", loginUser);
                    url = CUSTOMER_PAGE;
                } else {
                    request.setAttribute("ERROR", "Your account is not supported yet!");
                }
            }
        } catch (Exception e) {
            log("Error at LoginController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
