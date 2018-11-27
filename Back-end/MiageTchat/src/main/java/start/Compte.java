/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package start;

import annotation.Secured;
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
  
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity("Erreur BD")
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
    	
  
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity("Erreur BD")
                                    .build(); 
  
    }
    
    @DELETE
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response deleteCompte() {
    	
  
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity("Erreur BD")
                                    .build(); 
  
    }
}
