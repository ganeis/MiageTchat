/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author ganeistan
 */
public class DataBaseConnection {
    
    Connection conn=null;
	public static Connection ConnexionBD() {
		
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("avant Connexion à la base de données de MiageTchat");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:8889/MiageTchat","root","root");
            System.out.println("Connexion à la base de données de MiageTchat");
            return con;
            
            // JOptionPane.showMessageDialog(null, e);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataBaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
              
		
		 }
}

