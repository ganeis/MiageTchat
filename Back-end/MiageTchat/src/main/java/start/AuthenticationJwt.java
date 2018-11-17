package start;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

//import com.madx.auth.credentials.Credentials;
import jwt.JavaWebTokenUtility;

@Path("auth")
@Stateless( name = "RestAuthResource", mappedName = "ejb/RestAuthResource" )
public class AuthenticationJwt {

	@Context
	SecurityContext sctx;

	/**
	 * http://localhost:8080/nights-web/rest-api/auth/auth
	 * Si aspetta:
	 * {  "username": "admin", "password": "123456" }
	 * @param credentials
	 * @return
	 */
	@GET
	@Path("/auth")
	public Response authenticateUser(@PathParam("username") String username,@PathParam("password") String password) {

		try {
			//String username = credentials.getUsername();
			//String password = credentials.getPassword();
			// Authenticate the user using the credentials provided
			authenticate(username, password);

			// Issue a token for the user
			String token = issueToken(username);

			return Response.ok(username + " authenticated")
					.header("jwt", token)
					.build();
		} catch (Exception e) {
			return Response.status(Response.Status.UNAUTHORIZED).build();
		}      
	}

	private void authenticate(String username, String password) throws Exception {
		// Authenticate against a database, LDAP, file or whatever
		// Throw an Exception if the credentials are invalid
		// TODO implement logic to verify its credentials
		System.out.println(username);
	}

	/**
	 * Issue a token (can be a random String persisted to a database or a JWT token)
	 * The issued token must be associated to a user
	 * Return the issued token
	 * @param username
	 * @return
	 */
	private String issueToken(String username) {
		return JavaWebTokenUtility.buildJWT(username);
	}

}