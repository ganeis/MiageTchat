/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author ganeistan
 */
public class Message {
    private int MsgId;
    private String Text;
    private Date Date_Hour;
    private String Author;
    
    
    public Message(int m,String t,Date d,String a){
        MsgId=m;
        Text=t;
        Date_Hour=d;
        Author=a;
    }
    
}
