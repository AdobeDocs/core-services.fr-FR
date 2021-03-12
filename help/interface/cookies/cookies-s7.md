---
description: Comment Adobe Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser des médias dynamiques sur le navigateur.
keywords: cookies;confidentialité
solution: Experience Cloud,Analytics,Target
title: 'Cookies Scene7 '
uuid: f9b9d13a-17e5-4139-8c84-6fe5d22c4196
feature: Cookies
topic: Administration
role: Administrateur
level: Expérimenté
translation-type: ht
source-git-commit: 61d60273e933c637dfe4400da78257e1c80015b3
workflow-type: ht
source-wordcount: '417'
ht-degree: 100%

---


# Cookies Scene7 {#scene-cookies}

Scene7 utilise des cookies pour stocker des informations utiles qui servent à diffuser du contenu multimédia dynamique vers le navigateur.

Scene7 stocke des informations en local pour certaines visionneuses Flash AS2 plus anciennes.

Pour les visionneuses AS2, les cookies :

* assurent le suivi de l’état de session d’un utilisateur, tel que la page et l’image actuellement consultées, le niveau de zoom actuel, etc. ;
* déterminent le temps écoulé depuis la session précédente de l’utilisateur. La visionneuse utilise ces informations pour décider s’il convient de poursuivre une session précédente ou d’en débuter une nouvelle. Ces informations sont également envoyées aux serveurs Scene7, mais elles ne sont pas utilisées.

Pour la visionneuse de catalogue électronique Flash AS2, les cookies :

* stockent le contenu généré par l’utilisateur (notamment le contenu saisi par l’utilisateur dans la fonction « pense-bêtes » de la visionneuse de catalogue électronique). Ce contenu est restauré lorsque l’utilisateur reprend une session.
* lorsque l’utilisateur envoie un e-mail pour partager le catalogue électronique avec un autre utilisateur, le contenu des pense-bêtes provenant de la deuxième puce des visionneuses AS2 est copié sur nos serveurs afin de le fournir au destinataire. Lorsque le destinataire lance la session de la visionneuse, le contenu des pense-bêtes est récupéré sur le serveur et copié dans un cookie. Cette fonction est peu utilisée, de sorte qu’elle n’expire pas et que le contenu obsolète n’est pas supprimé. Actuellement, celle-ci persiste indéfiniment sur les serveurs.

Les nouvelles visionneuses AS3 ne mettent pas en œuvre la persistance de session.

**Nom du cookie : VatLogin.jsp**

| Attribut | Description |
|---|---|
| Informations stockées | Définit le cookie de session. Le composant AuthFilter intégré dans IPS ImageServer (IS, IR, ainsi que les fichiers SWF/skins et les contextes vidéo) utilise le cookie pour l’autorisation d’accès. S’il est présent, il permet aux requêtes HTTP de passer. Sinon, il renvoie « non autorisé ». |
| Expiration | Ce cookie est un cookie de session. La durée d’expiration de session actuelle est définie sur 45 minutes dans le fichier [!DNL web.xml] de Scene7 IPS. |

**Nom du cookie : s7js.flyout.InfoMessage.displayed `assetId`.state**

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
   <td colname="col2"> <p>&lt;assetId&gt; correspond au nom de la ressource utilisée par la visionneuse. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> Expiration </td> 
   <td colname="col2"> Ce cookie est un cookie de session qui expire à la fermeture du navigateur. </td> 
  </tr> 
 </tbody> 
</table>

**Nom du cookie : s7js.flyout.InfoMessage.displayed`assetId`_idx`id`.ant**

Les cookies de navigateur sont utilisés par les anciennes visionneuses DHTML pour stocker des informations d’état et des données de pense-bête. Ils sont également utilisés par la fenêtre déroulante DHTML à plusieurs écrans pour rendre l’indicateur de message spécifique à la session.

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
   <td colname="col2"> <p> </p> <p> &lt;assetId&gt; correspond au nom de l’élément actuellement utilisé par la visionneuse et &lt;id&gt; est l’index de pense-bête de base 0. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> Expiration </td> 
   <td colname="col2"> Ce cookie est un cookie de session qui expire à la fermeture du navigateur. </td> 
  </tr> 
 </tbody> 
</table>

