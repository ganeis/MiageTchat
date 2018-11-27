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
        resources.add(start.Connexion.class);
        resources.add(start.Compte.class);
        resources.add(start.Inscription.class);
        resources.add(start.Utilisateurs.class);
        resources.add(start.Message.class);
    }
    
}
