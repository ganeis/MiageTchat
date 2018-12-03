package start;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;
/**
 * REST Web Service
 *
 * @author ganeistan
 */
@ApplicationPath("api")
public class Appli extends Application {

   
    @Override
    public Set<Class<?>> getClasses() {
        HashSet<Class<?>> resources = new HashSet<Class<?>>();
        addRestResourceClasses(resources);
        return resources;
    }
    
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(DAO.service.TchatFacadeREST.class);
        resources.add(DAO.service.UserFacadeREST.class);
        resources.add(filtre.AuthenticationFilter.class);
        resources.add(start.Compte.class);
        resources.add(start.Connexion.class);
        resources.add(start.Inscription.class);
        resources.add(start.Message.class);
        resources.add(start.Ressource.class);
        resources.add(start.Utilisateurs.class);
    }
    
}
