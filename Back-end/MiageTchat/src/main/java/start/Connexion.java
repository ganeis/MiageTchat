package start;
import javax.ejb.Local;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import annotation.Secured;

@Local 
@Path("/home")
public class Connexion {
	   @Context
	   SecurityContext sctx;
	 
	     
    @GET
    @Secured 
    @Path("{name}")
    public Response getMsg(@PathParam("name") String name) {
    	  
        String output = "Welcomehome   : " + name ;
  
        return Response.status(200).entity(output).build();
  
    }
    

  
}