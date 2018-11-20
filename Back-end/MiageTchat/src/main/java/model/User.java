/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import DAO.DataBaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author ganeistan
 */
public class User {
    
    private String User_Id;
    private String First_Name;
    private String Last_Name;
    private int Birth_Year;
    private String Gender;
    private String Mail;
    private String Password;
    private Boolean Status;
      
    public User(String u,String f,String l,int b,String g,String m,String p,Boolean s){
        User_Id=u;
        First_Name=f;
        Last_Name=l;
        Birth_Year=b;
        Gender=g;
        Mail=m;
        Password=p;
        Status=s;
    }
    public boolean newCompte(){
        Connection conn=DataBaseConnection.ConnexionBD();
		try {PreparedStatement ps=conn.prepareStatement("insert into User (User_Id,First_Name,Last_Name,Birth_Year,Gender,Mail,Password) values (?,?,?,?,?,?,?)");
		ps.setString(1, User_Id);
		ps.setString(2,First_Name);//level toujours 0
		ps.setString(3,Last_Name);
                ps.setInt(4,Birth_Year);
                ps.setString(5,Gender);
                ps.setString(6,Mail);
                ps.setString(7,Password);
		ps.executeUpdate();
		ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false;
}
      return true;  
    }
    public boolean GetCompte(){
      return true;  
    }
    
    public boolean UpdateCompte(){
        return true;
    }
    
    public boolean DeleteCompte(){
        return true;
    }
}
