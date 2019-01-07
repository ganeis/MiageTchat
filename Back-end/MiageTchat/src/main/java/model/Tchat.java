/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import DAO.DataBaseConnection;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.json.JsonObject;
import org.json.JSONArray;
import org.json.JSONObject;



/**
 *
 * @author ganeistan
 */
public class Tchat {
    private String Name;
    private ArrayList<User> list_user;
    private ArrayList<Messages> list_message;
    
    public Tchat(String n){
        Name=n;
    }

    public Tchat() {
     list_user=new ArrayList<User>();
     list_message=new ArrayList<Messages>();
    }
    
    public ArrayList<Messages> getMessage(int i){
        ArrayList<Messages> rep = new ArrayList<Messages>();
        
        
        return rep;
    }
    
    public boolean post_Message(Messages m){
        return true;
    }
    
    public ArrayList<User> getAllUsers(){
        ArrayList<User> rep = new ArrayList<User>();
        
        
        return rep;
    }
    
     public ArrayList<User> getOnlineUsers(){
        ArrayList<User> rep = new ArrayList<User>();
        
        
        return rep;
    }

    public int getMsg(int msgId) {
        //return 0 si erreur
        //return 1 si nouveau msg
        //return 2 si pas de nouveau msg
         Connection conn=DataBaseConnection.ConnexionBD();
        try {PreparedStatement ps=conn.prepareStatement("SELECT * FROM \"Tchat\" WHERE MsgId>'"+msgId+"'");
        ResultSet rs=ps.executeQuery();
        if(!rs.first()){
            return 2;
        }
		while(rs.next()){
				Messages m=new Messages();
				m.setMsgId(rs.getInt(1));
				m.setText(rs.getString(2));                              
                                Date dp=rs.getDate(3);
                                java.util.Date d = new java.util.Date(dp.getTime());
				m.setDate_Hour(d);
				m.setAuthor(rs.getString(4));
                               list_message.add(m);
				

					};
					
            ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return 0 ;
}
      return 1 ;  
      
    }

    public ArrayList<User> getList_user() {
        return list_user;
    }

    public void setList_user(ArrayList<User> list_user) {
        this.list_user = list_user;
    }

    public ArrayList<Messages> getList_message() {
        return list_message;
    }

    public void setList_message(ArrayList<Messages> list_message) {
        this.list_message = list_message;
    }
    
    public boolean getUser(){
          Connection conn=DataBaseConnection.ConnexionBD();
        try {PreparedStatement ps=conn.prepareStatement("SELECT \"User_Id\" FROM \"User\"");
        ResultSet rs=ps.executeQuery();
        
		while(rs.next()){
				User m=new User();
				m.setUser_Id(rs.getString(1));
                               list_user.add(m);
				

					};
					
            ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false ;
}
      return true ; 
    }
    
     public boolean getUserOn(){
          Connection conn=DataBaseConnection.ConnexionBD();
        try {PreparedStatement ps=conn.prepareStatement("SELECT \"User_Id\" FROM \"User\" WHERE Status='"+1+"'");
        ResultSet rs=ps.executeQuery();
        
		while(rs.next()){
				User m=new User();
				m.setUser_Id(rs.getString(1));
                               list_user.add(m);
				

					};
					
            ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false ;
}
      return true ; 
    }
    public JSONObject jsonMe(){
         JSONArray ja = new JSONArray();
        for(Messages m:list_message){
            JSONObject o=m.jsonMe();
            ja.put(o);
        }
        JSONObject mainObj = new JSONObject();  
        mainObj.put("Messages", ja);
        return mainObj;
    }
     public JSONObject jsonMeUser(){
         JSONArray ja = new JSONArray();
        for(User m:list_user){
            JSONObject o=m.jsonMeUser();
            ja.put(o);
        }
        JSONObject mainObj = new JSONObject();  
        mainObj.put("Users", ja);
        return mainObj;
    }
}
