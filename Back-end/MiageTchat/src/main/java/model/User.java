/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import DAO.DataBaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

    public User() {
    }
    
    public boolean newCompte(){
        Connection conn=DataBaseConnection.ConnexionBD();
		try {PreparedStatement ps=conn.prepareStatement("insert into User (User_Id,First_Name,Last_Name,Birth_Year,Gender,Mail,Password,Status) values (?,?,?,?,?,?,?,?)");
		ps.setString(1, User_Id);
		ps.setString(2,First_Name);//level toujours 0
		ps.setString(3,Last_Name);
                ps.setInt(4,Birth_Year);
                ps.setString(5,Gender);
                ps.setString(6,Mail);
                ps.setString(7,Password);
                ps.setBoolean(8,false);
		ps.executeUpdate();
		ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false;
}
      return true;  
    }

    public int getBirth_Year() {
        return Birth_Year;
    }

    public void setBirth_Year(int Birth_Year) {
        this.Birth_Year = Birth_Year;
    }
    
    public String getUser_Id() {
        return User_Id;
    }

    public void setUser_Id(String User_Id) {
        this.User_Id = User_Id;
    }

    public String getFirst_Name() {
        return First_Name;
    }

    public void setFirst_Name(String First_Name) {
        this.First_Name = First_Name;
    }

    public String getLast_Name() {
        return Last_Name;
    }

    public void setLast_Name(String Last_Name) {
        this.Last_Name = Last_Name;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getMail() {
        return Mail;
    }

    public void setMail(String Mail) {
        this.Mail = Mail;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public Boolean getStatus() {
        return Status;
    }

    public void setStatus(Boolean Status) {
        this.Status = Status;
    }
    
    public boolean GetCompte(String user){
        User o1=new User();
        Connection conn=DataBaseConnection.ConnexionBD();
        try {PreparedStatement ps=conn.prepareStatement("Select * FROM User WHERE User_Id='"+user+"'");
        ResultSet rs=ps.executeQuery();
		while(rs.next()){
				
				o1.setUser_Id(rs.getString(1));
				o1.setFirst_Name(rs.getString(2));
				o1.setLast_Name(rs.getString(3));
				o1.setBirth_Year(rs.getInt(4));
                                o1.setGender(rs.getString(1));
				o1.setMail(rs.getString(2));
				o1.setPassword(rs.getString(3));
				

					};
					
            ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false ;
}
      return true ;  
      
    }
    
    public boolean UpdateCompte(String user){
        Connection conn=DataBaseConnection.ConnexionBD();
                
		try{
		PreparedStatement ps=conn.prepareStatement("UPDATE `User` SET `First_Name`='"+First_Name+",`Last_Name`='"+Last_Name+",`Birth_Year`='"+Birth_Year+",`Gender`='"+Gender+",`Mail`='"+Mail+",`Password`='"+Password+"'WHERE User_Id='"+user+"'");
		ps.executeUpdate();
	
		ps.close();
		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false;
}
        return true;
    }
    
    public boolean DeleteCompte(String id){
         Connection conn=DataBaseConnection.ConnexionBD();
                
		try{
		PreparedStatement st = conn.prepareStatement("DELETE FROM User WHERE User_Id = ?");
                st.setString(1,id);
                st.executeUpdate(); 
                st.close();
		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false;
}
        return true;
    }
}
