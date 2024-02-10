
package com.database;


import java.sql.*;

public class Queries {
    public static ResultSet rs;
    public static int i;
    
    public static ResultSet getExecuteQuery(String query){
        try{
        Connection con=Dbconnection.getcon();
     Statement st=con.createStatement();
     rs=st.executeQuery(query);
        }catch(Exception e){
            System.out.println(e);  
        }
        return rs;
    }
    public static int getExecuteUpdate(String query){
        try{
        Connection con=Dbconnection.getcon();
     Statement st=con.createStatement();
     i=st.executeUpdate(query);
        }catch(Exception e){
            System.out.println(e);  
        }
        return i;
    }
}
