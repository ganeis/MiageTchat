package start;
import annotation.Secured;
import javax.json.Json;
import javax.json.JsonObject;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.HeaderParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
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
@Path("/Message")
public class Message {
	@Context
	SecurityContext sctx;
        
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response newMsg(@HeaderParam("Message") String msg) {
        String user = sctx.getUserPrincipal().getName();
      Messages p=new Messages();
      if(p.postMsg(msg,user)){
      return Response.status(Response.Status.OK)
                     .entity(jsonMe("Votre message a été envoyer")).build();
      }
 
        return Response.status(Response.Status.EXPECTATION_FAILED)
                                    .entity(jsonMe("Erreur BD"))
                                    .build(); 
  
        
    }
    
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    @Secured
    public Response getMsg(@HeaderParam("MsgId") Integer msgId) {
         // String user = sctx.getUserPrincipal().getName();
      Tchat t=new Tchat();
      int rep=t.getMsg(msgId);
      if(rep==1){
      return Response.status(Response.Status.OK)
                     .entity(jsonMe(t.jsonMe())).build();
      }
      if(rep==2){
      return Response.status(Response.Status.NO_CONTENT)
                     .entity(jsonMe("Pas de nouveau message")).build();
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
