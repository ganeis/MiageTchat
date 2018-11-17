/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author ganeistan
 */
public class Tchat {
    private String Name;
    private ArrayList<User> list_user;
    private ArrayList<Message> list_message;
    
    public Tchat(String n){
        Name=n;
    }
    
    public ArrayList<Message> getMessage(int i){
        ArrayList<Message> rep = new ArrayList<Message>();
        
        
        return rep;
    }
    
    public boolean post_Message(Message m){
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
}
