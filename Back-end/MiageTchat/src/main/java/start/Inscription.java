package start;
import DAO.DataBaseConnection;
import javax.ejb.Local;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import annotation.Secured;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.json.Json;
import javax.json.JsonObject;
import javax.ws.rs.Consumes;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.core.MediaType;
import model.User;
/**
 * REST Web Service
 *
 * @author ganeistan
 */
@Local 
@Path("/Inscription")
public class Inscription {
	   @Context
	   SecurityContext sctx;
	 
	     
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public Response creeCompte(@HeaderParam("User_Id") String User_Id,@HeaderParam("First_Name") String First_Name,@HeaderParam("Last_Name") String Last_Name,@HeaderParam("Birth_Year") Integer Birth_Year,@HeaderParam("Gender") String Gender,@HeaderParam("Email") String Email,@HeaderParam("Password") String Password) {
    	if(!verifLogin(User_Id)){
             return Response.status(Response.Status.BAD_REQUEST)
                                    .entity(jsonMe("Utilisateur existe déja"))
                                    .build(); 
        }
        User u=new User(User_Id,First_Name,Last_Name,Birth_Year,Gender,Email,Password,true);
        if(u.newCompte()){
             return Response.status(Response.Status.CREATED)
                     .entity(jsonMe("Compte crée")).build();
        }
  
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity(jsonMe("Erreur BD"))
                                    .build(); 
  
    }
    
     public boolean verifLogin(String a) {
		Connection conn=DataBaseConnection.ConnexionBD();
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
     
     public String jsonMe(String msg){
                                 JsonObject jsonObject = Json.createObjectBuilder()
                .add("Message", msg)
                .build();
                                 return jsonObject.toString();
     }
    

  
}