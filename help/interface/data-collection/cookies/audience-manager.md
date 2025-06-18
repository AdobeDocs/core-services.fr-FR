---
description: Découvrez les cookies Audience Manager dans Adobe Experience Cloud.
keywords: Cookies
solution: Experience Cloud, Audience Manager
title: Cookies Audience Manager
uuid: 8b384c38-b85a-4e93-b00e-41a9d3ae2b21
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: ab6de845-99ea-4cd8-b7cd-012fb641403f
source-git-commit: 361175f290d73f1637673420700874a2415e3fca
workflow-type: tm+mt
source-wordcount: '626'
ht-degree: 98%

---

# Cookies Audience Manager{#audience-manager-cookies}

Audience Manager se sert de quelques cookies simples pour réaliser plusieurs fonctions. Ces dernières consistent entre autres à attribuer des ID, à enregistrer les appels de données, à suivre les erreurs et à tester si les cookies peuvent être définis. Cette section répertorie et décrit les différents cookies définis par Audience Manager.

**Cookie demdex**

<table id="table_1CCF7EA2BC9E421F8DEECA5F611E33F6"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> <b>Rôle</b> </p> </td> 
   <td colname="col2"> <p> <span class="keyword"> Audience Manager</span> définit ce cookie pour attribuer un ID unique au visiteur d’un site. Le cookie <span class="wintitle">demdex</span> aide <span class="keyword">Audience Manager</span> à effectuer des fonctions de base, comme l’identification des visiteurs, la synchronisation des identifiants, la segmentation, la modélisation, le compte rendu des performances, etc. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>Contenu</b> </p> </td> 
   <td colname="col2"> <p>Le cookie <span class="wintitle">demdex</span> contient un UUID (ID d’utilisateur unique), tel qu’illustré dans l’exemple ci-dessous : </p> <p> <span class="codeph"> 06151304227769720433039235178204449977 </span> </p> <p>Voir également <a href="https://experienceleague.adobe.com/docs/audience-manager/user-guide/reference/ids-in-aam.html?lang=fr" format="https" scope="external">Index des ID dans Audience Manager</a>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>Autres attributs</b> </p> </td> 
   <td colname="col2"> <p> 
     <ul id="ul_11291DA87C5045E880034E06C863BCDA"> 
      <li id="li_40C30A06A12449A4A8748621223CA71B">Durée de vie : le cookie <span class="wintitle">demdex</span> a un intervalle TTL (« time-to live », durée de vie) de 180 jours. La durée de vie est réinitialisée à 180 jours à chaque interaction de l’utilisateur avec un site web partenaire. Le cookie expire si un utilisateur ne revient pas sur votre site pendant l’intervalle TTL. </li> 
      <li id="li_A589EDA2198249829207A183872EF1FF">Exclusion : <span class="keyword">Audience Manager</span> réinitialise le cookie avec une chaîne <span class="codeph">Ne pas cibler</span> si un utilisateur s’exclut de la collecte des données. Dans ce cas, la durée de vie du cookie est définie sur 10 ans. </li> 
     </ul> </p> </td> 
  </tr> 
 </tbody> 
</table>

**Cookie dextp**

<table id="table_7343C9C9ADD24D3FA693ECC76E4A4045"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> <b>Rôle</b> </p> </td> 
   <td colname="col2"> <p> <span class="keyword"> Audience Manager</span> définit ce cookie pour enregistrer la dernière heure à laquelle un appel de synchronisation des données a été effectué. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>Contenu</b> </p> </td> 
   <td colname="col2"> <p>Le cookie <span class="wintitle">dextp</span> contient le nom ou l’identifiant du fournisseur de données, ainsi qu’un horodatage UTC UNIX mis en forme en tant que chaînes délimitées par des barres verticales. Dans les exemples, le texte en <i>italique</i> représente un espace réservé de variable. </p> <p> 
     <ul id="ul_80D0BC3FCF06470991E12712401D784A"> 
      <li id="li_03747A433CEB4756A26CD866E716B89D">Ancien style : <span class="codeph"> <span class="varname"> nom du fournisseur de données ici </span>-1490307822097| <span class="varname"> nom du fournisseur de données ici </span>-1490307822038 </span> </li> 
      <li id="li_79E7000E82DB4ADA9E9887B017343B2D">Nouveau style : <span class="codeph">21-1-1490307821616|544-1-1490307821793|3-1-1490307821852|420-1-1490307822038| </span> </li> 
     </ul> </p> <p>Voir également la section sur la syntaxe des données de dextp ci-dessous. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>Autres attributs</b> </p> </td> 
   <td colname="col2"> <p> 
     <ul id="ul_4922AC2CD55D4C888A6FBEB22F8B889B"> 
      <li id="li_91A68C44E53840379C2ACDED25468735">Durée de vie : le cookie <span class="wintitle">dextp</span> a un intervalle TTL (« time-to-live », durée de vie) de 180 jours. </li> 
      <li id="li_6B8C674EFAAC4DABA0A640CF29247F99">Exclusion : <span class="keyword">Audience Manager</span> réinitialise le cookie avec une chaîne <span class="codeph">Ne pas cibler</span> si un utilisateur s’exclut de la collecte des données. Dans ce cas, la durée de vie du cookie est définie sur 10 ans. </li> 
     </ul> </p> </td> 
  </tr> 
 </tbody> 
</table>

Syntaxe des données du cookie dextp :

Le tableau suivant répertorie et définit les éléments d’un cookie `dextp` en fonction de leur emplacement dans la chaîne de données.

<table id="table_BE00604B97F24F5A94AA4F566063D785"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Position de la variable </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> <b>Première ou deuxième position</b> </p> </td> 
   <td colname="col2"> <p>La position du nom ou de l’ID du fournisseur de données varie selon que le cookie utilise l’ancien ou le nouveau style de formatage. </p> <p> <b>Ancien style de formatage :</b> </p> <p> 
     <ul id="ul_5BFBF40E3FE849CA859030F2D070FDF6"> 
      <li id="li_E8F4DC0CB15B472ABE9892B3A61D7F77">Syntaxe : <span class="codeph"> <span class="varname"> nom du fournisseur de données </span> — <span class="varname"> horodatage UTC UNIX </span> </span> </li> 
      <li id="li_7CD8B101156140F49EA97B18E9591402">Exemple : <span class="codeph"> dataProvider1 — 1490307822038 </span> </li> 
     </ul> </p> <p>Le cookie utilisant l’ancien style de formatage identifie le fournisseur de données avec un nom lisible. </p> <p> <b>Nouveau style de formatage :</b> </p> <p> 
     <ul id="ul_AC6225CA781746148C125F21DFED1ED9"> 
      <li id="li_29C4B52E398B4EA28944980A15B05A57">Syntaxe : <span class="codeph"> <span class="varname"> ID du fournisseur de données </span> — 1|2 — <span class="varname"> horodatage UTC UNIX </span> </span> </li> 
      <li id="li_3BF30CA5FED242DF96E0B54AFC64B06F">Exemple : <span class="codeph"> 123345 - 1 - 1490307822038 </span> </li> 
     </ul> </p> <p>Le cookie utilisant le nouveau style de formatage : </p> <p> 
     <ul id="ul_F05A91A455FA44C7A71186C0C9E31630"> 
      <li id="li_A8C9638173684359BABC4207845A4F48">Remplace le nom lisible du fournisseur de données par un ID numérique. </li> 
      <li id="li_28F1E2DB24904E53BE9718AD788CE61E">Identifie le type d’appel avec l’ID 1 ou l’ID 2. L’ID 1 représente un appel de synchronisation des ID. L’ID 2 représente un appel obsolète qui n’est plus utilisé. Il est peu probable (voire impossible) que vous rencontriez de nombreux cookies dextp avec l’ID 2. </li> 
     </ul> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>Dernière position</b> </p> </td> 
   <td colname="col2"> <p>La dernière position contient un horodatage UTC UNIX. </p> </td> 
  </tr> 
 </tbody> 
</table>

**Cookie dst**

<table id="table_83AE9B6350C6408BAECD9FCF33022B98"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> <b>Rôle</b> </p> </td> 
   <td colname="col2"> <p> <span class="keyword"> Audience Manager</span> définit ce cookie lorsqu’une erreur survient lors de l’envoi des données à une <a href="https://experienceleague.adobe.com/docs/audience-manager/user-guide/features/destinations/destinations.html?lang=fr" format="https" scope="external">destination</a>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>Contenu</b> </p> </td> 
   <td colname="col2"> <p> Le cookie <span class="wintitle">DST</span> contient des jeux d’identifiants de destination et d’horodatages UNIX mis en forme en tant que chaînes délimitées par des barres verticales. Dans les exemples, le texte en <i>italique</i> représente un espace réservé de variable. </p> <p> 
     <ul id="ul_CE98076A02DA413486C1D341E9806889"> 
      <li id="li_850209D956644749B98C7A208C825C15">Syntaxe : <span class="codeph"> <span class="varname"> ID de destination </span> — <span class="varname"> horodatage UTC UNIX </span> </span> </li> 
      <li id="li_4A22152C70844733982230EBF7B9EB78">Exemple : <span class="codeph">067797-1490349684|1010788-1490349692|1067797-1490349692 </span> </li> 
     </ul> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>Autres attributs</b> </p> </td> 
   <td colname="col2"> <p> 
     <ul id="ul_5D13DD701B484B51BF2808A69A919106"> 
      <li id="li_4E665114C63246FBA32A4E19984D2693">Durée de vie : le cookie <span class="wintitle">dst</span> a un intervalle TTL (« time-to live », durée de vie) de 180 jours. </li> 
      <li id="li_A682B566704F43D2AB72487EFF212474">Exclusion : <span class="keyword">Audience Manager</span> réinitialise le cookie avec une chaîne <span class="codeph">Ne pas cibler</span> si un utilisateur s’exclut de la collecte des données. </li> 
     </ul> </p> </td> 
  </tr> 
 </tbody> 
</table>

**Cookie _dp**

Ce cookie est temporaire. [!DNL Audience Manager] tente de définir le cookie `_dp` pour déterminer s’il est possible de définir d’autres cookies sur le domaine demdex.net dans un contexte tiers. Lorsque le cookie `_dp` est défini, il contient une valeur de 1. [!DNL Audience Manager] lit cette valeur et supprime immédiatement le cookie. Si le cookie `_dp` n’est pas présent, [!DNL Audience Manager] sait qu’il ne peut pas définir de cookies.
