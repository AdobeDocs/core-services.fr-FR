---
description: Questions fréquentes et bonnes pratiques sur les attributs du client dans Analytics et Target.
keywords: attributs du client
seo-description: Questions fréquentes et bonnes pratiques sur les attributs du client dans Analytics et Target.
seo-title: Questions fréquentes, restrictions et bonnes pratiques
solution: Experience Cloud
title: Questions fréquentes, restrictions et bonnes pratiques
uuid: e 93 eb 531-23 c 7-4 d 75-92 e 8-75699 f 58546 a
translation-type: tm+mt
source-git-commit: 08c2caa1e0e5ca5c487294e9ce33600dde9c9a1e

---


# Questions fréquentes, restrictions et bonnes pratiques

Questions fréquentes et bonnes pratiques sur les attributs du client dans Analytics et Target.


## Bonnes pratiques et restrictions {#section_7F5189B3DAA84EE6865B91D2026EE05A}

Cette section comporte des consignes et des restrictions applicables à l’utilisation des attributs du client.

| Problème | Description |
|--- |--- |
| Restrictions applicables aux abonnements des attributs du client | Lorsque vous procédez à la mise à niveau vers Analytics Premium, un délai de 24 heures est nécessaire avant que des attributs supplémentaires soient disponibles. Il se peut que l’erreur Nombre maximal d’abonnements des attributs s’affiche durant ce délai. |
| Analytics ID personnalisé (s.visitorID) | La définition d’un ID client à l’aide de  s. visitorid est une méthode d&#39;identification des utilisateurs dans Analytics. Cependant, les intégrations dans lesquelles des données Analytics sont exportées ou importées à l’aide du service d’ID ne fonctionneront pas lorsqu’un visiteur est identifié à l’aide de s.visitorID.<br>Cela comprend, sans s’y limiter, les audiences partagées, Analytics for Target (A4T) et les attributs du client.<br>Pour ces intégrations, la définition d’un Analytics ID personnalisé n’est pas prise en charge. |
| Limites de caractères dans Analytics | Lors de la création d’un abonnement Analytics, la longueur de champ pour les fichiers transférés est limitée à 255 caractères. |

## Questions fréquences sur les attributs du client {#section_E47866EEA83348E09FE43CEC5E44C461}

<table id="table_88631069013B408EBB0A810657662B36"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Question </th> 
   <th colname="col2" class="entry"> Réponse </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Puis-je recevoir des notifications concernant l’état du chargement des attributs du client ? </p> </td> 
   <td colname="col2"> <p>Oui. Voir <a href="../admin-getting-started/organizations.md#concept_0105453AD71847B8BFCAF4A40915F157" format="dita" scope="local">Gestion des notifications</a>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Que dois-je faire pour commencer à utiliser les attributs du client ? </p> </td> 
   <td colname="col2"> 
    <ol id="ol_1FACEF0990B6486B8DE86245D17695A8"> 
     <li id="li_F0C1542853684F8591FDC1B441D31A56"> <p>Mettez en œuvre votre configuration. </p> <p>Si vous êtes un client d’<b>Analytics</b>, Adobe met en service les attributs client pour vous. Si vous utilisez uniquement <b>Target</b> et ne possédez pas Analytics, vous devez demander la configuration des services principaux en contactant le service à la clientèle. </p> </li> 
     <li id="li_444FEDEE4B7244F79BA847662F5B17CB"> <p>Contactez votre équipe CRM. Découvrez quels sont les types de données du client disponibles qui pourraient s’avérer utiles dans Analytics et dans Experience Cloud. </p> </li> 
     <li id="li_32D4AAF8C29748A78801A0E1BFB37AF5"> <p>Mettez en œuvre les services principaux. </p> <p>Voir <a href="../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C" format="dita" scope="local"> Prise en main : activez vos solutions pour les services principaux</a> pour connaître les étapes à suivre pour moderniser votre implémentation pour les services principaux. (Consultez la section concernant la synchronisation des ID client pour obtenir des informations importantes.) </p> </li> 
    </ol> <p> <b>Remarque :</b> Une FAQ destinée aux administrateurs pour la mise en œuvre de services principaux est disponible <a href="../admin-getting-started/faq.md#concept_13219B4E51784577B6FF78AAA203DE91" format="dita" scope="local"> ici</a>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> Combien d’attributs de client suis-je autorisé à utiliser ? </p> </td> 
   <td colname="col2"> <p>Vous pouvez transférer des centaines de colonnes <span class="filepath">.csv</span> vers le service d’attributs du client. Toutefois, lors de la configuration des abonnements et de la sélection des attributs, les restrictions suivantes s’appliquent, selon les solutions que vous détenez : </p> <p> 
     <ul id="ul_2BB85067918D4BB3B59394F3E3E37A6D"> 
      <li id="li_93703988B9934384B4B94A839D028380"> <b>Analytics Standard</b> : 3 attributs au total </li> 
      <li id="li_D1E5E7BD24C54591B14D15DE97447835"> <b>Analytics Premium</b> : 200 attributs par suite de rapports </li> 
      <li id="li_8C891FE3D1EF49FA9F81E2E32CD0B9CA"> <b>Target Standard :</b> 5 </li> 
      <li id="li_2B66D43023F34EA685CE2C38A9250CEA"> <b>Target Premium :</b> 200 </li> 
     </ul> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>La migration vers le service d’Experience Cloud ID est-elle requise ? </p> </td> 
   <td colname="col2"> <p>La migration dépend des solutions que vous utilisez. </p> <p> 
     <ul id="ul_9C473434B5DA4C6299AAB209DEDFCDE7"> 
      <li id="li_8BC10EB2825F4ADF8CA61F71D4994A28"> <b>Adobe Analytics</b> : fortement recommandé </li> 
      <li id="li_56F518E3F3DF4C93B6F7EF3B40ACC52F"> <b>Adobe Target :</b> requis. </li> 
     </ul> </p> <p>Utilisez le service d’identification pour améliorer les fonctionnalités et avoir la possibilité d’utiliser les fonctions les plus récentes d’Experience Cloud, y compris les audiences en temps réel, la modernisation Target, l’intégration d’Analytics et le suivi des pulsations vidéo. </p> <p>Pour plus d’informations, voir <a href="../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C" format="dita" scope="local"> Services principaux - Comment activer vos solutions</a>. </p> <p> <b>Remarque</b>: Le service <span class="term"> Experience Cloud ID</span> est la mise en œuvre modernisée du service d'identification des visiteurs <span class="term"> d'Analytics</span>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>De quelle façon la fonction d’attributs du client est-elle liée à Adobe Audience Manager ? </p> </td> 
   <td colname="col2"> <p>Audience Manager peut recevoir des données pour identifier l’audience, mais il ne peut pas exécuter des fonctions d’analyse qui lient les attributs aux données comportementales historiques ou fournir des fonctions de création de rapports, d’analyse et de segmentation disponibles dans Adobe Analytics. Le service principal Personnes permet de lier les données enrichies issues des solutions et de les associer à un identifiant unique à utiliser à l’échelle d’Experience Cloud. </p> <p> Dans Adobe Target, les attributs client apparaissent sous forme d’attributs individuels pouvant être combinés à d’autres règles afin de créer des audiences. Les audiences partagées dans le service principal Personnes sont complètes et non modifiables. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>(Analytics seulement) </b>En quoi cette fonctionnalité diffère-t-elle de celle fournie dans Analytics Premium ? </p> </td> 
   <td colname="col2"> <p>Par le passé, les clients qui souhaitaient combiner les données d’attributs du client avec les données Analytics se fiaient principalement à l’Data Workbench associé à cette fonction. Les attributs du client exposent cette fonction à une audience plus large en fournissant les attributs du client sous forme de dimensions et de mesures dans les Reports &amp; Analytics, les Ad Hoc Analysis et le Report Builder. Les clients d’Analytics Standard auront accès aux attributs du client, mais avec des fonctionnalités limitées. Les fonctionnalités complètes sont disponibles pour les clients Analytics Premium. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>(Target seulement)</b> Puis-je précharger ou transférer des données pour les clients que Target n’a jamais vus ? </p> </td> 
   <td colname="col2"> <p> Oui. Quand le visiteur transmet sa première demande à Target, le système récupère les informations existantes que nous détenons à leur sujet dans les attributs du client, puis les utilise pour le ciblage. </p> <p> <p>Remarque : La récupération de ces données peut prendre jusqu’à 20 minutes à compter de la première interaction du visiteur avec Target. </p> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>(Target seulement)</b> Puis-je créer une super-audience en combinant les données d’attributs du client avec les données d’audience partagée ? </p> </td> 
   <td colname="col2"> <p>Non. Les données d’audience partagée composent une audience complète. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>(Target seulement) </b>Comment la fonctionnalité d’attributs client se compare-t-elle à l’API de profil par lots de Target ? </p> </td> 
   <td colname="col2"> <p> L’<a href="https://marketing.adobe.com/developer/documentation/test-target/r-profile-update" format="https" scope="external">API de profil par lot</a> permet de mettre à jour les profils Target directement via l’API, soit pour un profil individuel, soit par lot. Les capacités sont similaires à celles des attributs client, hormis les quelques différences fondamentales suivantes : </p> 
    <ul id="ul_5AAA4A8497C04F50A8AAA9F776BB868E"> 
     <li id="li_B20AEA397F3B4C86A1140CDA61ABD575">L’API de profil est un appel d’API REST, tandis que les attributs du client utilisent le protocole FTP. </li> 
     <li id="li_7FBE428EF5D34B6AA09B6368E8210344">L’API de profil de Target envoie uniquement les données à Target et non à l’ensemble d’Experience Cloud. </li> 
     <li id="li_CBB4D3FAF53944E0A066A4AD9F9C8760">Les attributs du client fournissent une interface simple pour créer et gérer ces données externes. </li> 
    </ul> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b>(Target seulement)</b> Le transfert des données entre les attributs client et Adobe Target s’étend-il à la durée de vie du profil des visiteurs de Target ? </p> </td> 
   <td colname="col2"> <p>Oui. Voir <a href="https://marketing.adobe.com/resources/help/en_US/target/ov/?f=c_visitor_profile_lifetime" format="https" scope="external">Durée de vie du profil du visiteur</a> dans l’aide d’Adobe Target. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <b> (Target seulement)</b> Puis-je cibler les données transférées dans les attributs de client immédiatement après que le visiteur s’est identifié avec son ID de client ? </p> </td> 
   <td colname="col2"> <p>Oui.  </p> <p>Lors de l’appel de serveur adressé à Target, qui inclut l’ID de fournisseur tiers mbox, toutes les données d’attribut client sont disponibles. </p> </td> 
  </tr> 
 </tbody> 
</table>

