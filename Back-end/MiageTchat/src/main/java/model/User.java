/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

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
