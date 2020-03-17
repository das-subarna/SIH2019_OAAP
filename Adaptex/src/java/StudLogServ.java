/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Subarna
 */
public class StudLogServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
              String uid = request.getParameter("text_uid");        
              String pass =request.getParameter("text_pass");
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","FIEM","FIEM");
              PreparedStatement ps = con.prepareStatement("Select email,otp from MASTER where u_id=? and password=?");
              ps.setString(1,uid);
              ps.setString(2,pass);
              ResultSet rs = ps.executeQuery();
              HttpSession hs= request.getSession();         
              if(rs.next()){
                    String email = rs.getString(1);
                    int otp = rs.getInt(2);
                    hs.setAttribute("s_otp",otp);
                    hs.setAttribute("s_email",email);
                    hs.setAttribute("s_uid",uid);
                    if(otp==1){
                        RequestDispatcher rd = request.getRequestDispatcher("StudentPortal.jsp"); //page chaining
                        rd.forward(request,response);
                    }
                    else
                        out.println("<script>alert('Otp not validated!');window.location='otpvalidate.jsp';</script>");
               }
               else{
                    out.println("<script>alert('Invalid Username/Password!!!');window.location='StudentLogin.jsp';</script>");
               }
        }catch(Exception e){
            out.println(e);
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
