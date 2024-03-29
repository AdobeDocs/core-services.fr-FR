---
description: Découvrez les cookies d’Adobe Advertising pour mapper les événements d’engagement publicitaire aux événements de conversion et, potentiellement, pour utiliser ces informations afin d’optimiser les offres publicitaires.
title: Cookies d’Adobe Advertising
uuid: 2eec48a3-3e81-488e-8e30-5fd62885de0b
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 6818edea-31b1-49fc-bca2-32828c7ca78d
source-git-commit: 5d0e02713ec4b233e06ecd3ac0234d1526b947f1
workflow-type: tm+mt
source-wordcount: '554'
ht-degree: 75%

---

# Cookies d’Adobe Advertising{#advertising-cloud-cookies}

Adobe Advertising (anciennement Adobe Advertising Cloud) utilise des cookies pour mapper les événements d’engagement publicitaire aux événements de conversion et, potentiellement, pour utiliser ces informations afin d’optimiser les offres publicitaires.

>[!NOTE]
>
>La balise JavaScript de l’Adobe Advertising bêta qui utilise la variable [Service Adobe Experience Cloud ID (ECID)](https://experienceleague.adobe.com/docs/id-service/using/intro/overview.html?lang=fr) crée [cookies s_ecid Experience Cloud propriétaires](cookies-first-party.md), pas d’Adobe Advertising des cookies.

## Nom du cookie : _lcc

<table id="table_821F8EBE91F244CBA72B0975B961B908"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>ID et horodatages (au format aaaammjj) des clics d’affichage</p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>15 minutes</p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Cookie tiers utilisé pour déterminer si un événement de clic sur une publicité affichée s’applique à un accès Adobe Analytics </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>everesttech.net </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>52 octets </p> </td> 
  </tr> 
 </tbody> 
</table>

## Nom du cookie : _tmae

<table id="table_28C2B62595E240D5A3C3E0BE147748C1"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>ID codés et horodatages des engagements publicitaires à l’aide du suivi des Adobes Advertising DSP </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>1 an </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Cookie tiers qui stocke des engagements utilisateur avec des publicités par exemple, « dernière publicité vue xyz123 le 30 juin 2016 ». </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>everesttech.net </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>Variable ; les données sont codées et sont généralement inférieures à 1 Ko </p> </td> 
  </tr> 
 </tbody> 
</table>

## Nom du cookie : adcloud

<table id="table_D7CD238736BC4571883F92F47673F57C"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>La date et l’heure de la dernière visite du surfeur sur le site web de l’annonceur et le dernier clic de recherche du surfeur, et l’ef_id créé lorsque l’utilisateur a cliqué sur une publicité</p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>1 an</p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Cookie propriétaire qui associe l’ID de surfeur aux conversions et aux segments d’audience pertinents </p> <p> Les informations sur la dernière visite sont utilisées pour optimiser les temps de chargement des pages en évitant les requêtes inutiles à la variable [!DNL Adobe] serveurs. </p> <p>Les informations sur le dernier clic de recherche permettent de déterminer si un événement de conversion résulte d’un clic ou d’un affichage publicitaire (conversion résultant d’impressions mais pas de clics). </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>Domaine de niveau supérieur de l’annonceur (par exemple, exemple.com) </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>Variable, mais généralement 50 à 150 octets </p> </td> 
  </tr> 
 </tbody> 
</table>

## Nom du cookie : ev_sync_&#42;

(ev_sync_ax, ev_sync_bk, ev_sync_dd, ev_sync_fs, ev_sync_ix, ev_sync_nx, ev_sync_ox, ev_sync_pm, ev_sync_rc, ev_sync_tm, ev_sync_yh)

<table id="table_A05C02AB261946E0AABAD78259392D81"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>Date à laquelle la synchronisation est effectuée, au format aaaammjj </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>Date à laquelle la synchronisation est effectuée, au format aaaammjj </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Cookie tiers spécifique à l’échange publicitaire qui synchronise l’ID de surfeur d’Adobe Advertising avec l’échange publicitaire partenaire. Il est créé pour les nouveaux surfeurs et envoie une demande de synchronisation une fois expiré. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>everesttech.net </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>8 caractères </p> </td> 
  </tr> 
 </tbody> 
</table>

## Nom du cookie : everest_g_v2

<table id="table_04043292A43B41B69EAF17AF4E217C69"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>Navigateur et ID de surfeur </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>1 an </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Créé une fois qu’un utilisateur a cliqué initialement sur la publicité d’un client et utilisé pour associer les clics actuels et suivants à d’autres événements sur le site web du client </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>everesttech.net </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>~27 caractères </p> </td> 
  </tr> 
 </tbody> 
</table>

## Nom du cookie : everest_session_v2

<table id="table_1A3AE4CA71304ADB943CB1F64BE695F5"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>L’ID de session </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>Lorsque le navigateur est fermé </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Cookie de session de navigateur tiers ; un cookie est utilisé pour tous les comptes </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>everesttech.net </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>~16 caractères </p> </td> 
  </tr> 
 </tbody> 
</table>

## Nom du cookie : ev_tm

<table id="table_6C4D9DCFA4BF4FB2BD445E027550955F"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>ID d’Adobe Advertising DSP (Demand Side Platform) </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>2 ans </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Cookie tiers qui stocke l’ID DSP correspondant à l’ID de surfeur dans le cookie everest_g_v2 </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>everesttech.net </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>~20 octets </p> </td> 
  </tr> 
 </tbody> 
</table>

## Nom du cookie : id_ adcloud

<table> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Attribut </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Informations stockées </p> </td> 
   <td colname="col2"> <p>L’ID de surfeur </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Expiration </p> </td> 
   <td colname="col2"> <p>91 jours </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Utilisation </p> </td> 
   <td colname="col2"> <p>Le cookie est défini dans le domaine propriétaire mais n’est pas encore utilisé </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Emplacement </p> </td> 
   <td colname="col2"> <p>Domaine de niveau supérieur de l’annonceur (par exemple, exemple.com) </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Taille </p> </td> 
   <td colname="col2"> <p>16 octets </p> </td> 
  </tr> 
 </tbody> 
</table>
