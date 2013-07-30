/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package myClass;
import java.io.*;
import java.util.*;
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.swing.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.output.*;
/**
 *
 * @author Ashoke
 */

public class UploadServlet1 extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     private boolean isMultipart;
   private String filePath;
   private int maxFileSize = 100 * 1024*100;
   private int maxMemSize = 10 * 1024;
   private File file ;
private String fileName;

         private    String songName;
         private    String year;
         private    String album;
         private    String artist;
         private    String genre;
         private    String duration;
         private    String type;
         private    int cost;
         private    String adminid;
         private    String filename2;
   public void init( ){
      // Get the file location where it would be stored.
      
     // filePath ="c://temp";//getServletContext().getInitParameter("images\\");
   }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        // Check that we have a file upload request
      
          
           /* if(rs.next())
            {
          /* PreparedStatement ps1=con.prepareStatement("select * from user_det where uid=?");
            ps1.setString(1, "Shash12");
            ResultSet rs1= ps1.executeQuery();
            String to= rs1.getString("email");
            
        String subject = "Conformation mail";
        String message =  "Thank You For Registering.";
        String user = request.getParameter("rite2shash@gmail.com");
        String pass = request.getParameter("?977Shash");
        SendMail.send(to,subject, message, user, pass);
        out.println("Mail send successfully");
        RequestDispatcher rd1=request.getRequestDispatcher("profile.html");
         rd1.forward(request, response);
       }
            else
            {
             
                RequestDispatcher rd1=request.getRequestDispatcher("signup.html");
                rd1.forward(request, response);
            }
            
            // TODO output your page here
            /*out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
         
        
     
   }
       out.println("</body>");
      out.println("</html>");*/
      }
      
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       isMultipart = ServletFileUpload.isMultipartContent(request);
      response.setContentType("text/html");
      java.io.PrintWriter out = response.getWriter( );
      if( !isMultipart ){
         out.println("<html>");
         out.println("<head>");
         out.println("<title>Servlet upload</title>");
         out.println("</head>");
         out.println("<body>");
         out.println("<p>No file uploaded</p>");
         out.println("</body>");
         out.println("</html>");
         return;
      }
      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File("E:\\temp"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );

      try{
      // Parse the request to get file items.

      List fileItems = upload.parseRequest(request);

      // Process the uploaded file items
      Iterator i = fileItems.iterator();

   /*   out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");
      out.println("</head>");
      out.println("<body>");
      out.println(request.getRealPath(request.getServletPath()));*/
      filePath="E:\\J2EE project\\Musica\\web\\upload\\";
      songName="";
      album="";
      artist="";
      genre="";
      year="";
      duration="";
      type="";
      cost=0;
      adminid="A1";
      
      while ( i.hasNext () )
      {

        //  i.next().getClass();

         FileItem fi = (FileItem)i.next();
         
       if(fi.isFormField())
       {
           if(fi.getFieldName().equals("name"))
         {
             songName=fi.getString();
         }
           if(fi.getFieldName().equals("year"))
         {
             year=fi.getString();
         }
           if(fi.getFieldName().equals("album"))
         {
             album=fi.getString();
         }
           if(fi.getFieldName().equals("genre"))
         {
             genre=fi.getString();
         }
             if(fi.getFieldName().equals("duration"))
         {
             duration=fi.getString();
         }
             if(fi.getFieldName().equals("type"))
         {
             type=fi.getString();
         }
           if(fi.getFieldName().equals("cost"))
         {
             cost=Integer.parseInt(fi.getString());
         }
          /* if(fi.getFieldName().equals("adminid"))
         {
             adminid=fi.getString();
         }*/
         
       }
         else if ( !fi.isFormField () )
         {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
             fileName = fi.getName();
            String contentType = fi.getContentType();
            boolean isInMemory = fi.isInMemory();
            //long sizeInBytes =
            // Write the file
           if( fileName.lastIndexOf("\\") >= 0 ){
               file = new File( filePath +
               fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
               file = new File( filePath +
               fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( file ) ;
             
           //out.println("Uploaded Filename: " + fileName + "<br>");
           filename2=fileName.substring(0,fileName.lastIndexOf("."));
           out.println("Uploaded Filename: " + filename2 + "<br>");
         }
  
           
      }
            Connection con = MyConnection.getCon();
            //out.print(userid);
            //out.print(password);
            PreparedStatement ps=con.prepareStatement("insert into song values('S'||s_id_seq.nextval,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,filename2);
            ps.setString(2, album);
            ps.setString(3,artist);
            ps.setString(4, genre);
            ps.setString(5,year);
            ps.setString(6,duration);
            ps.setString(7,type);
            ps.setInt(8, cost);
            ps.setString(9, filePath+fileName);
            ps.setString(10,adminid);
            ps.executeUpdate();
            processRequest(request, response);
            String st="Update Successful";
            JOptionPane.showMessageDialog(null,st);
            
    
      }
      catch(Exception ex) {
       out.println(ex);
       out.println(filePath);
   }
    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    throw new ServletException("Get method used with"+getClass().getName()+":POST method required.");
        
      }
    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
