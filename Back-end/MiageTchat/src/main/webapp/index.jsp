<!DOCTYPE html>
<html lang="en">
  <head>
     <meta charset="utf-8">
    </head>
<body>
<h2>Les ressources disponibles sur cet WebApi</h2>
<h3>Les services offerts sont disponibles en appelant http://miagetchat.ovh:8080/MiageTchat/webapi/Ressource </h3>
<div>

    <div>
<article>
<ul>
  <li>Return : http code + les mÈthodes format json
    <ul>
      <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Ressource" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Ressource</a></li>
      <li>Method : <code>GET</code></li>
      <li>Required :</li>
      <li>Success Response :
        <ul>
          <li>Code : <code>200</code></li>
          <li>Content : {
            ú{"Function":[
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Connexion","Mot-clÈ":"Connexion","Verbe":"GET"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Connexion/Off","Mot-clÈ":"DÈconnexion","Verbe":"GET"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Inscription","Mot-clÈ":"Inscription","Verbe":"POST"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Compte","Mot-clÈ":"GetCompte","Verbe":"GET"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Compte","Mot-clÈ":"UpdateCompte","Verbe":"POST"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Compte","Mot-clÈ":"DeleteCompte","Verbe":"DELETE"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Message","Mot-clÈ":"PostMessage","Verbe":"PUT"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Message","Mot-clÈ":"GetMessage","Verbe":"GET"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs","Mot-clÈ":"GetAllUsers","Verbe":"GET"},
            {"Lien":"http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs/Online","Mot-clÈ":"GetUsersOnline","Verbe":"GET"}]}
            }</li>
        </ul>
      </li>
      <li>Error Response 1 :
        <ul>
          <li>Code : <code>400 BAD REQUEST</code></li>
          <li>Content : <code>Erreur</code></li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
<h2><a id="user-content-acc√®s" class="anchor" aria-hidden="true" href="#accËs"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>AccËs</h2>
<h3><a id="user-content-connexion" class="anchor" aria-hidden="true" href="#connexion"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Connexion</h3>
<ul>
  <li>Return : <code>un bearer token ou une http code erreur</code></li>
  <li>Url :<a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Connexion" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Connexion</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required : <code>UserId=[String]</code>  <code>Password=[String]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>Bearer Token</code>
        <code>MsgId=[Int]</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>404 NOT FOUND</code></li>
      <li>Content : <code>L'utilisateur n'existe pas</code></li>
    </ul>
  </li>
  <li>Error Response 2 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>Mot de passe erron√©</code></li>
    </ul>
  </li>
</ul>
<h3><a id="user-content-inscription" class="anchor" aria-hidden="true" href="#inscription"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Inscription</h3>
<ul>
  <li>Return : http code</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Inscription" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Inscription</a></li>
  <li>Method : <code>POST</code></li>
  <li>Required :
    <code>UserId=[String]</code>
    <code>First_Name=[String]</code>
    <code>Last_Name=[String]</code>
    <code>Birth_Year=[String]</code>
    <code>Gender=[String]</code>
    <code>Email=[String]</code>
    <code>Password=[String]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>FÈlicitations, vous Ètes bien inscrit</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>ID dÈja utilisÈ</code></li>
    </ul>
  </li>
</ul>
<h2><a id="user-content-compte" class="anchor" aria-hidden="true" href="#compte"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Compte</h2>
<h3><a id="user-content-getcompte" class="anchor" aria-hidden="true" href="#getcompte"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>GetCompte</h3>
<ul>
  <li>Return : http code + user data in json</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Compte" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Compte</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required :
    <code>Bearer Token</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>user</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>401 Unauthorized</code></li>
    </ul>
  </li>
</ul>
<h3><a id="user-content-updatecompte" class="anchor" aria-hidden="true" href="#updatecompte"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>UpdateCompte</h3>
<ul>
  <li>Return : http code + message</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Compte" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Compte</a></li>
  <li>Method : <code>PUT</code></li>
  <li>Required :
    <code>Bearer Token</code>
    <code>UserId=[String]</code>
    <code>First_Name=[String]</code>
    <code>Last_Name=[String]</code>
    <code>Birth_date=[String]</code>
    <code>Gender=[String]</code>
    <code>Email=[String]</code>
    <code>Password=[String]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>Compte mise ‡ jour</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>401 Unauthorized</code></li>
    </ul>
  </li>
</ul>
<h3><a id="user-content-deletecompte" class="anchor" aria-hidden="true" href="#deletecompte"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>DeleteCompte</h3>
<ul>
  <li>Return : http code + liste des photos</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Compte" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Compte</a></li>
  <li>Method : <code>DELETE</code></li>
  <li>Required :
    <code>Bearer Token</code>
    <code>UserId=[String]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>Votre profil est bien supprim√©</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>Aucune modification effectu√©</code></li>
    </ul>
  </li>
</ul>
<h2><a id="user-content-message" class="anchor" aria-hidden="true" href="#message"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Message</h2>
<h3><a id="user-content-postmessage" class="anchor" aria-hidden="true" href="#postmessage"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>PostMessage</h3>
<ul>
  <li>Description : Pour envoyer un message sur le fil public</li>
  <li>Return : http code</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Message" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Message</a></li>
  <li>Method : <code>POST</code></li>
  <li>Required :
    <code>Bearer Token</code>
    <code>Message=[String]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>Votre message a ÈtÈ envoyer</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>Erreur</code></li>
    </ul>
  </li>
</ul>
<h3><a id="user-content-getmessage" class="anchor" aria-hidden="true" href="#getmessage"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>GetMessage</h3>
<ul>
  <li>Return : http code + message</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Message" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Message</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required :
    <code>Bearer Token</code>
    <code>MsgId=[Int]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content :</li>
    </ul>
    <p>{
      Messagesù: [
      {
      UserIdù:  úInkaranù,
      úMessageù: úSalutù,
      úDate_Hourù:ù27/06/06 21:36ù,
      úMsgIdù:ù33ù
      },
      {
      úUserIdù:  úGaneisù,
      úMessageù: úSuperù,
      úDate_Hourù:ù27/06/06 21:37ù,
      úMsgIdù:ù34
      },
      {
      úUserIdù:  úInkaranù,
      úMessageù: úSavaù,
      úDate_Hour:ù27/06/06 21:39ù,
      úMsgId‚Äù:ù35ù
      }
      ]
      }</p>
  </li>
  <li>Success Response :
    <ul>
      <li>Code : <code>201</code></li>
      <li>Content : <code>Pas de nouveau message</code></li>
      <li>Error Response 1 :
        <ul>
          <li>Code : <code>400 BAD REQUEST</code></li>
          <li>Content : <code>Erreur</code></li>
        </ul>
      </li>
    </ul>
  </li>
</ul>
<h2><a id="user-content-acceuil" class="anchor" aria-hidden="true" href="#acceuil"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Acceuil</h2>
<h3><a id="user-content-getallusers" class="anchor" aria-hidden="true" href="#getallusers"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>GetAllUsers</h3>
<ul>
  <li>Return : http code + tous users</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required :
    <code>Bearer Token</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content :
        {
        úUsersù: [
        {
        úUserId:  úInkaranù
        <p>},
          {
          úUserIdù:  Ganeisù</p>
        <p>},
          {
          úUserIdù:  úKevinù</p>
        <p>}
          ]
          }</p>
      </li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>Erreur</code></li>
    </ul>
  </li>
</ul>
<h3><a id="user-content-getusersonline" class="anchor" aria-hidden="true" href="#getusersonline"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>GetUsersOnline</h3>
<ul>
  <li>Return : http code + tous users online</li>
  <li>Url : <a href="http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs/Online" rel="nofollow">http://miagetchat.ovh:8080/MiageTchat/webapi/Utilisateurs/Online</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required :
    <code>Bearer Token</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content :
        {
        úUsersù: [
        {
        úUserIdù:  úInkaranù
        <p>},
          {
          úUserIdù:  úGaneisù</p>
        <p>},
          {
          úUserIdù:  úKevin</p>
        <p>}
          ]
          }</p>
      </li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>Erreur</code></li>
    </ul>
  </li>
</ul>
</article>
  </div>

    </div>
</body>
</html>
