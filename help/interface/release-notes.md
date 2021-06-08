---
description: « Dernières fonctionnalités, notes de mise à jour et problèmes connus pour les services Experience Cloud tels que les attributs du client, les audiences et la gestion des utilisateurs. »
keywords: services principaux
solution: Experience Cloud
title: 'Notes de mise à jour cumulatives '
uuid: fcff8cc6-e587-4bf2-9a75-261d4eabc7d4
feature: '"Attributs du client"'
topic: Administration
role: Administrator
level: Experienced
exl-id: b71d144c-a097-4cdb-9721-671519d38aff
source-git-commit: ebefd433e96da422674e7ee71c8988d4011fed11
workflow-type: tm+mt
source-wordcount: '4094'
ht-degree: 91%

---

# Notes de mise à jour cumulatives

Cette section présente les fonctionnalités, les notes de mise à jour et les problèmes connus de l’interface d’Experience Cloud.

Pour obtenir la liste des mises à jour de la documentation, voir [Experience Cloud](doc-updates.md#concept_4C8983FCD23848A4B1E4C2D99ED82784).

Pour consulter des notes de mise à jour de toutes les solutions, reportez-vous à la page [Notes de mise à jour d’Experience Cloud](https://experienceleague.adobe.com/docs/release-notes/experience-cloud/current.html?lang=en).

## Mai - 2021

| Fonctionnalité | Date | Description |
| ------- | ------- | ------- |
| En-tête et navigation Experience Cloud | 20 mai 2021 | Les mises à jour de Adobe Experience Cloud incluent une modification du thème clair de l’en-tête, avec la possibilité de revenir facilement au thème sombre et au lien pour contrôler les préférences supplémentaires de l’avatar de l’utilisateur dans l’en-tête de l’Experience Cloud. Bien que toutes les applications Experience Cloud ne prennent pas en charge les thèmes, cette fonctionnalité permet de débloquer la prise en charge future des thèmes. |
| Recherche globale Experience Cloud | 20 mai 2021 | Avec cette version, la recherche globale Experience Cloud vous permet de rechercher n’importe quels cours, documentation et tutoriels d’[Experience League](https://experienceleague.adobe.com/?lang=fr#home). (Actuellement, la recherche globale n’est disponible que pour les utilisateurs d’Experience Platform. La recherche globale de [!UICONTROL Platform] vous permet de rechercher n’importe quel élément commercial dans Experience Cloud, tel que les segments, les ensembles de données, les schémas, etc.). |
| Préférences de langue Experience Cloud | 20 mai 2021 | Cette mise à jour offre la possibilité de définir vos langues préférées dans les [Préférences](https://experience.adobe.com/preferences) Experience Cloud. |

{style=&quot;table-layout:auto&quot;}

## Août - 2020

| Fonctionnalité | Description |
| -----------| ---------- |
| Outil d’administration - Politiques | Cette page affiche la liste complète des politiques Experience Cloud de votre organisation. Elle fournit des informations sur les produits, les instances, les utilisateurs et les développeurs. Vous pouvez rechercher, trier et filtrer des affichages personnalisés de la liste des politiques. Voir l’aide de [l’outil d’administration Experience Cloud](admin-tool-experience-cloud.md) pour en savoir plus. |

## Avril - 2020

* La page [!UICONTROL Flux] d’Experience Cloud était obsolète. (EXC-8505)
* La page de connexion à Experience Cloud a été mise à jour pour refléter les nouveaux éléments de branding. (EXC-10747)

## Février - 2020

| Fonctionnalité | Description |
| -----------| ---------- |
| Outil d’administration - Affichage des détails utilisateur | Les administrateurs peuvent afficher une liste triable et filtrable de tous les utilisateurs d’Experience Cloud et de leurs détails dans le nouvel outil d’administration. Les détails de l’utilisateur incluent l’accès au produit d’un utilisateur, ses rôles et les informations de dernier accès. Voir l’aide de [l’outil d’administration Experience Cloud](admin-tool-experience-cloud.md) pour en savoir plus. |

**Correctifs**

* **Attributs du client** : l’interface utilisateur Attributs du client affiche désormais statuts supplémentaires des profils synchronisés dans Target. (MCUI-10231)
* **Service principal Triggers** : en raison d’un manque d’utilisation, le score de propension « Probabilité de retour dans 30 jours » lors de la création d’un déclencheur de type Abandon a été supprimé. (MCUI-10056)

## Janvier - 2020

* La page Flux a été abandonnée en décembre 2019. Vous trouverez un avis d’obsolescence dans le produit. (MCUI-10039)

## Août - 2019

* Correction d’un problème critique de connexion à Experience Cloud en raison duquel la session de certains utilisateurs était fermée. (MCUI-6908)
* Mise à jour de la connexion Experience Cloud afin d’améliorer les performances et de réduire la latence. (MCUI-6854, MCUI-6869, MCUI-6883)
* Mise à jour cosmétique de l’interface. (MCUI-6861, MCUI-6911, MCUI-6862)
* Correction d’un problème lié aux [!UICONTROL Triggers] d’Experience Cloud qui entraînait une interprétation incorrecte de la clause _Like_ dans la définition du [!UICONTROL déclencheur]. (MCUI-6611)

## Avril - 2019

* Mise à jour du sélecteur d’applications pour inclure Marketo dans la suite de solutions Experience Cloud et mise à jour des marques sur Experience Platform. (MCUI-6529)
* Mise à jour de l’accueil d’Experience Cloud pour inclure les liens de navigation vers les pages de flux et d’administration. (MCUI-6682)
* Correction d’un problème dans la définition du [!UICONTROL déclencheur] en relation avec l’utilisation correcte de la clause « like ». (MCUI-6611)
* Améliorations apportées aux attributs du client pour une meilleure connexion au service d’abonnement. (MCUI-6519)

## Version 19.1.1 - 17 janvier 2019

**Remarque :** En mars 2019, l’interface d’Experience Cloud ne prendra pas en charge Internet Explorer 11.

* Correction d’un problème qui empêchait la recherche d’aide de renvoyer des résultats. (MCUI-1670)
* Correction et amélioration de la gestion des eVars dans Triggers. (MCUI-6400)

## Version 16.5.1 - 26 mai 2016 {#section_3785F182BC13493F84903CA69EB6D0A8}

**Fonctionnalités et améliorations**

<table id="table_ABBCE1A66F534059BD728BC2B9AEFA80"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Configurations de produit préconfigurées dans Admin Console </p> </td> 
   <td colname="col2"> <p>Les administrateurs de clients Experience Cloud peuvent utiliser des configurations de produit précréées et mappées à des groupes d’autorisations par défaut pour Analytics et Dynamic Tag Management. </p> <p>Cette optimisation est disponible pour les organisations nouvellement configurées et réduit le temps nécessaire aux organisations pour gérer les utilisateurs dans Admin Console. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Amélioration des flux </p> </td> 
   <td colname="col2"> <p> Lors de la création d’une publication dans le flux de l’Experience Cloud, la ligne À utilise désormais la rubrique actuellement principale plutôt que l’organisation par défaut.</p> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* Correction d’un problème qui empêchait l’affichage des ressources partagées par Assets on Demand avec le flux Experience Cloud. (MAC-29955)

## Version 16.2 - 18 février 2016 {#section_D9610373116C4D77A38F67815C725EA3}

<table id="table_C9B288CF42034F329C3C72D95D22E515"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Améliorations d’Experience Cloud Assets </p> </td> 
   <td colname="col2"> <p>Experience Cloud Assets vous permet de stocker, de partager et de synchroniser vos ressources numériques à partir d’un seul et même emplacement. Experience Cloud Assets utilise certaines des fonctionnalités disponibles dans <span class="keyword"> Adobe Experience Manager</span> (AEM). </p> <p>Voir <a href="experience-cloud-assets.md#concept_DDA5224C907D4A4F817D795DA0ED64D0" format="dita" scope="local">Experience Cloud</a></p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Amélioration de la liaison des comptes </p> </td> 
   <td colname="col2"> <p>Amélioration de l’interface pour la liaison des comptes des solutions à Experience Cloud (Adobe ID). Cette nouvelle organisation de l’interface permet de localiser tous les comptes d’un utilisateur associés à une organisation et de choisir les comptes à lier. Nous avons également rationalisé l’expérience de liaison de comptes, de sorte que vous ne deviez plus accéder à la page Gérer les organisations pour lier manuellement les comptes. </p> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* Correction d’un problème qui empêchait la liaison et l’authentification unique d’Analytics. Ce problème affichait « Avertissement : Message d’erreur : Échec de l’authentification unique IMS : Impossible de trouver la société liée. »

**Problème connu**

Si vous accédez à Dynamic Tag Management par le biais de l’interface **[!UICONTROL Experience Cloud]** > **[!UICONTROL Activation]**, mais que le compte de votre solution n’est pas lié à Experience Cloud (Adobe ID), vous ne serez pas en mesure de vous connecter à Dynamic Tag Management. Pour éviter ce problème, accédez directement à `dtm.adobe.com` dans un nouvel onglet du navigateur.

## Version 16.1 - 21 janvier 2016 {#section_33B3F7DF6CA347E3AA93801BAC6232CE}

<table id="table_4223658257DA41C999AC710A10D26771"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> Messages de la bibliothèque d’audiences </td> 
   <td colname="col2"> <p> Nous avons apporté des améliorations à la bibliothèque d’audiences en y ajoutant des messages utiles qui s’affichent lors de la création d’audience ou d’un dépassement de délai. </p> <p>Par exemple, lors de l’ajout de cinq règles ou davantage, un message s’affiche pour vous informer que vous avez dépassé le nombre maximal de règles autorisées. (MAC-27376, MAC-27375) </p> </td> 
  </tr> 
 </tbody> 
</table>

>[!NOTE]
>
>Microsoft® prend la [fin de la prise en charge](https://www.microsoft.com/fr-fr/WindowsForBusiness/End-of-IE-support) d’Internet Explorer 8, 9 et 10. Par conséquent, nous ne corrigerons pas les bogues signalés concernant ces versions spécifiques d’Internet Explorer.

## Version 15.10 - 14 octobre 2015 {#section_68123833D3634BD3A473C12862BF9606}

**Problèmes connus**

* Les clients ne parviennent pas à se connecter au Report Builder lorsqu’ils se connectent à Analytics via Experience Cloud par le biais du service d’authentification unique. Ce problème n’affecte pas les clients qui utilisent des informations de connexion Analytics héritées.
* Problème connu avec la fonction « Lien vers le rapport » dans Analytics. Les clients qui se connectent à Analytics via Experience Cloud sont redirigés vers une page de connexion sans identification unique pour Analytics lorsqu’ils tentent de partager un rapport.

## Version 15.9 - 10 septembre 2015 {#section_BCCE3E7DF62A4FF5A57B9C8FE2A5F37B}

* Correction d’un problème de performance de l’API Audience Manager, qui provoquait des temporisations intermittentes lors du transfert de données d’attributs du client. (MAC-26305)
* Correction d’un problème qui empêchait les utilisateurs d’ajouter jusqu’à 200 attributs du client à un abonnement. (MAC-26188)
* Correction d’un problème lié à la bibliothèque d’audiences qui empêchait le partage d’audiences à partir de la segmentation Analytics. Ce problème entraînait l’affichage de « Collecte de données » (0 audience). Pour éviter ce problème, Adobe conseille de conserver les tailles des segments en dessous de 50 000 membres d’audience par segment. (MAC-25788)
* Correction d’un ancien problème connu sur la page Attributs du client – Schéma d’édition qui provoquait une erreur de reconnaissance du contenu lors de la modification d’un nom d’affichage. (MAC-25589, AN-103834)

## Version 15.7 - 22 juillet 2015 {#section_2683A152176944E48EF6C943892975B7}

* Correction d’un problème qui empêchait la mise à jour des descriptions d’attribut spécifiées sur la page Afficher/Modifier le schéma (dans les attributs du client) dans les rapports Analytics. (MAC-25985)
* Correction d’un problème empêchant le rendu des miniatures pour les ressources transférées. (MAC-25863)
* Correction d’un problème en raison duquel les segments créés dans les Reports &amp; Analytics n’étaient pas disponibles dans les audiences Experience Cloud. (MAC-25817)
* Correction d’un problème qui empêchait le partage des audiences à partir d’Analytics lors de l’utilisation du service d’identification des visiteurs. (MAC-25788, MAC-25747)
* Ajout de la prise en charge des caractères à plusieurs octets dans les attributs du client. (MAC-25552)

**Problème connu**

En raison d’un problème connu, les comptes générés automatiquement sont créés en double dans Audience Manager et automatiquement associés à une identité Experience Cloud d’un utilisateur. Ce problème survient quand vous tentez d’accéder à Audience Manager avant de lier vos comptes. Adobe recommande de lier vos comptes Audience Manager à Experience Cloud avant d’accéder à Audience Manager. (MAC-25640)

## Version 15.6.1 - 11 juin 2015 {#section_AD2019F8D2F84C9EB2B0533FAACF7043}

Pas d’informations disponibles.

## Version 15.5.1 - 13 mai 2015 {#section_EF197410964E40D294D0D8024738CFBA}

<table id="table_14E7B35E06C84A258A21D09691B58354"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> </p> </td> 
   <td colname="col2"> <p>Les menus du volet de navigation de gauche ont été actualisés et réorganisés afin que vous puissiez accéder à tous les services principaux et solutions. Les modifications notables sont les suivantes : </p> 
    <ul id="ul_5BEBAB86B9234A239C4E2DAF8826D8E3"> 
     <li id="li_7FA9F64CE69144B8A8A92746BF40E5A1">La <span class="term"> bibliothèque d’audiences </span> et les <span class="term"> attributs du client</span> se trouvent maintenant sous <span class="term"> Audiences</span>. </li> 
     <li id="li_95D62A43AE6243DBB2A65EDB830D05C4">Le menu <span class="term"> Exchange </span> a été déplacé du menu déroulant Aide au rail de navigation de gauche. </li> 
     <li id="li_0443FD50C78446CD8AA27A4F272CAD31"> <span class="term">Solutions</span> a été supprimé. Toutes les solutions peuvent être lancées à partir du rail de navigation (partie inférieure). </li> 
    </ul> </td> 
  </tr> 
 </tbody> 
</table>

* Correction d’un problème empêchant la synchronisation des attributs de certains clients.
* Correction d’un problème qui empêchait l’affichage de la page [Documentation du produit Adobe Target](https://experienceleague.adobe.com/docs/target/using/integrate/a4t/a4t.html?lang=en) en japonais.
* Correction d’un problème qui empêchait l’utilisation du texte japonais dans les commentaires entre [!DNL Creative Cloud] et [!DNL Experience Cloud].

## Version 15.4.1 - 8 avril 2015 {#section_75634120CC934B3381EDEA7F6F976F0A}

<table id="table_3A6FBAE36558425A803B078150862C92"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Améliorations de l’administration : </p> 
    <ul id="ul_7D5FCBEFA262435D865CA1018BFB792E"> 
     <li id="li_6E98974CCB094ABBAB57C51ED56C3F00"> <span class="wintitle"> Admin Console</span> </li> 
     <li id="li_8CDAB6301FD44C3999EE4EEB1A0A2FD6">Prise en charge des entreprises et des Federated ID </li> 
    </ul> </td> 
   <td colname="col2"> <p>Les fonctionnalités de gestion des utilisateurs et des groupes ont été déplacées dans Admin Console. Le nouveau chemin de navigation est le suivant : </p> <p> <span class="uicontrol"> Experience Cloud</span> &gt; <span class="uicontrol">Administration</span> &gt; <span class="uicontrol">Lancer Admin Console</span></p> <p> Les Enterprise ID et les Federated ID sont également pris en charge. Utilisez des Enterprise ID, des Federated ID et des Adobe ID dans un même déploiement d’entreprise. Par exemple, utilisez les Adobe ID pour les utilisateurs susceptibles de recourir à d’autres produits et services Adobe. Utilisez des Enterprise ID ou des Federated ID pour les utilisateurs dont vous souhaitez gérer strictement les comptes. </p> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* Correction d’un problème empêchant la connexion unique entre le [!DNL Experience Cloud] et [!DNL Media Optimizer].

**Problèmes connus**

* La liaison et la dissociation de votre organisation de Dynamic Tag Management avec Experience Cloud ne fonctionnent pas pour les organisations Experience Cloud nouvellement créées. Adobe s’efforce de corriger ce problème et de restaurer les fonctionnalités normales avec la version de mai. En cas de problèmes lors de l’authentification unique à Dynamic Tag Management par le biais d’Experience Cloud, utilisez l’ancienne méthode de connexion à l’adresse [!DNL dtm.adobe.com].
* Un problème connu empêche le partage des audiences à partir des suites de rapports qui ne sont pas détenues par le compte Analytics lié. Nous nous efforçons de corriger le problème.

## Version 15.3.2 - 19 mars 2015 {#section_07760FD9CA43497FA8BDCCA990A24BFD}

<table id="table_54025DBE2D094FF1BE837BA60816C6DF"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Attributs du client </p> </td> 
   <td colname="col2"> <p>Si vous capturez les données clients d’entreprise dans une base de données de gestion de la relation client, vous pouvez les transférer dans une source de données d’attributs du client dans Experience Cloud. Une fois les données transférées, vous pouvez exécuter les rapports <span class="uicontrol">Profil du visiteur</span> &gt; <span class="uicontrol">Attributs du client</span> dans Analytics. </p> <p>Vous pouvez également utiliser les données transférées sous forme d’un segment d’audience dans <span class="keyword">Adobe Target</span>. </p> <p>Reportez-vous à la documentation du produit <a href="attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1" format="dita" scope="local">Attributs du client</a>. </p> <p> Pour plus d’informations sur la modernisation de vos solutions pour les services principaux, voir <a href="core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C" format="dita" scope="local"> Activation de vos solutions pour les services principaux</a>. </p> </td> 
  </tr> 
 </tbody> 
</table>

## Version 15.3.1 - 4 mars 2015 {#section_57CB69C044DD47BDBC1A1BEC38957551}

<table id="table_EB3FFBA2DF904546A5185EC9A63BBA98"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Groupe Mappage </p> </td> 
   <td colname="col2"> <p>La page Gestion des groupes a été remodelée en une interface administrative dans laquelle vous pouvez créer des groupes, ajouter des utilisateurs aux groupes et appliquer des autorisations à l’échelle de plusieurs solutions Experience Cloud. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Mappage de type « un à plusieurs » </p> </td> 
   <td colname="col2"> <p>Lors de la liaison de comptes de solution dans Experience Cloud, si vous disposez de plusieurs solutions et organisations, vous pouvez désormais mapper plusieurs produits et services à une seule organisation. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Activation </p> </td> 
   <td colname="col2"> <p> Le terme <a href="activation.md#concept_EE756B6B0A0643DAB8CA3A00E665406C" format="dita" scope="local">Activation</a> s’affiche maintenant dans le volet de navigation de gauche d’<span class="keyword">Experience Cloud</span>. <span class="wintitle"> </span> Le service  <span class="keyword"> Experience </span> Cloud, qui repose actuellement sur la technologie de gestion dynamique des balises, vous y oriente si vous cliquez dessus. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Mises à jour de la documentation - Services principaux </p> </td> 
   <td colname="col2"> <p>Ajout de la rubrique <a href="core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C" format="dita" scope="local"> Activation des solutions pour les services principaux</a> qui aide à la mise en œuvre des services principaux. </p> </td> 
  </tr> 
 </tbody> 
</table>

## Version 15.2.1 - 19 février 2015 {#section_BC694D5AE16A4E16B44B353ED67947F3}

Correctifs :

* Amélioration du workflow d’invitation par e-mail de l’utilisateur pour l’attribution des privilèges d’accès aux comptes.
* Correction d’un problème empêchant les ressources [!DNL Experience Cloud] et [!DNL Adobe Campaign] d’afficher des hiérarchies de dossiers identiques.
* Correction d’un problème empêchant la suppression des audiences qui faisaient partie des activités [!DNL Target] désactivées.
* Correction d’un problème en raison duquel l’icône Ajouter (plus) ne s’affichait pas sous [!UICONTROL Règles] sur la page [!UICONTROL Créer une audience].
* Amélioration de la prise en charge de l’interface d’Experience Cloud pour Internet Explorer 9.

## Version 15.1.1 - 15 janvier 2015 {#section_F1A352E928AF432E94CC0A289C345184}

Nouvelles fonctionnalités et correctifs dans l’interface de collaboration et de partage d’[!DNL Adobe Experience Cloud].

<table id="table_AD0A8CA760E64227BB04BA6B0E425E80"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Accès en lecture seule. </p> </td> 
   <td colname="col2"> <p>Les administrateurs peuvent désormais accorder aux utilisateurs non administrateurs un accès en lecture seule. </p> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* Correction d’un problème en raison duquel les fichiers PNG ne pouvaient pas être restitués sur une carte.
* Correction d’un problème de transfert par glisser-déplacer des fichiers vers Experience Cloud Assets.

**Problèmes connus**

* Les utilisateurs ne sont pas en mesure de partager des fichiers PowerPoint sur les panoramas.
* Pour que les changements apportés aux groupes et aux droits dans le module de gestion des utilisateurs entrent en vigueur, vous devez vous reconnecter.
* Certains utilisateurs peuvent rencontrer des problèmes lors du transfert de certains types de fichiers volumineux vers Experience Cloud Assets.
* Les utilisateurs peuvent ne pas disposer des liens sur leurs cartes Experience Cloud de Media Optimizer.
* Certains administrateurs peuvent rencontrer des problèmes lors de la liaison de leurs comptes après acceptation d’une invitation à rejoindre Experience Cloud.
* Les performances de l’interface d’Experience Cloud peuvent être amoindries lorsqu’elle est utilisée simultanément par plusieurs utilisateurs.
* Certains utilisateurs peuvent supprimer une ressource obsolète plutôt que de recevoir une notification d’erreur.
* Certains utilisateurs peuvent rencontrer des problèmes lorsqu’ils ouvrent une session simultanément dans deux navigateurs avec le même Adobe ID.
* Certains utilisateurs peuvent ne pas pouvoir rajouter un utilisateur Creative Cloud à un dossier partagé une fois l’utilisateur Creative Cloud supprimé.
* Pour certains utilisateurs, la notification qui survient lorsqu’un dossier est partagé d’Experience Cloud vers Creative Cloud peut être retardée.
* Certains utilisateurs peuvent rencontrer un problème lors du partage d’un dossier entre Experience Cloud et Creative Cloud.
* Certains utilisateurs peuvent rencontrer des problèmes lors de la création d’une audience dans une suite de rapports Analytics une fois les audiences partagées activées.
* Certains utilisateurs peuvent rencontrer des difficultés lors du transfert de ressources vers un panorama.

## Version 14.11.1 - 13 novembre 2014 {#section_A6CF1D4F27B9496892A89C983EB39102}

Problèmes connus :

* Certains utilisateurs peuvent supprimer une ressource obsolète plutôt que de recevoir une notification d’erreur.
* Certains fichiers [!DNL .png] ne peuvent pas être restitués sur une carte.
* Certains utilisateurs peuvent rencontrer des difficultés lors du transfert de ressources vers un panorama.
* Pour que les changements apportés aux groupes et aux droits dans le module de gestion des utilisateurs entrent en vigueur, vous devez vous reconnecter.
* Les administrateurs doivent se déconnecter puis se reconnecter pour voir les modifications apportées dans les paramètres du compte.
* Les utilisateurs ne sont pas en mesure de partager des fichiers PowerPoint sur les panoramas.
* Les performances de l’interface d’[!DNL Experience Cloud] peuvent être amoindries lorsqu’elle est utilisée simultanément par de nombreux utilisateurs.
* La synchronisation d’Adobe Experience Manager avec Creative Cloud ne fonctionne pas.

## Version 14.10.1 - 16 octobre 2014 {#section_E3A0F4423B814707AA3745E083500835}

Nouvelles fonctionnalités et correctifs dans l’interface de collaboration et de partage d’[!DNL Adobe Experience Cloud].

<table id="table_7C1ACE8108D54782AE128ACD35069DF5"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Modifier les autorisations d’utilisateurs </p> </td> 
   <td colname="col2"> <p>Les propriétaires d’un panorama peuvent désormais modifier les autorisations d’utilisateurs sur ce panorama. </p> <p> 
     <ol id="ol_B12251C510744538AF9BCE60ACB04016"> 
      <li id="li_87B3EDE9542B47CEBE0BE7F2D1DE844D">Sur le panorama, cliquez sur <span class="uicontrol">Paramètres</span>. </li> 
      <li id="li_0F4786B0E1E743069D082E7DC488A031">En regard de chaque propriétaire, spécifiez <span class="uicontrol">Propriétaire</span>, <span class="uicontrol">Observateur</span> ou <span class="uicontrol">Éditeur</span>. </li> 
     </ol> </p> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* La création d’une carte à partir d’un PDF et son partage sur le panorama renvoyaient un message d’erreur.

**Problèmes connus**

* Certains utilisateurs peuvent rencontrer des difficultés lors du transfert de ressources vers un panorama.
* Certains fichiers [!DNL .png] ne peuvent pas être restitués sur une carte.
* Pour que les changements apportés aux groupes et aux droits dans le module de gestion des utilisateurs entrent en vigueur, vous devez vous reconnecter.
* Certains utilisateurs peuvent ne pas être en mesure de créer une carte à partir d’un PDF et de la partager sur un panorama.
* Certains utilisateurs peuvent supprimer une ressource obsolète plutôt que de recevoir une notification d’erreur.
* Les utilisateurs ne sont pas en mesure de partager des fichiers PowerPoint sur les panoramas.
* Les performances de l’interface d’[!DNL Experience Cloud] peuvent être amoindries lorsqu’elle est utilisée simultanément par de nombreux utilisateurs.
* La liaison [!DNL Search&Promote] n’est pas accessible sur la page [!UICONTROL Organisations et accès aux produits].

## Version 14.9.1 - 18 septembre 2014 {#section_20F156A9CC2F4FC59C4970075C181D3A}

**Correctifs et améliorations**

* Lorsque vous accédez à [!DNL experience.adobe.com], le processus d’ouverture de session est désormais cohérent avec l’ouverture d’une session Adobe Creative Cloud.
* Sur la page Gérer les organisations, l’expérience de liaison (après réception d’une invitation) est maintenant cohérente pour chaque solution.

**Problèmes connus**

* Pour que les changements apportés aux groupes et aux droits dans le module de gestion des utilisateurs entrent en vigueur, vous devez vous reconnecter.
* Certains utilisateurs ne peuvent pas créer de carte à partir d’un PDF et la partager sur un panorama.
* Certains utilisateurs peuvent rencontrer des difficultés lors du transfert de ressources vers un panorama.
* Certains utilisateurs peuvent supprimer une ressource obsolète plutôt que de recevoir une notification d’erreur.
* Les utilisateurs ne sont pas en mesure de partager des fichiers PowerPoint sur les panoramas.
* Certains fichiers [!DNL .png] ne peuvent pas être restitués sur une carte.
* Les performances de l’interface d’[!DNL Experience Cloud] peuvent être amoindries lorsqu’elle est utilisée simultanément par de nombreux utilisateurs.
* La liaison [!DNL Search&Promote] n’est pas accessible sur la page [!UICONTROL Organisations et accès aux produits].
* Certains utilisateurs verront leurs contenus [!DNL Creative Cloud] supprimés de leur dossier si le contenu n’est plus partagé dans [!DNL Experience Cloud].

## Version 14.8.1 - 21 août 2014 {#section_03BF00F6A95A490C91BCC0A1988FA7AA}

Nouvelles fonctionnalités et correctifs dans l’interface de collaboration et de partage d’[!DNL Adobe Experience Cloud].

<table id="table_1E7DBEB5E83B4E4285B6FD1D718CD16D"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> </p> </td> 
   <td colname="col2"> <p>Vous pouvez maintenant accéder aux <span class="keyword">Adobe Mobile Services</span> à partir du volet de navigation à gauche. </p> </td> 
  </tr> 
 </tbody> 
</table>

**Problèmes connus**

* Pour que les changements apportés aux groupes et aux droits dans le module de gestion des utilisateurs entrent en vigueur, vous devez vous reconnecter.
* Certains utilisateurs peuvent ne pas être en mesure de créer une carte à partir d’un PDF et de la partager sur un panorama.
* Certains utilisateurs peuvent rencontrer des difficultés lors du transfert de ressources vers un panorama.
* Certains utilisateurs peuvent ne pas être en mesure de se connecter à [!DNL Target] depuis [!DNL Experience Cloud].
* Certains utilisateurs Audience Manager ne peuvent pas se connecter à [!DNL Experience Cloud].
* Certains utilisateurs peuvent supprimer une ressource obsolète plutôt que de recevoir une notification d’erreur.
* Les fichiers supprimés dans [!DNL Experience Cloud] ne le sont pas dans [!DNL Digital Asset Management].
* Les utilisateurs ne sont pas en mesure de partager des fichiers PowerPoint sur les panoramas.
* Certains fichiers [!DNL .png] ne peuvent pas être restitués sur une carte.
* Les performances de l’interface d’[!DNL Experience Cloud] peuvent être amoindries lorsqu’elle est utilisée simultanément par de nombreux utilisateurs.
* La liaison [!DNL Search&Promote] n’est pas accessible sur la page [!UICONTROL Organisations et accès aux produits].
* Certains utilisateurs verront leurs contenus [!DNL Creative Cloud] supprimés de leur dossier si le contenu n’est plus partagé dans [!DNL Experience Cloud].

## Version 14.7.1 - 24 juillet 2014 {#section_B22D4F830756463DB27BB4D508D9ADD5}

Nouvelles fonctionnalités et correctifs dans l’interface de collaboration et de partage d’[!DNL Adobe Experience Cloud].

**Problèmes connus**

* Les fichiers supprimés dans [!DNL Experience Cloud] ne le sont pas dans [!DNL Digital Asset Management].
* Le nom de certains utilisateurs d’[!UICONTROL Exchange] dans les commentaires peut apparaître sous forme d’un long identifiant à la place de leur nom réel.
* Certains fichiers [!DNL .png] ne peuvent pas être restitués sur une carte.
* La méthode de transfert de fichiers par glisser-déplacer prend en charge davantage de types de fichier. Pour de meilleurs résultats, transférez les fichiers à l’aide du composant [!UICONTROL Assets].
* La liaison [!DNL Search&Promote] n’est pas accessible sur la page [!UICONTROL Organisations et accès aux produits].
* Les utilisateurs d’[!DNL Exchange] doivent effacer leurs cookies pour améliorer leurs conditions d’utilisation.
* L’interface d’[!DNL Experience Cloud] peut ralentir lorsqu’elle est utilisée simultanément par de nombreux utilisateurs.
* Certains utilisateurs verront leurs contenus [!DNL Creative Cloud] supprimés de leur dossier si le contenu n’est plus partagé dans [!DNL Experience Cloud].
* Vous serez déconnecté après 15 minutes d’inactivité. En outre, la déconnexion à un emplacement vous déconnecte de [!DNL Experience Cloud].
* Certains utilisateurs ne pourront peut-être pas lier leurs comptes Audience Manager à [!DNL Experience Cloud].
* Les utilisateurs d’[!UICONTROL Exchange] peuvent uniquement afficher l’anglais dans le sélecteur de langues.

**Correctifs**

Aucun à signaler.

## Version 14.6.1 - 19 juin 2014 {#marketing_cloud_interface}

Nouvelles fonctionnalités et correctifs dans l’interface de collaboration et de partage d’[!DNL Adobe Experience Cloud].

**Amélioration**

<table id="table_C9BD63436BF0414B97B8D07387D1993B"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> Bouton <span class="wintitle">Enregistrer</span> dans les services Audiences </p> </td> 
   <td colname="col2"> <p>Lorsque vous créez une audience, le bouton <span class="wintitle">Enregistrer</span> sur la page <span class="wintitle">Créer une audience</span> reste maintenant désactivé tant que tous les champs requis ne sont pas renseignés. 
     <!--MAC-19712 --></p> </td> 
  </tr> 
 </tbody> 
</table>

**Problèmes connus**

* Les fichiers supprimés dans [!DNL Experience Cloud] ne le sont pas dans [!DNL Digital Asset Management].
* La méthode de transfert de fichiers par glisser-déplacer prend en charge davantage de types de fichier. Pour de meilleurs résultats, transférez les fichiers à l’aide du composant Assets.
* La liaison [!DNL Search&Promote] n’est pas accessible sur la page [!UICONTROL Organisations et accès aux produits].
* Les filtres appliqués aux rapports de tendance d’[!DNL Analytics] ne s’appliquent pas aux cartes dans [!DNL Experience Cloud].
* Certains utilisateurs ne sont pas en mesure de lier leur compte de gestion de l’audience à leur compte [!DNL Experience Cloud].
* Vous serez déconnecté après 15 minutes d’inactivité. En outre, la déconnexion à un emplacement vous déconnecte de l’Experience Cloud.
* Le nom de certains utilisateurs d’Exchange dans les commentaires peut apparaître sous forme d’un long identifiant à la place de leur nom réel.

**Correctifs**

* Correction d’un problème empêchant le transfert des vidéos vers les applications.

## Version 14.5.1 - 22 mai 2014 {#section_7E22B2CB3ABA4D6EAED8CA8EFDE5433E}

<table id="table_4E4B34EEE3D94D78BA1A1FBC62950559"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Experience Cloud Exchange </p> </td> 
   <td colname="col2"> <p> <span class="uicontrol"> Experience Cloud</span> &gt; <span class="uicontrol">Aide</span> &gt; <span class="uicontrol">Exchange</span></p> <p><span class="keyword">Experience Cloud</span> <span class="wintitle">Exchange</span> est une destination unique où vous pouvez rechercher des extensions Digital Marketing, les parcourir, les sélectionner, les payer et les télécharger via des applications. </p> <p>Les applications comprennent les connecteurs de données, des configurations personnalisées du produit principal d’Adobe, des applications tierces, des rapports et des cartes <span class="keyword"> Experience Cloud</span>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Audiences Experience Cloud </p> </td> 
   <td colname="col2"> <p> <span class="uicontrol"> Experience Cloud</span> &gt; <span class="uicontrol">Audiences</span></p> <p> Dans les services <span class="wintitle">Audiences</span>, vous pouvez créer, modifier et gérer des audiences, comme vous le faites avec les segments. Par exemple, vous pouvez créer un segment dans Reports &amp; Analytics, puis le partager dans <span class="wintitle"> Experience Cloud</span><span class="wintitle"> Audiences</span>. Une fois partagée, l’audience est disponible dans <span class="keyword">Adobe Target</span> pour les activités de campagne et dans Adobe Audience Manager pour la segmentation. </p> <p> <p>Remarque : Pour demander une activation dans Target, rendez-vous sur <a href="https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=X8SVES" format="http" scope="external"> https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=X8SVES</a>. </p> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> </p> </td> 
   <td colname="col2"> <p>Les utilisateurs qui sont mentionnés sur une carte <span class="keyword">Experience Cloud</span> disposent dorénavant d’autorisations sur celle-ci. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> </p> </td> 
   <td colname="col2"> <p>Les nouveaux utilisateurs d’Adobe peuvent lier leurs comptes Scene7 à Adobe ID et aux membres de leur équipe. Les administrateurs peuvent également dissocier des utilisateurs des comptes Scene7. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Synchronisation des ressources. </p> </td> 
   <td colname="col2"> <p> Vous pouvez partager des ressources dans Experience Manager Assets avec des Experience Cloud et des Creative Cloud. Toutes les modifications apportées à ces ressources sont répercutées dans les copies partagées des ressources dans Experience Cloud et Creative Cloud. </p> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* [!DNL Experience Cloud] n’était pas lié à [!DNL Adobe Target]. Ce problème se produisait lorsque la connexion à [!DNL Adobe Target] pouvait être utilisée sur plusieurs serveurs [!DNL Target].
* [!DNL Adobe Media Optimizer] ne créait pas automatiquement des utilisateurs lorsqu’un utilisateur était créé dans [!DNL Experience Cloud].
* Les options d’ajout de nouveaux utilisateurs dans les listes modifiables disparaissent temporairement lors de la saisie de texte.
* Il n’était pas possible de cliquer sur le lien Commentaires sur la carte des ressources.
* Après l’ajout d’une balise personnalisée à un fichier, aucune autre modification des métadonnées n’était conservée.
* Lors de la suppression d’une image dans les ressources, aucun message n’avertit que l’image est utilisée dans Adobe Target Essentials, si tel est le cas.
* Les performances de l’interface d’[!UICONTROL Experience Cloud] étaient faibles lorsque plusieurs utilisateurs l’utilisaient simultanément.
* La suppression d’une image d’[!UICONTROL Experience Cloud Assets] n’entraînait pas l’affichage d’un avertissement si celle-ci était utilisée dans [!DNL Adobe Target Essentials].
* Lorsque l’option **[!UICONTROL Mémoriser]** n’était pas sélectionnée lors de la connexion, l’utilisateur était déconnecté au bout de 15 minutes.
* Pour que toutes les modifications d’autorisation et de droit soient prises en compte, les utilisateurs devaient se déconnecter puis se reconnecter.
* La connexion à [!DNL Experience Cloud] prenait plus d’une seconde.
* Pour certains utilisateurs, la suppression des fichiers dans [!DNL Experience Cloud] ne s’est pas synchronisée avec [!DNL Digital Asset Management].
* Les utilisateurs étaient déconnectés après seulement 15 minutes d’inactivité du navigateur.
* Les utilisateurs n’étaient pas en mesure de partager des fichiers PowerPoint sur les panoramas.
* La mise en page visuelle de certains utilisateurs était médiocre dans Internet Explorer 10.

## Version 14.4.1 - 22 avril 2014 {#section_E2A699764E744D2E8D418E9A3D40AF6B}

<table id="table_D95C0DC64F2A4B47BAC83E504CFD6825"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Création de cartes à partir des rubriques d’aide </p> </td> 
   <td colname="col2"> <p>Après avoir activé la fonction Partager sur Adobe Experience Cloud dans la barre d’outils des signets de votre navigateur, vous pouvez désormais partager des pages d’aide à partir de l’URL du microsite. </p> <p> <b>Pour partager une rubrique d’aide</b> </p> 
    <ol id="ol_F94B816121494B0FA16CC07B0E96AED8"> 
     <li id="li_F47187D4B5FE46D3A51D257DD569B4D6"> <p>Dans <span class="keyword">Experience Cloud</span>, cliquez sur <span class="uicontrol">Administration</span>. </p> </li> 
     <li id="li_94EF58E7A4974B63951E14F72A710183"> <p>Faites glisser le bouton <span class="uicontrol">Partager sur Adobe Experience Cloud</span> vers la barre d’outils des signets. </p> </li> 
     <li id="li_69EEC4F25D8F4AD7AA106A10B7F50FF6"> <p>Accédez à une page d’aide (ou restez sur celle-ci), puis cliquez sur <span class="uicontrol">Partager sur Adobe Experience Cloud</span> dans la barre d’outils des signets de votre navigateur. </p> <p>Cette procédure permet de créer une carte que vous pouvez afficher dans <span class="wintitle">Experience Cloud</span>. </p> </li> 
    </ol> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* Après l’ajout d’une balise personnalisée à un fichier, aucune autre modification des métadonnées ne peut être conservée.
* Les utilisateurs doivent actualiser le panorama pour que les cartes supprimées disparaissent de la vue.
* Si l’option **[!UICONTROL Se souvenir de moi]** n’est pas cochée au cours de l’ouverture de session, l’utilisateur est déconnecté après 15 minutes.
* La page d’entrée de la solution [!DNL Analytics] présente des erreurs de mise en forme.
* Les utilisateurs doivent se déconnecter puis se reconnecter pour que tous les changements apportés aux autorisations et aux droits entrent en vigueur.
* Lors de la suppression d’une image dans les [!UICONTROL ressources], aucun message n’avertit que l’image est utilisée dans [!DNL Adobe Target Essentials], si tel est le cas.
* Il n’est pas possible de cliquer sur le lien Commentaires sur la carte des ressources.
* Les options d’ajout de nouveaux utilisateurs dans les listes modifiables disparaissent temporairement lors de la saisie de texte.
* La connexion à [!DNL Experience Cloud] dure plus d’une seconde.
* Les données partagées depuis [!DNL Media Optimizer] sont incorrectement représentées dans [!DNL Experience Cloud].
* Adobe [!DNL Media Optimizer] ne crée pas automatiquement les utilisateurs lorsqu’un utilisateur a été créé dans [!DNL Experience Cloud].
* [!DNL Experience Cloud] ne peut pas être lié à [!DNL Adobe Target] si la connexion à [!DNL Adobe Target] peut être utilisée sur plusieurs serveurs [!DNL Target].
* L’interface d’[!DNL Experience Cloud] peut ralentir lorsqu’elle est utilisée simultanément par de nombreux utilisateurs.
* La liaison [!DNL Search&Promote] n’est pas accessible dans la page des [!UICONTROL organisations et de l’accès aux produits].
* Les cartes de simulation [!DNL Adobe Media Optimizer] ne sont pas correctement restituées.
* Les filtres appliqués aux rapports de tendance d’[!DNL Analytics] ne sont pas appliqués aux cartes dans [!DNL Experience Cloud].
* Les filtres appliqués aux rapports de tendance d’Analytics ne sont pas appliqués aux cartes dans Experience Cloud.
* Certains fichiers Excel ou CSV ne peuvent pas être transférés sur un panorama.
* Certains utilisateurs peuvent ne pas arriver à lier leur compte de gestion de l’audience à leur compte [!DNL Experience Cloud].
* Certains utilisateurs peuvent rencontrer des erreurs lors du partage de segments [!DNL Analytics] dans [!DNL Experience Cloud].
* Certains utilisateurs peuvent ne pas parvenir à accéder aux sous-dossiers dans le [!UICONTROL sélecteur de ressources].
* Certains utilisateurs ne peuvent pas partager les gadgets AdLens dans [!DNL Experience Cloud].

## Version 14.3.1 - 13 mars 2014 {#section_5D142E3225E3477A84DC01B8197D39BC}

La version 14.3.1 est une version de maintenance qui se concentre sur la vitesse, la stabilité et la sécurité. Elle ne comprend aucune nouvelle fonctionnalité majeure.

**Correctifs**

* Ajout de la fonctionnalité de suppression de votre image d’avatar.
* Correction d’un problème qui vous empêchait d’annuler l’association à vos comptes [!DNL Adobe Media Optimizer].

**Problèmes connus**

* Lors de la suppression d’une image dans Experience Cloud Assets, aucun message n’avertit que l’image est utilisée dans Adobe Target Essentials, si tel est le cas.
* L’actualisation d’une carte à partir d’[!DNL Analytics] génère parfois un panier vide dans la carte étendue.
* Les utilisateurs doivent se déconnecter puis se reconnecter pour que tous les changements apportés aux autorisations et aux droits entrent en vigueur.
* Lorsque *`Remember me`* n’est pas sélectionné durant l’ouverture de session, l’utilisateur est déconnecté au bout de 15 minutes.
* La page d’entrée de la solution [!DNL Analytics] présente des erreurs de mise en forme.
* Il n’est pas possible de cliquer sur le lien Commentaires sur la carte des ressources.
* L’interface d’Experience Cloud peut ralentir lorsqu’elle est utilisée simultanément par de nombreux utilisateurs.
* Experience Cloud ne peut pas être lié à [!DNL Adobe Target] si la connexion à [!DNL Adobe Target] peut être utilisée sur plusieurs serveurs Target.
* La connexion à Experience Cloud dure plus d’une seconde.
* Après l’ajout d’une balise personnalisée à un fichier, aucune autre modification des métadonnées ne peut être conservée.
* [!DNL Adobe Media Optimizer] ne crée pas automatiquement les utilisateurs lorsqu’un utilisateur a été créé dans Experience Cloud.
* Les options d’ajout de nouveaux utilisateurs dans les listes modifiables disparaissent temporairement lors de la saisie de texte.
* Les données partagées depuis [!DNL Media Optimizer] sont incorrectement représentées dans Experience Cloud.
* Échec du partage des images Flickr.
* Les filtres appliqués aux rapports de tendance d’[!DNL Analytics] ne sont pas appliqués aux cartes dans Experience Cloud.
* Pour que les changements apportés aux groupes et aux droits dans le module de gestion des utilisateurs entrent en vigueur, vous devez vous reconnecter.
* La liaison [!DNL Search&Promote] n’est pas accessible dans les [!UICONTROL organisations et l’accès aux produits].
* Les utilisateurs doivent actualiser le panorama pour que les cartes supprimées disparaissent de la vue.
* Certains fichiers Excel ou CSV ne peuvent pas être transférés sur un panorama.
* Les cartes de simulation [!DNL Adobe Media Optimizer] ne sont pas correctement restituées.
* Certains fichiers PNG ne peuvent pas être restitués sur une carte.
* Les commentaires bêta ne peuvent pas être envoyés.

## Version 14.2.1 - 24 février 2014 {#section_5AD81B0737C843AFB4BE9C4420D70EB3}

<table id="table_DFAB002358C94A17A7F91DAB323A488F"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Fonctionnalité </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>OEmbed </p> </td> 
   <td colname="col2"> <p> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Actualiser les données </p> </td> 
   <td colname="col2"> <p> 
     <!--MAC-18174-->L’icône <span class="uicontrol">Actualiser les données</span> pour un graphique sur une carte est maintenant masquée si la solution ne permet pas d’actualiser les données. </p> </td> 
  </tr> 
 </tbody> 
</table>

**Correctifs**

* Correction d’un problème qui empêchait l’application de filtres de segments sur les rapports [!DNL Analytics] partagés.
* Correction d’un problème en raison duquel les solutions étaient présentées comme liées sur la page [!UICONTROL Solutions Experience Cloud], même si les comptes de ces solutions n’étaient pas liés.
* Correction d’un problème qui empêchait les clients d’[!DNL Adobe Target] en Asie de cliquer sur le bouton **[!UICONTROL Continuer vers Experience Cloud]** sur la page de liaison.
* Correction d’un problème qui empêchait le partage des vidéos YouTube.