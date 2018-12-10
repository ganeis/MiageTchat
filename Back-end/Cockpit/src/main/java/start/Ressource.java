/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package start;

import javax.json.Json;
import javax.json.JsonObject;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * REST Web Service
 *
 * @author ganeistan
 */
@Path("/Ressource")
public class Ressource {

    @Context
	SecurityContext sctx;

    /**
     * Creates a new instance of Ressource
     */
    public Ressource() {
    }

    /**
     * Retrieves representation of an instance of start.Ressource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getResources() {
        JSONArray ja = new JSONArray();
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Connexion","Connexion","GET"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Inscription","Inscription","POST"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Compte","GetCompte","GET"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Compte","UpdateCompte","PUT"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Compte","DeleteCompte","DELETE"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Message","PostMessage","POST"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Message","GetMessage","GET"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs","GetAllUsers","GET"));
        ja.put(myRessource("http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs/Online","GetUsersOnline","GET"));
        
        JSONObject mainObj = new JSONObject();  
        mainObj.put("Function", ja);
        //TODO return proper representation object
        return Response.status(Response.Status.OK)
                     .entity(mainObj.toString()).build();
    }

    /**
     * PUT method for updating or creating an instance of Ressource
     * @param content representation for the resource
     */
    @PUT
    @Consumes(MediaType.APPLICATION_XML)
    public void putXml(String content) {
    }
    
    public JSONObject myRessource(String lien,String mot,String verbe){
                         JSONObject jo = new JSONObject();
                jo.put("Lien", lien);
                                        jo.put("Mot-clé", mot);
                                         jo.put("Verbe", verbe);
                                        
          
                                 return jo;
    }
}
