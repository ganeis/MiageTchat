<!DOCTYPE html>
<html lang="en">
  <head>
     <meta charset="utf-8">
    </head>
<body>
<h2>Les ressources disponibles sur cet WebApi</h2>
<div>

    <div>
<article>
<ul>
  <li>Return : http code + les méthodes format json
    <ul>
      <li>Url : <a href="http://localhost:5000/MiageTchat/Ressource" rel="nofollow">http://localhost:5000/MiageTchat/Ressource</a></li>
      <li>Method : <code>GET</code></li>
      <li>Required :</li>
      <li>Success Response :
        <ul>
          <li>Code : <code>200</code></li>
          <li>Content : {
            “Function”: [
            {
            “Lien”:  “http://localhost:5000/MiageTchat/Connexion”,
            “Mot-cle”: “Connexion”,
            “Verbe” :”GET”
            },
            {
            “Lien”:  “http://localhost:5000/MiageTchat/Inscription”,
            “Mot-cle”: “Inscription”,
            “Verbe”:”POST”
            },
            {
            “Lien”:  “http://localhost:5000/MiageTchat/Compte”,
            “Mot-cle”: “GetCompte”,
            “Verbe”: “GET”
            }
            ]
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
<h2><a id="user-content-accès" class="anchor" aria-hidden="true" href="#accès"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Accès</h2>
<h3><a id="user-content-connexion" class="anchor" aria-hidden="true" href="#connexion"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Connexion</h3>
<ul>
  <li>Return : <code>un bearer token ou une http code erreur</code></li>
  <li>Url :<a href="http://localhost:5000/MiageTchat/Connexion" rel="nofollow">http://localhost:5000/MiageTchat/Connexion</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required : <code>Id=[String]</code>  <code>Password=[String]</code></li>
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
      <li>Content : <code>Mot de passe erroné</code></li>
    </ul>
  </li>
</ul>
<h3><a id="user-content-inscription" class="anchor" aria-hidden="true" href="#inscription"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Inscription</h3>
<ul>
  <li>Return : http code</li>
  <li>Url : <a href="http://localhost:5000/MiageTchat/Inscription" rel="nofollow">http://localhost:5000/MiageTchat/Inscription</a></li>
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
      <li>Content : <code>Félicitations, vous êtes bien inscrit</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>ID déja utilisé</code></li>
    </ul>
  </li>
</ul>
<h2><a id="user-content-compte" class="anchor" aria-hidden="true" href="#compte"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Compte</h2>
<h3><a id="user-content-getcompte" class="anchor" aria-hidden="true" href="#getcompte"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>GetCompte</h3>
<ul>
  <li>Return : http code + user data in json</li>
  <li>Url : <a href="http://localhost:5000/MiageTchat/Compte" rel="nofollow">http://localhost:5000/MiageTchat/Compte</a></li>
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
  <li>Url : <a href="http://localhost:5000/MiageTchat/Compte" rel="nofollow">http://localhost:5000/MiageTchat/Compte</a></li>
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
      <li>Content : <code>Compte mise à jour</code></li>
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
  <li>Url : <a href="http://localhost:5000/MiageTchat/Compte" rel="nofollow">http://localhost:5000/MiageTchat/Compte</a></li>
  <li>Method : <code>DELETE</code></li>
  <li>Required :
    <code>Bearer Token</code>
    <code>UserId=[String]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>Votre profil est bien supprimé</code></li>
    </ul>
  </li>
  <li>Error Response 1 :
    <ul>
      <li>Code : <code>400 BAD REQUEST</code></li>
      <li>Content : <code>Aucune modification effectué</code></li>
    </ul>
  </li>
</ul>
<h2><a id="user-content-message" class="anchor" aria-hidden="true" href="#message"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Message</h2>
<h3><a id="user-content-postmessage" class="anchor" aria-hidden="true" href="#postmessage"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>PostMessage</h3>
<ul>
  <li>Description : Pour envoyer un message sur le fil public</li>
  <li>Return : http code</li>
  <li>Url : <a href="http://localhost:5000/MiageTchat/Message" rel="nofollow">http://localhost:5000/MiageTchat/Message</a></li>
  <li>Method : <code>POST</code></li>
  <li>Required :
    <code>Bearer Token</code>
    <code>Message=[String]</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content : <code>Votre message a été envoyer</code></li>
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
  <li>Url : <a href="http://localhost:5000/MiageTchat/Message" rel="nofollow">http://localhost:5000/MiageTchat/Message</a></li>
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
      “Messages”: [
      {
      “UserId”:  “Inkaran”,
      “Message”: “Salut”,
      “Date_Hour”:”27/06/06 21:36”,
      “MsgId”:”33”
      },
      {
      “UserId”:  “Ganeis”,
      “Message”: “Super”,
      “Date_Hour”:”27/06/06 21:37”,
      “MsgId”:”34”
      },
      {
      “UserId”:  “Inkaran”,
      “Message”: “Sava”,
      “Date_Hour”:”27/06/06 21:39”,
      “MsgId”:”35”
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
  <li>Url : <a href="http://localhost:5000/MiageTchat/Utilisateurs" rel="nofollow">http://localhost:5000/MiageTchat/Utilisateurs</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required :
    <code>Bearer Token</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content :
        {
        “Users”: [
        {
        “UserId”:  “Inkaran”
        <p>},
          {
          “UserId”:  “Ganeis”</p>
        <p>},
          {
          “UserId”:  “Kevin”</p>
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
  <li>Url : <a href="http://localhost:5000/MiageTchat/Utilisateurs/Online" rel="nofollow">http://localhost:5000/MiageTchat/Utilisateurs/Online</a></li>
  <li>Method : <code>GET</code></li>
  <li>Required :
    <code>Bearer Token</code></li>
  <li>Success Response :
    <ul>
      <li>Code : <code>200</code></li>
      <li>Content :
        {
        “Users”: [
        {
        “UserId”:  “Inkaran”
        <p>},
          {
          “UserId”:  “Ganeis”</p>
        <p>},
          {
          “UserId”:  “Kevin”</p>
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
