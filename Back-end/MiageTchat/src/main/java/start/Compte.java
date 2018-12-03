/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package start;

import annotation.Secured;
import javax.json.Json;
import javax.json.JsonObject;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import model.User;

/**
 * REST Web Service
 *
 * @author ganeistan
 */
@Secured
@Path("/Compte")
public class Compte {
    
  @Context
	   SecurityContext sctx;
	      
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response getCompte() {
      String user = sctx.getUserPrincipal().getName();
      User p=new User();
      if(p.GetCompte(user)){
      return Response.status(Response.Status.OK)
                     .entity(p.jsonMe().toString()).build();
      }
 
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity(jsonMe("Erreur BD"))
                                    .build(); 
  
    }
    /**
     * Creates a new instance of GenericResource
     */
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response updateCompte(@HeaderParam("User_Id") String User_Id,@HeaderParam("First_Name") String First_Name,@HeaderParam("Last_Name") String Last_Name,@HeaderParam("Birth_Year") Integer Birth_Year,@HeaderParam("Gender") String Gender,@HeaderParam("Email") String Email,@HeaderParam("Password") String Password) {
    	String user = sctx.getUserPrincipal().getName();
      User p=new User();
      p.setFirst_Name(First_Name);
      p.setLast_Name(Last_Name);
      p.setBirth_Year(Birth_Year);
      p.setGender(Gender);
      p.setMail(Email);
      p.setPassword(Password);
      if(p.UpdateCompte(user)){
      return Response.status(Response.Status.OK)
                     .entity(jsonMe("Compte mise à jour")).build();
      }
 
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity(jsonMe("Erreur BD"))
                                    .build(); 
  
    }
    public String jsonMe(String msg){
                                 JsonObject jsonObject = Json.createObjectBuilder()
                .add("Message", msg)
                .build();
                                 return jsonObject.toString();
     }
    
    @DELETE
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response deleteCompte(@HeaderParam("User_Id") String user) {
     //String user = sctx.getUserPrincipal().getName();
      User p=new User();
      if(p.DeleteCompte(user)){
      return Response.status(Response.Status.OK)
                     .entity(jsonMe("Compte "+user+" est bien supprimé")).build();
      }
 
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity(jsonMe("Erreur BD"))
                                    .build(); 
  
    }
}
