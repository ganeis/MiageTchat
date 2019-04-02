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
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import model.Messages;
import model.Tchat;

/**
 * REST Web Service
 *
 * @author ganeistan
 */
@Path("/Utilisateurs")
public class Utilisateurs {

	@Context
	SecurityContext sctx;
        
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response getUser() {
        String user = sctx.getUserPrincipal().getName();
      Tchat t=new Tchat();
      
      if(t.getUser()){
      return Response.status(Response.Status.OK)
                     .entity(t.jsonMeUser().toString()).build();
      }
 
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity(jsonMe("Erreur BD"))
                                    .build(); 
  
        
    }
    
    @GET
    @Path("/Online")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response getUserOn() {
         // String user = sctx.getUserPrincipal().getName();
         String user = sctx.getUserPrincipal().getName();
      Tchat t=new Tchat();
      
      if(t.getUserOn()){
      return Response.status(Response.Status.OK)
                     .entity(t.jsonMeUser().toString()).build();
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
    

  
}
