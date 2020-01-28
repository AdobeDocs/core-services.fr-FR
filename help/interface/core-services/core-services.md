---
description: Mettez en œuvre Experience Cloud et devenez administrateur. Ce processus modernise vos solutions en ajoutant des fonctionnalités de services principaux tels que les attributs du client et les audiences.
keywords: core services;customer attributes
seo-description: Mettez en œuvre Experience Cloud et devenez administrateur. Ce processus modernise vos solutions en ajoutant des fonctionnalités de services principaux tels que les attributs du client et les audiences.
seo-title: Activation des solutions Experience Cloud pour les services principaux
solution: Experience Cloud
title: Activation des solutions pour les services principaux
uuid: 5820060f-9b18-4339-81e0-401d964f7a03
translation-type: tm+mt
source-git-commit: e2cfce353d4b1f21c08b7ddf76e491c6aeba03ba

---


# Activation des solutions pour les services principaux

Pour les clients existants, découvrez comment moderniser les implémentations de votre solution et implémenter Experience Cloud afin d’utiliser des fonctionnalités telles que les attributs du client et les audiences.

<!-- <p>https://marketing-beta.adobe.com/resources/help/core/core-services.html </p> 
<p>https://adobe.sharepoint.com/sites/AGSConsulting/CoreServices/PA/_layouts/15/start.aspx#/ </p> -->

<!-- Core services architecture and data flow wiki: https://wiki.corp.adobe.com/pages/viewpage.action?pageId=1004285689 -->

## Étape 1. Rejoindre Experience Cloud et devenir administrateur {#section_2423F0BD3DF642658103310EE5EA6154}

Procédez comme suit pour rejoindre Experience Cloud :

![](assets/step1_icon.png) Assurez-vous d’être en possession des SKU d’Adobe Analytics ou d’Adobe Target appropriées.

* **Adobe Analytics :** Standard ou Premium (et non la SKU SiteCatalyst héritée).
* **Adobe Target :** Standard ou Premium.

>[!NOTE]
>
>Pour Target, mbox.js permet de migrer vers at.js. Voir [Mise à niveau à partir d’at.js 1. x à at.js 2. x](https://docs.adobe.com/content/help/en/target/using/implement-target/client-side/upgrading-from-atjs-1x-to-atjs-20.html).

![](assets/step2_icon.png) Modernisez votre mise en œuvre et configurez votre statut d’administrateur.


1. Suivez les étapes indiquées ci-dessous dans [Déploiement du service d’Experience Cloud ID](../core-services/core-services.md#section_3C9F6DF37C654D939625BB4D485E4354).
1. Contactez votre gestionnaire de compte et commencez le processus de configuration pour Experience Cloud.

![](assets/step3_icon.png)[!UICONTROL  Gestion des utilisateurs et des produits dans Admin Console].

**Accès administrateur**

After you are an administrator, you can log in at [experiencecloud.adobe.com](https://experiencecloud.adobe.com).

Le lien **[!UICONTROL Administration]**apparaît dans le menu Experience Cloud.

Voir [Administration des utilisateurs et des produits Experience Cloud](../admin-getting-started/admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909) pour obtenir de l’aide.

**Accès utilisateur**

Pour se connecter à Experience Cloud, les utilisateurs doivent remplir les conditions suivantes :


1. Posséder un Adobe ID.
1. Sign in at [experiencecloud.adobe.com](https://experiencecloud.adobe.com).
1. Appartenir à un groupe de solutions mappé à un groupe d’entreprise.
1. Si nécessaire, liez leurs comptes de solution à leur Adobe ID (comme décrit ci-après).

![](assets/step4_icon.png) Facultatif : liez les comptes d’utilisateurs existants.

Most likely, you have users who are already members of solution groups, such an Analytics group that you previously managed in [!UICONTROL Analytics] > [!UICONTROL Admin Tools].

Lorsque vous mappez ces groupes à des groupes d’entreprise Experience Cloud, les utilisateurs doivent lier manuellement les informations de connexion de leur compte de solution avec leur Adobe ID.

Voir [Liaison de comptes dans Experience Cloud](../admin-getting-started/organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1).

> [!NOTE]
> 
> Une fois le mappage de groupes d’entreprise et de solution effectué, les nouveaux utilisateurs sont liés automatiquement. (Les informations de connexion de la solution sont automatiquement créées et liées à leur Adobe ID.)

Les sections suivantes expliquent comment moderniser votre mise en œuvre. Ceci permet d’activer les services principaux dans Experience Cloud.

## Étape 2. Mise en oeuvre du service  Experience Cloud ID à l’aide du lancement [!UICONTROL de la plateforme]Experience ou de la gestion  dynamique des balises {#section_3C9F6DF37C654D939625BB4D485E4354}

Le service [!UICONTROL d’ID] Experience Cloud fournit un ID commun pour l’intégration inter-solutions. Il fournit une identification des visiteurs interdomaines ainsi qu’un chemin d’accès pour le ciblage et la personnalisation inter-périphériques/navigateurs en fonction des données de gestion de la relation client transférées via les attributs [!UICONTROL du]client.

The simplest method for enabling Experience Cloud core services is to activate it automatically for Analytics and Target via the [Experience Cloud ID service tool](https://docs.adobe.com/content/help/en/launch/using/implement/solutions/idservice-save.html) in [!UICONTROL Experience Platform Launch], or [!UICONTROL Dynamic Tag Management]. (Le lancement de la plateforme d’expérience est vivement recommandé.)

![](assets/menu-activation-shell.png)

For complete Experience Cloud ID service help (formerly, visitor ID), go [here](https://docs.adobe.com/content/help/en/id-service/using/home.html).

**Vous n’utilisez pas[!UICONTROL le lancement]de plateforme d’expérience ou la gestion[!UICONTROL dynamique des balises]?**

If you are not using [!UICONTROL Experience Platform Launch] or [!UICONTROL Dynamic Tag Management], manually implement the ID service via the JavaScript Deployment ([!DNL VisitorAPI.js]), as follows:

1. [Mise en œuvre du service Experience Cloud ID pour Analytics](https://docs.adobe.com/content/help/en/id-service/using/implementation/setup-analytics.html).

   Adobe recommande également de paramétrer des [ID client](https://docs.adobe.com/content/help/en/id-service/using/reference/authenticated-state.html) supplémentaires. Ces identifiants sont associés à chaque visiteur et activent les fonctionnalités actuelles et futures dans Experience Cloud.

1. Mettez à jour le fichier [!DNL s_code] existant vers la version H.27.3 ou ultérieure ou le fichier [!DNL AppMeasurement.js] vers la version 1.4 ou ultérieure.

   Ces fichiers peuvent être téléchargés dans le [Gestionnaire de code](https://docs.adobe.com/content/help/en/analytics/admin/admin-tools/code-manager-admin.html) des outils d’administration Analytics.

   (Le [guide de mise en œuvre de JavaScript](https://docs.adobe.com/content/help/en/analytics/implementation/javascript-implementation/javascript-implementation-overview.html) est disponible si vous avez besoin d’informations complémentaires sur [!DNL AppMeasurement.js].)

1. Synchronisez l’ID client pour Analytics. Voir [Analytics - Synchronisation de l’ID client](../core-services/core-services.md#section_AD473A6A21C1446498E700363F9A8437) (ci-dessous).

## Analytics et Target - Synchronisation de l’ID client {#section_AD473A6A21C1446498E700363F9A8437}

As a part of setting up the Experience Cloud ID service, Adobe recommends for Analytics and [!DNL Target] that you synchronize your [customer IDs](https://docs.adobe.com/content/help/en/id-service/using/reference/authenticated-state.html) with the Experience Cloud.

In Adobe Target, the `mbox3rdpartyid` needs to get the customer ID and send it to [!DNL Target]. (Voir [Utilisation d’attributs du client](https://docs.adobe.com/content/help/en/target/using/audiences/visitor-profiles/working-with-customer-attributes.html) dans [!DNL Target].)

Chaque fois qu’un visiteur s’authentifie sur votre site ou s’identifie d’une autre manière, votre mise en œuvre doit afficher l’ID client CRM sur la page dans l’application. Par la suite, vous pouvez utiliser l’appel de fonction approprié pour synchroniser votre ID client avec Experience Cloud. Cette synchronisation stocke l’ID client CRM du visiteur dans Experience Cloud et active les attributs de ce client en vue d’utiliser Experience Cloud.

Par exemple, supposons que Robert a l’identifiant de client `52mc210tr42` dans votre système de gestion de la relation client. Quand Robert s’authentifie sur votre site, vous devez exposer cet identifiant sur la page, puis le synchroniser de l’une des deux façons suivantes :

* Appelez `visitor.setCustomerIDs({"crm_id":"52mc210tr42"})` à l’aide du service d’identification des visiteurs. Ou,
* Renseignez *`Customer ID (52mc210tr42)`*dans une prop ou une eVar.

L’identifiant de client doit être défini dans chaque appel au serveur [!DNL Analytics] où il est connu.

### SDK mobiles

Voir la section Service *d’ID* Experience Cloud pour obtenir des exemples de syntaxe sur la définition d’identifiants de client supplémentaires dans les applications mobiles [Android](https://docs.adobe.com/content/help/en/mobile-services/android/overview.html) et [iOS](https://docs.adobe.com/content/help/en/mobile-services/ios/overview.html) .

### Activation des attributs pour les données d’historique

Les données d’attribut du client sont disponibles une fois les visiteurs connectés. Si vous n’avez pas encore mis en œuvre le dernier service d’Experience Cloud ID et que vous avez effectué le suivi historique des ID client dans une variable prop ou eVar, vous pouvez appeler un processus qui envoie les connexions historiques vers Experience Cloud. Grâce à ce processus, vous pouvez commencer à utiliser immédiatement les attributs du client.

Contactez l’assistance clientèle pour activer les données d’historique.

## Étape 3. Mapper des suites de rapports à une organisation Experience Cloud {#section_7B08516B01BA421681DF03D0E86CE3BA}

Experience Cloud services (such as Experience Cloud ID service and the [!UICONTROL People service]) are associated with an Experience Cloud organization instead of an individual report suite. Afin de garantir le bon fonctionnement de ces services, chaque suite de rapports doit être mappée à une organisation Experience Cloud.

Voir [Mappage de suites de rapports à une organisation](report-suite-mapping.md).

## Étape 4. (Adobe Analytics) Moderniser le code AppMeasurement d’Analytics {#section_1798D9D0F05C47E29816AC4EEB9A0913}

Vérifiez que vous vous trouvez sur le réseau RDC (regional data collection). Si votre domaine de collecte des données est [!DNL omtrdc.net] ou si votre CNAME est mappé à [!DNL omtrdc.net], vous utilisez le service RDC. Voir [Transition vers RDC](https://docs.adobe.com/content/help/en/analytics/technotes/rdc/regional-data-collection.html) (en anglais) pour en savoir plus. If you are using first-party cookies, refer to [CNAME and the Experience Cloud ID Service](https://docs.adobe.com/content/help/en/id-service/using/reference/analytics-reference/cname.html) for information about data collection CNAMEs and cross-domain tracking.

Il vous est recommandé d’actualiser votre mise en œuvre Analytics en mettant à jour vos bibliothèques JavaScript, y compris l’API visiteur. Un moyen simple d’accomplir cette procédure consiste à ajouter un outil [!DNL Adobe Analytics] à Dynamic Tag Management, en spécifiant *`Automatic`*comme méthode de configuration.

In [!UICONTROL Dynamic Tag Management], click **[!UICONTROL <Web Property Name>]** > **[!UICONTROL Aperçu]** >**[!UICONTROL  Ajouter un outil]** > **[!UICONTROL Adobe Analytics]**. Voir[Paramètres d’Adobe Analytics](https://docs.adobe.com/content/help/en/dtm/using/tools/analytics-dtm.html)à la rubrique Dynamic Tag Management pour plus d’informations sur le déploiement.

## Etape 5. (Adobe Target) Moderniser la mise en œuvre d’Adobe Target {#section_C2F4493C7A36406DAE2266B429A4BD24}

* It is recommended that you add an [Adobe Target extension](https://docs.adobe.com/content/help/en/launch/using/extensions-ref/adobe-extension/targetv2-extension/adobe-target-extension-v2.html) in [!UICONTROL Experience Platform Launch], so that your library retrieval is automatic. Vous pouvez également configurer l’extension [du service](https://docs.adobe.com/content/help/en/launch/using/extensions-ref/adobe-extension/id-service-extension/overview.html) Experience Cloud ID pour Target (et d’autres solutions) à l’aide du lancement [!UICONTROL de la plateforme]d’expérience. The [!UICONTROL Experience Cloud ID service] update **is required** for [!UICONTROL Target] to use core services. (Si vous utilisez la gestion [!UICONTROL dynamique des balises], ajoutez un outil [](https://docs.adobe.com/content/help/en/dtm/using/tools/target.html)Adobe Target. You can also use [!UICONTROL Dynamic Tag Management] to deploy the Experience Cloud ID service for Target.)
* Si vous n’utilisez pas le lancement [!UICONTROL de la plateforme] d’expérience ou la gestion [!UICONTROL dynamique des balises], [mettez manuellement à jour votre bibliothèque](https://docs.adobe.com/content/help/en/target/using/implement-target/client-side/mbox-implement/target-download-config-mbox.html) de mbox.
* Demandez l’accès afin d’utiliser Adobe Analytics comme source de création de rapports pour [!DNL Adobe Target]. [!DNL Target]Les données de et des données sont combinées dans le même appel serveur durant le traitement afin que les visiteurs soient connectés entre les deux solutions. [!DNL Analytics] Voir [Analytics pour l’implémentation de Target](https://docs.adobe.com/content/help/en/target/using/integrate/a4t/a4t.html).
* 
   >[!IMPORTANT]
   >
   >Tous les clients Analytics sont déjà configurés pour les services principaux, tels que les attributs du client. Si vous n’êtes pas client d’Analytics, contactez le service à la clientèle pour demander à recevoir les privilèges d’accès.

## Etape 6. Vérifier la mise en œuvre des services principaux {#section_E641782A0F4F44AF8C9C91216BE330D5}

Appliquez la procédure suivante pour vérifier que le service d’Experience Cloud ID est correctement mis en œuvre sur votre site.

1. Effacez les cookies de votre site afin de pouvoir visualiser la requête du service d’Experience Cloud ID (cette requête est émise lors de la première visite, puis environ une fois par visiteur et par semaine).
1. À l’aide d’un analyseur de paquets ou du volet des réseaux dans un débogueur de navigateur web, recherchez une requête envoyée à [!DNL dpm.demdex.net].
1. Vérifiez que la réponse contient `d_mid` et une valeur, par exemple : `_setMarketingCloudFields({"d_mid":"4235...`
1. Verify that the Analytics request contains the `mid` parameter (the Experience Cloud ID). During the grace period (if it is enabled), you should also see an `aid` parameter (the Analytics visitor ID).

Réponse attendue contenant le service d’Experience Cloud ID :

![](assets/mac_id_response.png)

Demande d’image Analytics contenant l’ID Experience Cloud (également appelé `mid` identifiant _de_ visiteur) :

![](assets/mid.png)

Experience Cloud ID dans la requête de mbox :

![](assets/mbox_request.png)

**Qu’est-ce que la période de grâce ?**

Une fois que vous avez déployé le service Experience Cloud ID, les nouveaux visiteurs ne reçoivent plus d’Analytics Experience Cloud ID de votre serveur de collecte de données. Si le service Experience Cloud ID n’a pas encore été mis en œuvre sur certaines sections de votre site, l’Experience Cloud ID n’est pas reconnu lorsque les visiteurs parcourent ces sections et un identifiant visiteur Analytics hérité est attribué aux visiteurs. Ce comportement peut être à l’origine d’un certain nombre de problèmes, notamment des visites en double et des attributions incorrectes.

Si, par exemple, la section Assistance de votre site est gérée dans un système de gestion de contenu distinct, il se peut que vous ayez un fichier JavaScript Analytics différent pour cette section. Si vous déployez l’ID Experience Cloud sur votre site principal avant de déployer le service d’ID sur le site d’assistance, les nouveaux visiteurs reçoivent un Analytics ID hérité lorsqu’ils visitent la section d’assistance et les visites qui s’étendent sur les deux sections du site sont signalées comme des visites différentes.

Le déploiement du service Experience Cloud ID sur les sites qui utilisent plusieurs fichiers JavaScript ou d’autres technologies (telles que Flash) peut entraîner des problèmes de coordination car vous devez activer le service Experience Cloud ID sur toutes les parties de votre site en même temps. En configurant une période de grâce, les nouveaux visiteurs peuvent continuer à recevoir un identifiant visiteur Analytics du service d’ID afin que les visiteurs puissent être identifiés de manière cohérente sur les sections de votre site qui n’ont pas été mises à niveau pour utiliser le service d’identification des visiteurs.

## Étape 7. Gérer les utilisateurs et les produits {#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF}

Once you are up and running, navigate to the [Admin Console](https://adminconsole.adobe.com/), where you can manage users and product profiles.

![](assets/menu-administration-shell.png)

Voir [Gestion des utilisateurs et des produits Experience Cloud](../admin-getting-started/admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909).

**Attributs du client**

<!-- <p> 
 <note type="important">
  To use the Customer Attributes feature, users must belong to the 
  <span class="term"> Adobe Customer Attributes</span> group, and to solution-level groups (Analytics or Target). 
 </note> </p> 
 -->

Users that are added to the [!UICONTROL Customer Attributes] group will see the [!UICONTROL Customer Attributes] menu item on the left side of the Experience Cloud interface

## Étape 8. Commencer à utiliser les services principaux {#section_960C06093623462E8EA247B3E97274A1}

Profitez des fonctions de services principaux suivantes :

![](assets/menu-audiences-shell.png)

**[!UICONTROL Personnes]> Attributs[!UICONTROdu client]**

Si vous capturez les données clients d’entreprise dans une base de données de gestion de la relation client, vous pouvez les transférer dans une source de données d’attributs du client dans Experience Cloud. Une fois le transfert effectué, utilisez les données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

Voir [Attributs du client](../attributes/attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1)

**[!UICONTROL Personnes]> Bibliothèque[!UICONTROL d’audiences]**

Experience Cloud [!UICONTROL Audiences] is the interface that lets you create audiences, combine existing audiences to create composite audiences, and view all shared audiences.

Voir [Audiences](../audience-library/audience-library.md#topic_679810123CAA4E0CA4FA3417FB0100C7)

<!-- aam_mc.xml -->

## Stockage des données et divulgation de la confidentialité

Le recours au profilage d’audiences en temps réel et à d’autres services principaux du composant Personnes d’Adobe [!DNL Experience Cloud] peut avoir une influence sur le centre de données (et le pays) où se trouvent vos données. Specifically, because the core services of the Adobe [!DNL Experience Cloud] leverage Adobe Audience Manager, data used within the [!UICONTROL People] service must reside within Audience Manager servers in the United States.

When leveraging core services made available via the [!UICONTROL People] service, the types of data sent from other Adobe products to audience management are:

* Paires clé/valeur [!DNL Analytics] (Props, eVars, variables de liste, etc.). Par défaut, les lignes des journaux contiennent l’adresse IP, notamment le dernier octet de l’adresse IP (en supposant que l’adresse IP n’a pas été modifiée par les paramètres de masquage d’Adobe [!DNL Analytics]).
* Caractéristiques et segments pour lesquels les visiteurs sont inclus selon les règles configurées dans Audience Manager.
* (Facultatif) Un ou plusieurs de vos identifiants. Selon votre mise en œuvre du service d’identifiant, vous envoyez peut-être également un ou plusieurs de vos identifiants, tels que les identifiants CRM ou des adresses électroniques hachées. Si ces données sont envoyées à Adobe [!DNL Analytics], elles sont transférées à la gestion de l’audience d’Adobe. Adobe recommande de ne pas fournir de données personnelles à Adobe [!DNL Analytics]. Utilisez un hachage à sens unique pour rendre anonymes les données avant de les envoyer à Adobe.
* Segments provenant d’[!DNL Analytics] au moyen de la fonctionnalité de partage des segments principale.
* Le cookie demdex.net est défini si les cookies tiers ne sont pas bloqués. The `AMCV_###@AdobeOrg` first-party cookie is always set with the Experience Cloud ID service.

Tous ces éléments de données sont transmis à Adobe Audience Manager sous forme de fichiers journaux. Audience Manager traite et stocke ces données aux États-Unis. Audience Manager ne permet pas de stocker ni de traiter ces données en dehors des États-Unis.

**Cookies et exclusions**

Le recours au profilage d’audiences en temps réel entraîne l’utilisation du cookie d’Audience Manager, en plus des cookies utilisés pour [!DNL Analytics] et [!DNL Target].

Si vous souhaitez proposer la fonctionnalité d’exclusion adaptée, les visiteurs de votre site doivent ajouter l’exclusion d’Audience Manager à votre processus d’exclusion.

Pour obtenir des instructions, reportez-vous au document [Adobe Experience Cloud : mise en œuvre des exclusions Adobe](https://docs.adobe.com/content/help/en/analytics/implementation/javascript-implementation/data-collection/opt-out.html).

Consultez la section [CNAME de collection de données et suivi interdomaines](https://docs.adobe.com/content/help/en/id-service/using/reference/analytics-reference/cname.html) pour en savoir plus sur l’activation du suivi interdomaines.
