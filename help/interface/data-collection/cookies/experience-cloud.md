---
description: Découvrez comment le service d’ID est stocké et utilisé dans les applications Experience Cloud.
solution: Experience Cloud,Analytics,Target
title: Cookies Experience Cloud
uuid: a4788c1c-0402-4fc8-b894-cd24fa794f4f
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: bd9bea58-9987-40d6-84e0-da185388bbbb
source-git-commit: c39672f0d8a0fd353b275b2ecd095ada1e2bf744
workflow-type: tm+mt
source-wordcount: '344'
ht-degree: 91%

---

# Cookies Experience Cloud

Adobe Experience Cloud utilise des cookies pour stocker un identifiant visiteur utilisé dans les applications Experience Cloud. Ces cookies s’appliquent spécifiquement à l’accès aux applications Adobe Experience Cloud sur [experience.adobe.com](https://experience.adobe.com?lang=fr).

**Nom du cookie : s_ecid**

<table id="table_FF4C70D3D4CC425BA65162D5A9504F7D"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> <p>Attribut </p> </th> 
   <th colname="col2" class="entry"> <p>Description </p> </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p> Contient une copie du MID ou de l’Experience Cloud ID (ECID). Le MID est stocké dans une paire clé-valeur qui suit la syntaxe s_ecid=MCMID|&lt;ECID&gt; </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Expiration </p> </td> 
   <td colname="col2"> <p>2 ans </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Utilisation </p> </td> 
   <td colname="col2"> <p>Ce cookie est défini par le domaine du client après la définition du cookie AMCV par le client. L’objectif de ce cookie est d’autoriser le suivi des ID persistants dans l’état propriétaire et il est utilisé comme ID de référence si le cookie AMCV a expiré. Pour plus d’informations, consultez le cookie AMCV. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Emplacement </p> </td> 
   <td colname="col2"> <p>Clients CNAME uniquement. Non applicable pour les scénarios tiers. Le cookie est stocké dans votre domaine, le même domaine utilisé par CNAME et votre demande d’image Analytics. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Taille </p> </td> 
   <td colname="col2"> <p>45 octets </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> SameSite=Lax </p> </td> 
   <td colname="col2"> <p>Les cookies dotés de ce paramètre ne sont envoyés que lorsque le domaine affiché dans l’URL du navigateur correspond au domaine du cookie. Ce paramètre représente la nouvelle valeur par défaut pour les cookies dans Chrome.</p> </td> 
  </tr> 
 </tbody> 
</table>

**Nom du cookie : AMCV_###@AdobeOrg**

Le [service Experience Platform ID](https://experienceleague.adobe.com/docs/id-service/using/home.html?lang=fr) utilise JavaScript pour stocker un ID de visiteur unique dans un cookie `AMCV_###@AdobeOrg` dans le domaine du site web actuel, où `###` représente une chaîne de caractères aléatoire telle que `AMCV_1FD6776A524453CC0A490D44%40AdobeOrg.`

Voir aussi [Cookies et service d’ID](https://experienceleague.adobe.com/docs/id-service/using/intro/cookies.html?lang=fr).

<table id="table_1883C0836C1E4AF5A262FBF5000C1B11"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> <p>Attribut </p> </th> 
   <th colname="col2" class="entry"> <p>Description </p> </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p> ID de visiteur uniques utilisés par les solutions Experience Cloud. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Expiration </p> </td> 
   <td colname="col2"> <p> 2 ans </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Utilisation </p> </td> 
   <td colname="col2"> <p> Ce cookie permet d’identifier un visiteur unique. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Emplacement </p> </td> 
   <td colname="col2"> <p> Ce cookie est stocké au niveau du domaine du site web (et non sur celui de la demande d’image). </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Taille </p> </td> 
   <td colname="col2"> <p> Variable ; la plupart des clients peuvent s’attendre à une taille d’environ 200 octets. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Aucune valeur ajoutée. Chrome est défini par défaut sur Lax. </p> </td> 
   <td colname="col2"> <p> Les cookies dotés de ce paramètre ne sont envoyés que lorsque le domaine affiché dans l’URL du navigateur correspond au domaine du cookie. Ce paramètre représente la nouvelle valeur par défaut pour les cookies dans Chrome. </p> </td> 
  </tr> 
 </tbody> 
</table>
