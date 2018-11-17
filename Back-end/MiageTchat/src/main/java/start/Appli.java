package start;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

import filtre.AuthenticationFilter;

@ApplicationPath("api")
public class Appli extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        HashSet<Class<?>> classes = new HashSet<Class<?>>();
        classes.add(AuthenticationFilter.class);
        classes.add(Connexion.class);
        classes.add(HelloWorldService.class);
        return classes;
    }
}
