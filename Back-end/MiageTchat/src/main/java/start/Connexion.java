package start;

import DAO.DataBaseConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.core.MediaType;

//import com.madx.auth.credentials.Credentials;
import jwt.JavaWebTokenUtility;
/**
 * REST Web Service
 *
 * @author ganeistan
 */
@Path("/Connexion")
@Stateless( name = "RestAuthResource", mappedName = "ejb/RestAuthResource" )
public class Connexion {

	@Context
	SecurityContext sctx;
        
	/**
	 * http://localhost:8080/nights-web/rest-api/auth/auth
	 * Si aspetta:
	 * {  "username": "admin", "password": "123456" }
	 * @param credentials
	 * @return
	 */
	@GET
        @Produces(MediaType.APPLICATION_JSON)
        @Consumes(MediaType.APPLICATION_JSON)
	public Response authenticateUser(@HeaderParam("username") String username,@HeaderParam("password") String password) {
             
		try {
                       System.out.print(username);
			//String username = credentials.getUsername();
			//String password = credentials.getPassword();
			// Authenticate the user using the credentials provided
			if(!authenticate(username, password)){
                            
                            return Response.status(Response.Status.NOT_ACCEPTABLE)
                                    .entity("Mot de passe et/ou login incorrect")
                                    .build();
                        };

			// Issue a token for the user
			String token = issueToken(username);

			return Response.ok(username + " authenticated")
					.header("jwt", token)
					.build();
		} catch (Exception e) {
			return Response.status(Response.Status.UNAUTHORIZED).build();
		}      
	}

	private boolean authenticate(String username, String password) throws Exception {
		boolean rep=false;
         //   if(verifLogin(username)){
          System.out.print(username+"2");
                   if(verifPassword(password,username)) {
                       System.out.println("OK");
                       rep=true;
                       return rep;
                   }
              //  }
		System.out.println(username);
                return rep;
	}

	/**
	 * Issue a token (can be a random String persisted to a database or a JWT token)
	 * The issued token must be associated to a user
	 * Return the issued token
	 * @param username
	 * @return
	 */
	private String issueToken(String username) {
		return JavaWebTokenUtility.buildJWT(username);
	}
        public boolean verifLogin(String a) {
                DataBaseConnection bd=new DataBaseConnection();
		Connection conn=bd.ConnexionBD();
		boolean rep=true;
		try {
		PreparedStatement ps=conn.prepareStatement("SELECT `User_Id` FROM `User`");
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			if(rs.getString(1).equals(a)){
				//MenuLoginController.setError(err,"");
				return false;
				
			};
		}ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//MenuLoginController.setError(err,"Nom utilisateur erroné");
		return rep;
}
        public static boolean verifPassword(String a,String user) throws SQLException, ClassNotFoundException{
             System.out.print(user);
		Connection conn=DataBaseConnection.ConnexionBD();
                //Class.forName("com.mysql.jdbc.Driver");
                //Connection conn=DriverManager.getConnection("jdbc:mysql://mysql-miagetchat.alwaysdata.net/miagetchat_miagetchat","171419","azerty");

		boolean rep=false;
		try {
		PreparedStatement ps=conn.prepareStatement("SELECT `Password` FROM `User`WHERE User_Id='"+user+"'");
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			if(rs.getString(1).equals(a)){
				updateStatus(user);
				return true;
				
			};
		}ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//MenuLoginController.setError(err,"Mot de passe erroné");
		return rep;
}
        public static void updateStatus(String user) throws SQLException, ClassNotFoundException{
             System.out.print(user);
		Connection conn=DataBaseConnection.ConnexionBD();
                
		try{
		PreparedStatement ps=conn.prepareStatement("UPDATE `User` SET `Status`='"+true+"'WHERE User_Id='"+user+"'");
		ps.executeUpdate();
	
		ps.close();
		} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
}
		
}

}