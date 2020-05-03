---
description: Mettez en œuvre Experience Cloud et devenez administrateur. Ce processus modernise vos solutions pour des fonctionnalités telles que les attributs et les audiences du client.
keywords: core services;customer attributes
seo-description: Mettez en œuvre Experience Cloud et devenez administrateur. Ce processus modernise vos solutions pour des fonctionnalités telles que les attributs et les audiences du client.
seo-title: Activation des solutions Experience Cloud pour les services principaux
solution: Experience Cloud
title: Activation des solutions pour les services principaux
index: true
translation-type: tm+mt
source-git-commit: 31811e718be130612c8688e80084cb7579e94f47

---


# Activation des solutions pour les services principaux

Pour les clients existants, apprenez à moderniser vos implémentations de solution et à mettre en oeuvre Experience Cloud afin que vous puissiez utiliser des fonctionnalités telles que les attributs et les audiences du client. Pour ce faire, vous allez :

1. [Rejoindre Experience Cloud et devenir administrateur](#section_2423F0BD3DF642658103310EE5EA6154)
1. [Mise en oeuvre du service d’ID Experience Cloud](#section_3C9F6DF37C654D939625BB4D485E4354)
1. [Mappage des suites de rapports à une organisation Experience Cloud](#section_7B08516B01BA421681DF03D0E86CE3BA)
1. [Mise à jour de votre code Analytics AppMeasurement](#section_1798D9D0F05C47E29816AC4EEB9A0913)
1. [Mettre à jour votre mise en oeuvre Adobe Cible](#section_C2F4493C7A36406DAE2266B429A4BD24)
1. [Vérifier la mise en œuvre des services principaux](#section_E641782A0F4F44AF8C9C91216BE330D5)
1. [Gérer les utilisateurs et les produits](#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF)
1. [Commencer à utiliser les services principaux](#section_960C06093623462E8EA247B3E97274A1)

## Étape 1. Rejoindre Experience Cloud et devenir administrateur {#section_2423F0BD3DF642658103310EE5EA6154}

Procédez comme suit pour rejoindre Experience Cloud :

![](assets/step1_icon.png) Assurez-vous d’être en possession des SKU d’Adobe Analytics ou d’Adobe Target appropriées.

* **Adobe Analytics :** Standard ou Premium (et non le SKU hérité). [!DNL SiteCatalyst]
* **Adobe Cible :** Standard ou Premium.

>[!NOTE]
>
>Par exemple, [!DNL Target]migrez vers at.js depuis [!DNL mbox.js]. See [Upgrading from at.js 1. x to at.js 2. x](https://docs.adobe.com/content/help/en/target/using/implement-target/client-side/upgrading-from-atjs-1x-to-atjs-20.html).

![](assets/step2_icon.png) Modernisez votre mise en œuvre et configurez votre statut d’administrateur.

1. Suivez les étapes ci-dessous dans [Déploiement du service [!UICONTROL d’ID]](../core-services/core-services.md#section_3C9F6DF37C654D939625BB4D485E4354)Experience Cloud.
1. Contactez votre gestionnaire de compte et début le processus de mise en service d’Experience Cloud.

![](assets/step3_icon.png)[!UICONTROL  Gestion des utilisateurs et des produits dans Admin Console].

### Connexion administrateur

After you are an administrator, you can log in at [experiencecloud.adobe.com](https://experiencecloud.adobe.com).

Le lien **[!UICONTROL Administration]** apparaît dans le menu Experience Cloud.

Voir [Administration des utilisateurs et des produits Experience Cloud](../admin-getting-started/admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909) pour obtenir de l’aide.

### Connexion utilisateur

Pour se connecter à Experience Cloud, les utilisateurs doivent :

1. Possédez un Adobe ID (ou Enterprise ID pour votre société).
1. Sign in at [experiencecloud.adobe.com](https://experiencecloud.adobe.com).
1. Appartenir à un groupe de solutions mappé à un groupe d’entreprise.
1. Si nécessaire, liez leurs comptes de solution à leur Adobe ID (comme décrit ci-dessous).

![](assets/step4_icon.png) Facultatif : liez les comptes d’utilisateurs existants.

Il est probable que vous ayez des utilisateurs qui sont déjà membres de groupes de solutions, tels qu’un groupe Analytics que vous avez précédemment géré dans [!UICONTROL Analytics] > Outils d’administration.

Lorsque vous mappez ces groupes à des groupes d’entreprise Experience Cloud, ces utilisateurs doivent lier manuellement les informations d’identification de leur compte de solution à leur Adobe ID.

Voir [Liaison de comptes dans Experience Cloud.](../admin-getting-started/organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1)

>[!NOTE]
>
>Une fois le mappage de groupes d’entreprise et de solution effectué, les nouveaux utilisateurs sont liés automatiquement. (Les informations d’identification de la solution sont automatiquement créées et liées à leur Adobe ID.)

Les sections suivantes décrivent comment moderniser votre mise en oeuvre. La modernisation de votre mise en oeuvre active les services principaux dans Experience Cloud.

## Étape 2. Mise en oeuvre du service  d’ID d’expérience à l’aide du lancement [!UICONTROL de la plateforme]d’expérience ou de la gestion [!UICONTROL dynamique des balises] {#section_3C9F6DF37C654D939625BB4D485E4354}

Le service [!UICONTROL d’ID] Experience Cloud fournit un ID commun pour l’intégration inter-solutions. Il fournit une identification des visiteurs interdomaines et un chemin d’accès pour le ciblage et la personnalisation inter-périphériques/navigateurs basés sur les données de gestion de la relation client transférées via les attributs du client.

La méthode la plus simple pour activer les services principaux d’Experience Cloud consiste à les activer automatiquement pour Analytics et Adobe Cible via l’extension [du service d’ID](https://docs.adobe.com/content/help/fr-FR/launch/using/implement/solutions/idservice-save.html) Experience Cloud dans le lancement [!UICONTROL de la plateforme]d’expérience, ou via l’outil ECID dans la gestion dynamique des balises. (le lancement de la plate-forme d’expérience est fortement recommandé.)

![](assets/menu-activation-shell.png)

Pour obtenir l’aide complète du service d’ID d’expérience Cloud (anciennement, ID de visiteur), rendez-vous [ici](https://docs.adobe.com/content/help/fr-FR/id-service/using/home.html).

**Vous n’utilisez pas le lancement[!UICONTROL de la plateforme]d’expérience ou la gestiondynamique des balises ?**

If you are not using [!UICONTROL Experience Platform Launch] or [!UICONTROL Dynamic Tag Management], manually implement the ID service via the JavaScript Deployment ([!DNL VisitorAPI.js]), as follows:

| Tâche | Description |
| -----------| ---------- |  
| [Mise en œuvre du service Experience Cloud ID pour Analytics](https://docs.adobe.com/content/help/en/id-service/using/implementation/setup-analytics.html) | Adobe recommande également de définir d’autres identifiants [de](https://docs.adobe.com/content/help/fr-FR/id-service/using/reference/authenticated-state.html)client. Ces identifiants sont associés à chaque visiteur et permettent d’activer les fonctionnalités actuelles et futures dans Experience Cloud. |
| Mettez à jour le fichier [!DNL s_code] existant vers la version H.27.3 ou ultérieure ou le fichier [!DNL AppMeasurement.js] vers la version 1.4 ou ultérieure. | Ces fichiers peuvent être téléchargés dans le Gestionnaire [de](https://docs.adobe.com/content/help/en/analytics/admin/admin-tools/code-manager-admin.html) code des outils d’administration Analytics.  (Le guide de mise en oeuvre [](https://docs.adobe.com/content/help/en/analytics/implementation/javascript-implementation/javascript-implementation-overview.html) JavaScript est disponible si vous avez besoin d’informations supplémentaires sur [!DNL AppMeasurement.js].) |
| Synchronisation de l’ID de client pour Analytics | See [Analytics - synching the customer ID](../core-services/core-services.md#section_AD473A6A21C1446498E700363F9A8437) (below). |

## Analytics &amp; Adobe Target - synching the customer ID {#section_AD473A6A21C1446498E700363F9A8437}

As a part of setting up the Experience Cloud ID Service, Adobe recommends for Analytics and [!DNL Target] that you synchronize your [customer IDs](https://docs.adobe.com/content/help/fr-FR/id-service/using/reference/authenticated-state.html) with the Experience Cloud.

In Adobe Target, the `mbox3rdpartyid` needs to get the customer ID and send it to [!DNL Target]. (Voir [Utilisation des attributs](https://docs.adobe.com/content/help/fr-FR/target/using/audiences/visitor-profiles/working-with-customer-attributes.html) du client dans [!DNL Target].)

Chaque fois qu’un visiteur s’authentifie sur votre site ou s’identifie d’une autre manière, votre mise en œuvre doit afficher l’ID client CRM sur la page dans l’application. Par la suite, vous pouvez utiliser l’appel de fonction approprié pour synchroniser votre ID client avec Experience Cloud. Cette synchronisation stocke l’ID de client de la gestion de la relation client du visiteur dans Experience Cloud et active les attributs de ce client pour une utilisation dans Experience Cloud.

Par exemple, supposons que Robert a l’identifiant de client `52mc210tr42` dans votre système de gestion de la relation client. Quand Robert s’authentifie sur votre site, vous devez exposer cet identifiant sur la page, puis le synchroniser de l’une des deux façons suivantes :

* Appelez `visitor.setCustomerIDs({"crm_id":"52mc210tr42"})` à l’aide du service d’identification des visiteurs. OU,
* Renseignez la variable *`Customer ID (52mc210tr42)`* dans une prop ou une eVar.

L’identifiant de client doit être défini dans chaque appel au serveur [!DNL Analytics] où il est connu.

### SDK mobiles

Reportez-vous à la section Service *d’ID* Experience Cloud pour obtenir des exemples de syntaxe sur la définition d’identifiants de client supplémentaires dans les applications [Android](https://docs.adobe.com/content/help/fr-FR/mobile-services/android/overview.html) et [iOS](https://docs.adobe.com/content/help/fr-FR/mobile-services/ios/overview.html) Mobile.

### Activation des attributs pour les données historiques

Les données d’attribut du client sont disponibles après la connexion des visiteurs. Si vous n’avez pas encore mis en oeuvre le dernier service d’identification d’Experience Cloud et si vous avez toujours suivi les ID de client dans une prop ou une eVar, vous pouvez demander un processus qui envoie les connexions historiques à Experience Cloud. Ce processus vous permet de commencer à utiliser immédiatement les attributs du client.

Contactez le service à la clientèle pour activer les données d’historique.

## Étape 3. Map report suites to an Experience Cloud Organization {#section_7B08516B01BA421681DF03D0E86CE3BA}

Experience Cloud services (such as Experience Cloud ID Service and the [!UICONTROL People service]) are associated with an Experience Cloud organization instead of an individual Analytics report suite. Pour que ces services fonctionnent correctement, chaque suite de rapports Analytics doit être mappée à une organisation Experience Cloud.

Voir [Mappage de suites de rapports à une organisation](report-suite-mapping.md).

## Étape 4. (Adobe Analytics) Update your Analytics AppMeasurement code {#section_1798D9D0F05C47E29816AC4EEB9A0913}

Vérifiez que vous vous trouvez sur le réseau RDC (regional data collection). Si votre domaine de collecte des données est [!DNL omtrdc.net] ou si votre CNAME est mappé à [!DNL omtrdc.net], vous utilisez le service RDC. Voir [Transition vers la CRD](https://docs.adobe.com/content/help/en/analytics/technotes/rdc/regional-data-collection.html) pour plus d’informations. Si vous utilisez des cookies propriétaires, reportez-vous à [CNAME et au service](https://docs.adobe.com/content/help/fr-FR/id-service/using/reference/analytics-reference/cname.html) d’identification Experience Cloud pour plus d’informations sur les CNAME de collecte de données et le suivi interdomaines.

Il vous est recommandé d’actualiser votre mise en œuvre Analytics en mettant à jour vos bibliothèques JavaScript, y compris l’API visiteur. Un moyen simple d’accomplir cette procédure consiste à ajouter un outil [!DNL Adobe Analytics] à Dynamic Tag Management, en spécifiant *`Automatic`* comme méthode de configuration.

In [!UICONTROL Dynamic Tag Management], click **[!UICONTROL <Web Property Name>]**>**[!UICONTROL  Aperçu ]**>**[!UICONTROL  Ajouter un outil ]**>**[!UICONTROL  Adobe Analytics ]**. Pour plus d’informations sur le déploiement, voir Paramètres[d’](https://docs.adobe.com/content/help/en/dtm/using/tools/analytics-dtm.html)Adobe Analytics dans la gestion dynamique des balises.

## Etape 5. (Adobe Target) Update your Adobe Target implementation {#section_C2F4493C7A36406DAE2266B429A4BD24}

* Il est recommandé d’ajouter une Extension de l&#39;cible [](https://docs.adobe.com/content/help/en/launch/using/extensions-ref/adobe-extension/targetv2-extension/adobe-target-extension-v2.html) Adobe dans le lancement [!UICONTROL de la plateforme]d’expérience afin que la récupération de votre bibliothèque soit automatique. Vous pouvez également configurer l’extension [du service d’ID](https://docs.adobe.com/content/help/fr-FR/launch/using/extensions-ref/adobe-extension/id-service-extension/overview.html) d’expérience pour Adobe Cible (et d’autres solutions) à l’aide du lancement [!UICONTROL de la plateforme]d’expérience. La mise à jour du service [!UICONTROL d’ID] Experience Cloud **est requise** pour qu’Adobe Cible utilise les services principaux. (Si vous utilisez la gestion dynamique des balises, ajoutez un outil [de Cible](https://docs.adobe.com/content/help/en/dtm/using/tools/target.html)Adobe. Vous pouvez également utiliser la gestion [!UICONTROL dynamique des balises] pour déployer le service d’identification d’Experience Cloud pour Adobe Cible.)
* Si vous n’utilisez pas le lancement [!UICONTROL de la plateforme] d’expérience ou la gestion dynamique des balises, [mettez à jour votre bibliothèque](https://docs.adobe.com/content/help/en/target/using/implement-target/client-side/mbox-implement/target-download-config-mbox.html) de mbox manuellement.
* Demandez l’accès afin d’utiliser Adobe Analytics comme source de création de rapports pour [!DNL Adobe Target]. [!DNL Target]Les données de et des données sont combinées dans le même appel serveur durant le traitement afin que les visiteurs soient connectés entre les deux solutions. [!DNL Analytics] See [Analytics for Target Implementation](https://docs.adobe.com/content/help/fr-FR/target/using/integrate/a4t/a4t.html).

   >[!IMPORTANT]
   >
   >Tous les clients Analytics sont déjà configurés pour les services principaux tels que les attributs du client. Si vous n’êtes pas client d’Analytics, contactez le service à la clientèle pour demander à recevoir les privilèges d’accès.

## Etape 6. Vérifier la mise en œuvre des services principaux {#section_E641782A0F4F44AF8C9C91216BE330D5}

Procédez comme suit pour vous assurer que le service d’identification d’Experience Cloud est correctement mis en oeuvre sur votre site.

1. Effacez les cookies de votre site afin que vous puissiez voir la demande envoyée au service d’identification d’Experience Cloud (la demande survient lors de la première visite, puis environ une fois par visiteur et par semaine).
1. Using a packet analyzer or the network panel in a web browser debugger, look for a request going to [!DNL dpm.demdex.net].
1. Vérifiez que la réponse contient `d_mid` et une valeur, par exemple : `_setMarketingCloudFields({"d_mid":"4235...`
1. Verify that the Analytics request contains the `mid` parameter (the Experience Cloud ID). Durant la période de grâce (si elle est activée), un `aid` paramètre doit également s’afficher (l’identifiant du visiteur Analytics).

Réponse attendue contenant l’ID Experience Cloud :

![](assets/mac_id_response.png)

Demande d’image Analytics contenant l’ID Experience Cloud (également appelé ID `mid` _ou_ visiteur) :

![](assets/mid.png)

Experience Cloud ID dans la requête de mbox :

![](assets/mbox_request.png)

### Quelle est la période de grâce ?

Une fois que vous avez déployé le service d’ID Experience Cloud, les nouveaux visiteurs ne reçoivent plus d’Analytics Experience Cloud ID de votre serveur de collecte de données. Si certaines sections de votre site n’ont pas encore mis en oeuvre le service d’identification d’Experience Cloud, lorsque les visiteurs accèdent à ces sections, l’identifiant Experience Cloud n’est pas reconnu et un identifiant visiteur Analytics hérité est affecté aux visiteurs. Cela peut entraîner des problèmes potentiels, notamment des visites de duplicata et une attribution incorrecte.

Si, par exemple, la section Assistance de votre site est gérée dans un système de gestion de contenu distinct, il se peut que vous ayez un fichier JavaScript Analytics différent pour cette section. Si vous déployez l’identifiant Experience Cloud sur votre site principal avant de déployer le service d’ID sur le site d’assistance, les nouveaux visiteurs reçoivent un identifiant Analytics hérité lorsqu’ils visitent la section d’assistance et les visites qui s’étendent sur les deux sections du site sont signalées comme des visites différentes.

Le déploiement du service d’ID Experience Cloud sur les sites qui utilisent plusieurs fichiers JavaScript ou d’autres technologies (telles que Flash) peut entraîner des problèmes de coordination, car vous devez activer le service d’ID Experience Cloud en même temps sur toutes les parties de votre site. En configurant une période de grâce, les nouveaux visiteurs peuvent continuer à recevoir un ID de visiteur Analytics du service d’ID, de sorte que les visiteurs puissent être identifiés de manière cohérente sur les sections de votre site qui n’ont pas été mises à niveau pour utiliser le service d’ID de visiteur.

## Étape 7. Gérer les utilisateurs et les produits {#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF}

Once you are up and running, navigate to the [Admin Console](https://adminconsole.adobe.com/), where you can manage users and product profiles.

![](assets/menu-administration-shell.png)

Voir [Gestion des utilisateurs et des produits Experience Cloud](../admin-getting-started/admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909).

### Attributs du client

<!-- <p> 
 <note type="important">
  To use the Customer Attributes feature, users must belong to the 
  <span class="term"> Adobe Customer Attributes</span> group, and to solution-level groups (Analytics or Adobe Target). 
 </note> </p> 
 -->

Les utilisateurs ajoutés au groupe Attributs  du client verront l’option de menu Attributs [!UICONTROL du] client sur le côté gauche de l’interface d’Experience Cloud.

## Étape 8. Begin using core services {#section_960C06093623462E8EA247B3E97274A1}

Profitez des fonctionnalités suivantes.

![](assets/menu-audiences-shell.png)

### [!UICONTROL Personnes] > Attributs [!UICONTROL du client]

Si vous capturez les données clients d’entreprise dans une base de données de gestion de la relation client, vous pouvez les transférer dans une source de données d’attributs du client dans Experience Cloud. Une fois le transfert effectué, utilisez les données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

Voir [Attributs du client](../attributes/attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1)

### [!UICONTROL Personnes] > Bibliothèque [!UICONTROL d’Audiences]

Experience Cloud [!UICONTROL Audiences] is the interface that lets you create audiences, combine existing audiences to create composite audiences, and view all shared audiences.

Voir [Audiences](../audience-library/audience-library.md#topic_679810123CAA4E0CA4FA3417FB0100C7)

## enregistrement de données et divulgation de la confidentialité

Le recours au profilage d’audiences en temps réel et à d’autres services principaux du composant Personnes d’Adobe [!DNL Experience Cloud] peut avoir une influence sur le centre de données (et le pays) où se trouvent vos données. Specifically, because the core services of the Adobe [!DNL Experience Cloud] leverage Adobe Audience Manager, data used within the [!UICONTROL People] service must reside within Audience Manager servers in the United States.

When leveraging core services made available via the [!UICONTROL People] service, the types of data sent from other Adobe products to audience management are:

* Paires clé/valeur [!DNL Analytics] (Props, eVars, variables de liste, etc.). Par défaut, les lignes des journaux contiennent l’adresse IP, notamment le dernier octet de l’adresse IP (en supposant que l’adresse IP n’a pas été modifiée par les paramètres de masquage d’Adobe [!DNL Analytics]).
* Caractéristiques et segments pour lesquels les visiteurs remplissent les critères en fonction des règles configurées dans Audience Manager.
* (Facultatif) Un ou plusieurs de vos identifiants. Selon votre mise en oeuvre du service d’ID, vous pouvez également envoyer un ou plusieurs de vos identifiants, tels que des identifiants de gestion de la relation client ou des adresses électroniques hachées. Si ces données sont envoyées à Adobe [!DNL Analytics], elles sont transférées à la gestion de l’audience d’Adobe. Adobe recommande de ne pas fournir de données personnelles à Adobe [!DNL Analytics]. Utilisez plutôt un hachage à sens unique pour masquer les données avant de les envoyer à Adobe.
* Segments provenant d’[!DNL Analytics] au moyen de la fonctionnalité de partage des segments principale.
* Le cookie demdex.net est défini si les cookies tiers ne sont pas bloqués. The `AMCV_###@AdobeOrg` first-party cookie is always set with the Experience Cloud ID Service.

Tous ces éléments de données sont transmis à Adobe Audience Manager sous forme de fichiers journaux. Audience Manager traite et stocke ces données aux États-Unis. Audience Manager ne propose pas d’option permettant de stocker ou de traiter ces données en dehors des Etats-Unis.

### Cookies et exclusions

Le recours au profilage d’audiences en temps réel entraîne l’utilisation du cookie d’Audience Manager, en plus des cookies utilisés pour [!DNL Analytics] et [!DNL Target].

Si vous souhaitez proposer la fonctionnalité d’exclusion adaptée, les visiteurs de votre site doivent ajouter l’exclusion d’Audience Manager à votre processus d’exclusion.

Voir [Adobe Experience Cloud - Mise en oeuvre des exclusions](https://docs.adobe.com/content/help/en/analytics/implementation/javascript-implementation/data-collection/opt-out.html) Adobe pour obtenir des instructions.

Voir CNAME de collecte de [données et suivi](https://docs.adobe.com/content/help/fr-FR/id-service/using/reference/analytics-reference/cname.html) inter-domaines pour activer le suivi inter-domaines.
