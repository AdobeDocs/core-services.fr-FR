---
description: Découvrez comment Adobe Target utilise des cookies pour offrir aux opérateurs de sites web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.
keywords: cookies;privacy
solution: Experience Cloud,Analytics,Target,Social
title: 'Utilisation des cookies Adobe Target '
uuid: 44f7e32e-8d99-4682-8b54-8364d001b403
translation-type: tm+mt
source-git-commit: 3f26c1af19a0838913eec2b4135304f5f3fcf0b4
workflow-type: tm+mt
source-wordcount: '269'
ht-degree: 97%

---


# Cookies Adobe Target {#target-cookies}

Adobe Target utilise des cookies pour offrir aux opérateurs du site web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.

Vous pouvez modifier ces paramètres si nécessaire, à l’exception de la durée du cookie. Consultez votre gestionnaire de compte lorsque vous modifiez les paramètres des cookies.

>[!NOTE]
>
>Les utilisateurs d’Adobe Target peuvent également créer des cookies tiers.

<table id="table_54B402C6E19C4A70B1E27BC9DFF776EB"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Paramètre </th> 
   <th colname="col2" class="entry"> Informations </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Nom du cookie </p> </td> 
   <td colname="col2"> <p>mbox. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Domaine du cookie </p> </td> 
   <td colname="col2"> <p>Niveaux secondaire et supérieur des domaines à partir desquels vous diffusez la mbox. Il s’agit d’un cookie propriétaire, puisqu’il est diffusé à partir du domaine de votre société. Exemple : <span class="filepath">masociete.com</span>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Domaine du serveur </p> </td> 
   <td colname="col2"> <p> <span class="filepath"> clientcode.tt.omtrdc.net</span>, utilisant le code client de votre compte Adobe Target. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Durée du cookie </p> </td> 
   <td colname="col2"> <p>Le cookie reste sur le navigateur du visiteur deux ans après sa dernière connexion. Vous ne pouvez pas modifier la durée du cookie. </p> </td> 
  </tr> 
 </tbody> 
</table>

>[!NOTE]
>
>Si l’un des noms de domaine comprend un code de pays, comme [!DNL mycompany.co.uk], adressez-vous au service clientèle afin de configurer le fichier [!DNL mbox.js] en tenant compte de ce paramètre.

Le cookie conserve un certain nombre de valeurs afin de gérer la manière dont vos visiteurs expérimentent les campagnes Adobe Target :

<table id="table_5245F72A2D5A4322B40ABB10B7DFB338"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Valeur </th> 
   <th colname="col2" class="entry"> Définition </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> <span class="codeph"> session ID</span> </p> </td> 
   <td colname="col2"> <p>ID unique d’une session d’utilisateur. Dure 30 minutes par défaut. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <span class="codeph"> pc ID</span> </p> </td> 
   <td colname="col2"> <p>ID semi-permanent du navigateur d’un visiteur. Dure jusqu’à ce que les cookies soient supprimés manuellement. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <span class="codeph"> check</span> </p> </td> 
   <td colname="col2"> <p>Valeur de test simple utilisée pour déterminer si un visiteur prend en charge les cookies. Défini chaque fois qu’un visiteur demande une page. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <span class="codeph"> disable</span> </p> </td> 
   <td colname="col2"> <p>Définie si le temps de chargement d’un visiteur dépasse le délai configuré dans le fichier <span class="filepath">mbox.js</span>. Dure 1 heure par défaut. </p> </td> 
  </tr> 
 </tbody> 
</table>

