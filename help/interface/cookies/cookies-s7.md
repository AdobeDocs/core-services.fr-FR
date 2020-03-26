---
description: Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser du contenu multimédia dynamique vers le navigateur.
keywords: cookies;privacy
seo-description: Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser du contenu multimédia dynamique vers le navigateur.
seo-title: Cookies Scene7
solution: Marketing Cloud,Analytics,Adobe Target,Adobe Social
title: Cookies Scene7
uuid: f9b9d13a-17e5-4139-8c84-6fe5d22c4196
translation-type: tm+mt
source-git-commit: f7ec8bf6087a18be41c9efbf05f60e6cfd24e566

---


# Cookies Scene7{#scene-cookies}

Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser du contenu multimédia dynamique vers le navigateur.

Scene7 stocke des informations en local pour certaines anciennes visionneuses Flash AS2.

Pour les visionneuses AS2, les cookies :

* Effectuez le suivi de l’état de session d’un utilisateur, tel que la page et l’image affichées, le niveau de zoom actuel, etc.
* Déterminez combien de temps cela a duré depuis la session précédente de l’utilisateur. Le lecteur utilise ces informations pour décider de poursuivre une session précédente ou d’en  une nouvelle. Ces informations sont également envoyées aux serveurs Scene7, mais elles ne sont pas utilisées.

Pour la visionneuse de catalogue électronique Flash AS2, les cookies :

* Stocker le contenu généré par l’utilisateur (notamment le contenu saisi par l’utilisateur dans la fonction &quot;pense-bête&quot; de la visionneuse de catalogue électronique). Ce contenu est restauré lorsque l’utilisateur reprend une session.
* Lorsque l’utilisateur lance un courrier électronique pour partager l’catalogue avec un autre utilisateur, le contenu des notes de bas de page de la deuxième puce des visionneuses AS2 est copié sur nos serveurs afin de le fournir au. Lorsque le lance la session du lecteur, le contenu des notes de bas de page est récupéré du serveur et copié dans un cookie. Cette fonction est peu utilisée, elle n’expire donc pas et le contenu obsolète n’est pas supprimé. Actuellement, il persiste indéfiniment sur les serveurs.

Les nouvelles visionneuses AS3 n’implémentent pas la persistance de session.

**Nom du cookie : VatLogin.jsp**

| Attribut | Description |
|---|---|
| Informations stockées | Définit le cookie de session. AuthFilter intégré dans IPS ImageServer (IS, IR, mais aussi les fichiers SWF/habillages et les  vidéo) utilise le cookie pour l’autorisation d’accès. S’il est présent, il permet aux requêtes HTTP de passer. Sinon, elle renvoie non autorisé. |
| Expiration | Ce cookie est un cookie de session. La durée d’expiration de session actuelle est définie sur 45 minutes dans le fichier [!DNL web.xml] de Scene7 IPS. |

**Nom du cookie : s7js.flyout.InfoMessage.displayed`assetId`.state**

<table id="table_6835D64C5D464A049F576621F2BE3FAD"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> Informations stockées </td> 
   <td colname="col2"> <p>&lt;assetId&gt; est le nom de la ressource sur laquelle travaille le lecteur. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> Expiration </td> 
   <td colname="col2"> Ce cookie est un cookie de session qui expire à la fermeture du navigateur. </td> 
  </tr> 
 </tbody> 
</table>

**Nom du cookie : s7js.flyout.InfoMessage.displayed`assetId`_idx`id`.ant**

Les cookies de navigateur sont utilisés par les anciennes visionneuses DHTML pour stocker des informations d’état et des données de notes de garde. Ils sont également utilisés par la fenêtre déroulante DHTML à plusieurs écrans pour rendre l’indicateur de message spécifique à la session.

<table id="table_8F6CC83D32D54BEE99884318AD126C98"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> Informations stockées </td> 
   <td colname="col2"> <p> </p> <p> &lt;assetId&gt; est le nom de la ressource sur laquelle travaille le lecteur et &lt;id&gt; l’index de pense-bête basé sur 0. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> Expiration </td> 
   <td colname="col2"> Ce cookie est un cookie de session qui expire à la fermeture du navigateur. </td> 
  </tr> 
 </tbody> 
</table>

