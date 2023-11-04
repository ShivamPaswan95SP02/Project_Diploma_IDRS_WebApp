/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Shivam paswan
 */
public class ConnectionM {

    /**
     *
     * @return
     */
    public Connection getCon()
 {
   try{
   Class.forName("com.mysql.jdbc.Driver");
   return DriverManager.getConnection("jdbc:mysql://localhost:3306/idrsdb","root","");
   } 
   catch(Exception ex)
   {
       return null;
   }
 }
 //create a second method

    /**
     *
     * @param command
     * @return
     */
     public boolean ExecuteInsertUpdateOrDelete(String command)
 {
     try{
 PreparedStatement ps=getCon().prepareStatement(command);
   return ps.executeUpdate()>0?true:false;
     }
     catch(Exception ex)
     {
     return false;
     }
     }

    /**
     *
     * @param command
     * @return
     */
    public  ResultSet getData(String command)
 {
    try{
   PreparedStatement ps=getCon().prepareStatement(command);    
   return ps.executeQuery();
    }
    catch(Exception ex)
    {
        return null;
    }
    }
}



