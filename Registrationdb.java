/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypackage;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



/**
 *
 * @author Shivam paswan
 */
@MultipartConfig
@WebServlet(name = "Registrationdb", urlPatterns = {"/Registrationdb"})
public class Registrationdb extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registration</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Welcome into servlet </h1>");
            out.println("</body>");
            out.println("</html>");
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
        
       String Name=request.getParameter("name");
       String Gender=request.getParameter("gender");
       String CheckGender="";
       if(Gender.equals("Male"))
           CheckGender="Male";
       else
           CheckGender="Female";
       String Mobile=request.getParameter("mob");
       String Quali=request.getParameter("quali");
       String Email=request.getParameter("email");
       String Passwd=request.getParameter("pass");
       
       Part file= request.getPart("profile");
       String fileName=file.getSubmittedFileName();
      InputStream is=file.getInputStream();
       File f=new File(request.getRealPath("/images"),Email+fileName);
       Files.copy(is, f.toPath());
      
       String captcha=request.getParameter("hdn1");
       String ConfirmCaptcha=request.getParameter("cc1");
       ConnectionM cm=new ConnectionM(); 
   
       if(captcha.equals(ConfirmCaptcha))
       {
       String command="insert into registration values('"+Name+"','"+CheckGender+"','"+Mobile+"','"+Quali+"','"+Email+"','"+Passwd+"','"+fileName+"')";
        
       PrintWriter out = response.getWriter();
      if(cm.ExecuteInsertUpdateOrDelete(command))
       {
        out.print("<script>alert('your registration  complited ');window.location.href='index.html';</script>"); 
       }
       else
       {
       out.print("<script>alert('your registration is not complited ');window.location.href='user/Registration.jsp';</script>");  
       }   
       }
       
     else
       {
                 PrintWriter out = response.getWriter();
          out.print("<script>alert('invalid capchcode  code');window.location.href='user/Registration.jsp';</script>");
       }
       
    
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
