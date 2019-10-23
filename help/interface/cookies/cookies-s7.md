---
description: Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser du contenu multimédia dynamique vers le navigateur.
keywords: cookies;confidentialité
seo-description: Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser du contenu multimédia dynamique vers le navigateur.
seo-title: Cookies Scene7
solution: Experience Cloud,Analytics,Target,Social
title: Cookies Scene7
uuid: f9b9d13a-17e5-4139-8c84-6fe5d22c4196
translation-type: tm+mt
source-git-commit: 012283d79bda42f9dabb20b25903927b075f6d54

---


# Cookies Scene7{#scene-cookies}

Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser du contenu multimédia dynamique vers le navigateur.

Scene7 stocke les informations au niveau local pour certaines anciennes visionneuses AS2 basées sur Flash.

Pour les visionneuses AS2, les cookies :

* Effectuent le suivi de l’état de la session d’un utilisateur, comme la page active et l’image affichée, le niveau de zoom utilisé, etc.
* Déterminent le temps écoulé depuis la dernière session de l’utilisateur. La visionneuse utilise ces informations pour déterminer s’il faut poursuivre une session ou en démarrer une nouvelle. Ces informations sont également envoyées aux serveurs Scene7, mais elles ne sont pas utilisées.

Pour la visionneuse de catalogue électronique Flash AS2, les cookies :

* Stockent le contenu généré par l’utilisateur (en particulier le contenu saisi par l’utilisateur au sein de la fonctionnalité « Pense-bête » de la visionneuse de catalogue électronique). Ce contenu est restauré lorsque l’utilisateur reprend une session.
* Lorsque l’utilisateur rédige un courrier électronique pour partager le catalogue électronique avec un autre utilisateur, le contenu des pense-bêtes de la deuxième puce de la visionneuse AS2 est copié sur nos serveurs pour le fournir au destinataire. Lorsque le destinataire démarre la session, le contenu des pense-bêtes est récupéré à partir du serveur et copié sur un cookie. Comme cette fonctionnalité est peu utilisée, il n’expire pas et le contenu obsolète n’est pas supprimé. Pour le moment, il reste sur les serveurs indéfiniment.

Les nouvelles visionneuses AS3 ne mettent pas en œuvre la persistance de session.

**Nom du cookie : VatLogin.jsp**

| Attribut | Description |
|---|---|
| Informations stockées | Définit le cookie de la session. Le composant AuthFilter intégré dans IPS ImageServer (IS, IR, ainsi que les contextes vidéo et SWFs/skins) utilise le cookie pour l’autorisation d’accès. S’il est présent, il autorise le passage des demandes HTTP. Dans le cas contraire, il renvoie « non autorisé ». |
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
   <td colname="col2"> <p>&lt;assetId&gt; est le nom de l’élément actuellement utilisé par la visionneuse. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> Expiration </td> 
   <td colname="col2"> Ce cookie est un cookie de session qui expire à la fermeture du navigateur. </td> 
  </tr> 
 </tbody> 
</table>

**Nom du cookie : s7js.flyout.InfoMessage.displayed`assetId`_idx`id`.ant**

Les cookies de navigateur sont utilisés par les anciennes visionneuses DHTML pour stocker des informations d’état et des données de pense-bête. Ils sont également utilisés par l’affichage déroulant DHTML à écrans multiples pour rendre l’indicateur de message spécifique à la session.

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
   <td colname="col2"> <p> </p> <p> &lt;assetId&gt; est le nom de l’élément actuellement utilisé par la visionneuse et &lt;id&gt; est l’index de pense-bête de base 0. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> Expiration </td> 
   <td colname="col2"> Ce cookie est un cookie de session qui expire à la fermeture du navigateur. </td> 
  </tr> 
 </tbody> 
</table>

