/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import DAO.DataBaseConnection;
import java.sql.Connection;
import java.util.Calendar;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.json.Json;
import javax.json.JsonObject;

/**
 *
 * @author ganeistan
 */
public class Messages {
    private int MsgId;
    private String Text;
    private Date Date_Hour;
    private String Author;

    public Messages() {
    }
    
   
    
    public Messages(int m,String t,Date d,String a){
        MsgId=m;
        Text=t;
        Date_Hour=d;//new java.sql.Date(Calendar.getInstance().getTime().getTime());
        Author=a;
    }
    
    public int getMax(){
        int rep=0;
        Connection conn=DataBaseConnection.ConnexionBD();
        try {PreparedStatement ps=conn.prepareStatement("SELECT MAX(MsgId) FROM Tchat");
		ResultSet rs=ps.executeQuery();
                while(rs.next()){
                    rep=rs.getInt(1);
                    ps.close();
                    return rep;
                }
		ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return rep;
}
        return rep;
    }
    public boolean postMsg(String msg,String author){
         Connection conn=DataBaseConnection.ConnexionBD();
		try {PreparedStatement ps=conn.prepareStatement("insert into Tchat (Text,Author) values (?,?)");
		ps.setString(1, msg);
		ps.setString(2,author);
		ps.executeUpdate();
		ps.close();

		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
                return false;
}
      return true; 
    }

    public int getMsgId() {
        return MsgId;
    }

    public void setMsgId(int MsgId) {
        this.MsgId = MsgId;
    }

    public String getText() {
        return Text;
    }

    public void setText(String Text) {
        this.Text = Text;
    }

    public Date getDate_Hour() {
        return Date_Hour;
    }

    public void setDate_Hour(Date Date_Hour) {
        this.Date_Hour = Date_Hour;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String Author) {
        this.Author = Author;
    }

  public JsonObject jsonMe(){
                                 JsonObject jsonObject = Json.createObjectBuilder()
                .add("User_Id", Author)
                                         .add("Message", Text)
                                         .add("Date_Hour", Date_Hour.toString())
                                         .add("MsgId", MsgId)
                .build();
                                 return jsonObject;
     }
}
