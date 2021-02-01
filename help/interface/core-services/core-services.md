---
description: Découvrez comment implémenter Adobe Experience Cloud et devenir administrateur.
keywords: core services;Customer Attributes
solution: Experience Cloud
title: 'Activation des solutions pour les services principaux '
index: true
translation-type: tm+mt
source-git-commit: d8b4f8c5ff963fce48adf7cd312543a98955828c
workflow-type: tm+mt
source-wordcount: '2352'
ht-degree: 99%

---


# Activation de la mise en œuvre pour les services Experience Cloud

Si vous avez récemment mis en œuvre Experience Cloud à l’aide d’Experience Platform Launch, vous êtes prêt pour les attributs du client et les audiences Experience Cloud. Vous pouvez également gérer les utilisateurs et les produits dans Admin Console.

Pour les clients existants, vous devrez peut-être moderniser les mises en œuvre de votre solution et mettre en œuvre Experience Cloud. Cela vous permet d’exploiter les attributs du client et les fonctions d’audience dans Adobe Analytics, Audience Manager et Adobe Target. Pour ce faire, vous allez réaliser les opérations suivantes :

1. [Rejoindre Experience Cloud et devenir administrateur](#section_2423F0BD3DF642658103310EE5EA6154)
1. [Mettre en œuvre le service Experience Cloud ID](#section_3C9F6DF37C654D939625BB4D485E4354)
1. [Mapper des suites de rapports à une organisation Experience Cloud](#section_7B08516B01BA421681DF03D0E86CE3BA)
1. [Mettre à jour votre code Analytics AppMeasurement](#section_1798D9D0F05C47E29816AC4EEB9A0913)
1. [Mettre à jour votre mise en œuvre Adobe Target](#section_C2F4493C7A36406DAE2266B429A4BD24)
1. [Vérifier la mise en œuvre](#section_E641782A0F4F44AF8C9C91216BE330D5)
1. [Gérer les utilisateurs et les produits](#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF)
1. [Commencer à partager les données d’attribut et d’audience](#section_960C06093623462E8EA247B3E97274A1)

## Rejoindre Experience Cloud et devenir administrateur {#section_2423F0BD3DF642658103310EE5EA6154}

Procédez comme suit pour rejoindre Experience Cloud :

1. Assurez-vous d’être en possession des SKU d’Adobe Analytics ou d’Adobe Target appropriées.

   * **Adobe Analytics :** Standard ou Premium (et non la [!DNL SiteCatalyst] SKU héritée).
   * **Adobe Target :** Standard ou Premium.

   >[!NOTE]
   >
   >Pour [!DNL Target], migrez vers at.js depuis [!DNL mbox.js]. Reportez-vous à la section [Mise à niveau d’at.js 1.x vers at.js 2.x](https://docs.adobe.com/content/help/fr-FR/target/using/implement-target/client-side/upgrading-from-atjs-1x-to-atjs-20.html).

1. Modernisez votre mise en œuvre et configurez votre statut d’administrateur.

   * Suivez les étapes ci-dessous dans [Mise en oeuvre du [!UICONTROL service d’identification des Experience Cloud]](../core-services/core-services.md#section_3C9F6DF37C654D939625BB4D485E4354).
   * Contactez votre gestionnaire de compte et entamez le processus de provisionnement pour Experience Cloud.

1. Gestion des utilisateurs et des produits dans [!UICONTROL Admin Console].

### Connexion d’administrateur

Une fois votre statut d’administrateur acquis, vous pouvez vous connecter à [experiencecloud.adobe.com](https://experiencecloud.adobe.com).

Le lien **[!UICONTROL Administration]** apparaît dans le menu Experience Cloud.

Voir [Administration des utilisateurs et des produits Experience Cloud](../admin-getting-started/admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909) pour plus d’informations.

### Connexion d’utilisateur

Pour se connecter à Experience Cloud, les utilisateurs doivent :

* posséder un Adobe ID (ou un Enterprise ID pour votre société).
* se connecter à [experiencecloud.adobe.com](https://experiencecloud.adobe.com).
* appartenir à un groupe de solutions mappé avec un groupe d’entreprises.
* Si nécessaire, liez leurs comptes de solution à leur Adobe ID (comme décrit ci-après).

### Facultatif : liez les comptes d’utilisateurs existants.

Des utilisateurs sont probablement déjà membres de groupes de solutions, par exemple un groupe Analytics que vous avez déjà géré dans [!UICONTROL Analytics] > [!UICONTROL Outils d’administration].

Lorsque vous mappez ces groupes avec des groupes d’entreprise d’Experience Cloud, ces utilisateurs doivent associer manuellement les informations de connexion de leur compte de solution avec leur Adobe ID.

Reportez-vous à la section [Liaison de comptes dans Experience Cloud.](../admin-getting-started/organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1)

>[!NOTE]
>
>Une fois le mappage de groupes d’entreprise et de solution effectué, les nouveaux utilisateurs sont liés automatiquement. (Les informations de connexion de la solution sont automatiquement créées et liées à leur Adobe ID.)

Les sections suivantes expliquent comment moderniser votre mise en œuvre. Ceci permet d’activer les services principaux dans Experience Cloud.

## Implémentation du [!UICONTROL service Experience Cloud ID] {#section_3C9F6DF37C654D939625BB4D485E4354}

Le [!UICONTROL service Experience Cloud ID] fournit un ID commun pour une intégration intersolutions. Il offre une identification des visiteurs interdomaines ainsi qu’un chemin d’accès pour le ciblage et la personnalisation interpériphérique/des navigateurs basés sur les données de gestion de la relation client transférées par le biais d’[!UICONTROL Attributs du client].

La méthode la plus simple pour activer les services principaux d’Experience Cloud consiste à les activer automatiquement pour Analytics et Adobe Target à l’aide de l’[extension du service Experience Cloud ID](https://experienceleague.adobe.com/docs/launch/using/extensions-ref/adobe-extension/id-service-extension/overview.html?lang=fr#extensions-ref) dans [!UICONTROL Experience Platform Launch].

Pour accéder à l’aide complète du service Experience Cloud ID (anciennement, identifiant visiteur), [rendez-vous ici](https://experienceleague.adobe.com/docs/id-service/using/intro/overview.html?lang=fr#intro).

**Vous n’utilisez ni [!UICONTROL Experience Platform Launch] ni [!UICONTROL Dynamic Tag Management] ?**

Si vous n’utilisez ni [!UICONTROL Experience Platform Launch] ni [!UICONTROL Dynamic Tag Management], mettez en œuvre manuellement le service d’ID par le biais du déploiement de JavaScript ([!DNL VisitorAPI.js]) en procédant comme suit :

| Tâche | Description |
| -----------| ---------- |  
| [Mise en œuvre du service Experience Cloud ID pour Analytics](https://docs.adobe.com/content/help/fr-FR/id-service/using/implementation/setup-analytics.html) | Adobe recommande également de paramétrer des [ID de client](https://docs.adobe.com/content/help/fr-FR/id-service/using/reference/authenticated-state.html) supplémentaires. Ces ID sont associés à chaque visiteur ; ils donnent accès aux fonctions existantes et à venir d’Experience Cloud. |
| Mettez à jour le fichier [!DNL s_code] existant vers la version H.27.3 ou ultérieure ou le fichier [!DNL AppMeasurement.js] vers la version 1.4 ou ultérieure. | Ces fichiers peuvent être téléchargés dans le [Gestionnaire de code](https://docs.adobe.com/content/help/fr-FR/analytics/admin/admin-tools/code-manager-admin.html) des outils d’administration Analytics. (Le guide de [mise en œuvre de JavaScript](https://docs.adobe.com/content/help/fr-FR/analytics/implementation/js/overview.html) est disponible si vous avez besoin d’informations complémentaires sur [!DNL AppMeasurement.js].) |
| Synchronisez l’ID client pour Analytics | Voir [Analytics - Synchronisation de l’ID client](../core-services/core-services.md#section_AD473A6A21C1446498E700363F9A8437) (ci-dessous). |

### Analytics et Adobe Target - Synchronisation de l’ID client {#section_AD473A6A21C1446498E700363F9A8437}

Dans le cadre de la configuration du service Experience Cloud ID, Adobe recommande, pour Analytics et [!DNL Target], de synchroniser vos [ID client](https://docs.adobe.com/content/help/en/id-service/using/reference/authenticated-state.html) avec Experience Cloud.

Dans Adobe Target, le paramètre `mbox3rdpartyid` doit obtenir l’ID client et l’envoyer à [!DNL Target]. (Reportez-vous à la section [Utilisation des attributs du client](https://docs.adobe.com/content/help/fr-FR/target/using/audiences/visitor-profiles/working-with-customer-attributes.html) dans [!DNL Target].)

Chaque fois qu’un visiteur s’authentifie sur votre site ou s’identifie d’une autre manière, votre mise en œuvre doit afficher l’ID de client CRM sur la page ou dans l’application. Par la suite, vous pouvez utiliser l’appel de fonction approprié pour synchroniser votre ID client avec Experience Cloud. Cette synchronisation stocke l’ID de client CRM du visiteur dans Experience Cloud et active les attributs de ce client en vue d’une utilisation dans Experience Cloud.

Par exemple, supposons que Robert a l’identifiant de client `52mc210tr42` dans votre système de gestion de la relation client. Quand Robert s’authentifie sur votre site, vous devez exposer cet identifiant sur la page, puis le synchroniser de l’une des deux façons suivantes :

* Appelez `visitor.setCustomerIDs({"crm_id":"52mc210tr42"})` à l’aide du service d’identification des visiteurs. Sinon,
* renseignez le *`Customer ID (52mc210tr42)`* dans une variable prop ou eVar.

L’ID de client doit être défini dans chaque appel au serveur [!DNL Analytics] où il est connu.

### SDK mobiles

Reportez-vous à la section *Service Experience Cloud ID* pour consulter des exemples de syntaxe sur la manière de définir des ID de client supplémentaires dans les applications mobiles [Android](https://docs.adobe.com/content/help/fr-FR/mobile-services/android/overview.html) et [iOS](https://docs.adobe.com/content/help/fr-FR/mobile-services/ios/overview.html).

### Activation des attributs pour les données historiques

Les données d’attribut du client sont disponibles une fois les visiteurs connectés. Si vous n’avez pas encore mis en œuvre le dernier service Experience Cloud ID et que vous avez effectué le suivi historique des ID de client dans une variable prop ou eVar, vous pouvez appeler un processus qui envoie les connexions historiques vers Experience Cloud. Grâce à ce processus, vous pouvez commencer à utiliser immédiatement les attributs du client.

Contactez l’assistance clientèle pour activer les données d’historique.

## Mapper des suites de rapports à une organisation Experience Cloud {#section_7B08516B01BA421681DF03D0E86CE3BA}

>[!NOTE]
>
>La fonctionnalité de mappage de suites de rapports a été abandonnée en novembre 2020. Contactez le Service clientèle pour toute question.

Les services Experience Cloud (tels que le service Experience Cloud ID et le service [!UICONTROL People]) sont associés à une organisation Experience Cloud plutôt qu’à une suite d’Analytics rapports individuelle. Afin de garantir le bon fonctionnement de ces services, chaque suite de rapports Analytics doit être mappée à une organisation Experience Cloud.

Voir [Mappage de suites de rapports à une organisation](report-suite-mapping.md).

## Mettre à jour votre code Analytics AppMeasurement {#section_1798D9D0F05C47E29816AC4EEB9A0913}

Si vous utilisez Analytics, vérifiez que vous avez recours à la collecte de données régionale (RDC). Si votre domaine de collecte des données est [!DNL omtrdc.net] ou si votre CNAME est mappé à [!DNL omtrdc.net], vous utilisez le service RDC. Reportez-vous à la section [Transition vers RDC](https://docs.adobe.com/content/help/fr-FR/analytics/technotes/rdc/regional-data-collection.html) pour en savoir plus. Si vous utilisez des cookies propriétaires, reportez-vous à la rubrique [CNAME et service Experience Cloud ID](https://docs.adobe.com/content/help/fr-FR/id-service/using/reference/analytics-reference/cname.html) pour en savoir plus sur les CNAME de collecte de données et le suivi interdomaines.

Il vous est recommandé d’actualiser votre mise en œuvre Analytics en mettant à jour vos bibliothèques JavaScript, y compris l’API visiteur. Un moyen simple d’accomplir cette procédure consiste à ajouter un outil [!DNL Adobe Analytics] à Dynamic Tag Management, en spécifiant *`Automatic`* comme méthode de configuration.

Dans [!UICONTROL Dynamic Tag Management], cliquez sur **`<Web Property Name>`** > **[!UICONTROL Aperçu]** > **[!UICONTROL Ajouter un outil]** > **[!UICONTROL Adobe Analytics]**. Voir [Paramètres d’Adobe Analytics](https://docs.adobe.com/content/help/fr-FR/dtm/using/tools/analytics-dtm.html) à la rubrique Dynamic Tag Management pour plus d’informations sur le déploiement.

## Mettre à jour votre mise en œuvre Adobe Target {#section_C2F4493C7A36406DAE2266B429A4BD24}

* Il est recommandé d’ajouter une [extension Adobe Target](https://docs.adobe.com/content/help/fr-FR/launch/using/extensions-ref/adobe-extension/targetv2-extension/adobe-target-extension-v2.html) dans [!UICONTROL Experience Platform Launch] afin de permettre l’extraction automatique de votre bibliothèque. Vous pouvez également configurer l’[extension du service Experience Cloud ID](https://docs.adobe.com/content/help/fr-FR/launch/using/extensions-ref/adobe-extension/id-service-extension/overview.html) pour Adobe Target (et d’autres solutions) à l’aide d’[!UICONTROL Experience Platform Launch]. Le [!UICONTROL service Experience Cloud ID] **doit être mis à jour** pour qu’Adobe Target puisse utiliser les services principaux. (Si vous utilisez [!UICONTROL Dynamic Tag Management], ajoutez un [outil Adobe Target](https://docs.adobe.com/content/help/fr-FR/dtm/using/tools/target.html). Vous pouvez également utiliser [!UICONTROL Dynamic Tag Management] afin de déployer le service Experience Cloud ID pour Adobe Target.)
* Si vous n’utilisez ni [!UICONTROL Experience Platform Launch] ni [!UICONTROL Dynamic Tag Management], [mettez à jour votre bibliothèque mbox](https://docs.adobe.com/content/help/fr-FR/target/using/implement-target/client-side/mbox-implement/target-download-config-mbox.html) manuellement.
* Demandez l’accès afin d’utiliser Adobe Analytics comme source de création de rapports pour [!DNL Adobe Target]. Les données de [!DNL Target] et d’[!DNL Analytics] sont combinées dans le même appel serveur durant le traitement afin que les visiteurs soient connectés entre les deux solutions. Voir [Analytics pour l’implémentation de Target](https://docs.adobe.com/content/help/fr-FR/target/using/integrate/a4t/a4t.html).

   >[!IMPORTANT]
   >
   >Tous les clients d’Analytics sont déjà configurés pour les services principaux ainsi que pour les attributs du client. Si vous n’êtes pas client d’Analytics, contactez le service à la clientèle pour demander à recevoir les privilèges d’accès.

## Vérification de la mise en œuvre {#section_E641782A0F4F44AF8C9C91216BE330D5}

Appliquez la procédure suivante pour vérifier que le service Experience Cloud ID est correctement mis en œuvre sur votre site.

1. Effacez les cookies de votre site afin de pouvoir visualiser la requête du service Experience Cloud ID (cette requête est émise lors de la première visite, puis environ une fois par visiteur et par semaine).
1. À l’aide d’un analyseur de paquets ou du volet des réseaux dans un débogueur de navigateur web, recherchez une requête envoyée à [!DNL dpm.demdex.net].
1. Vérifiez que la réponse contient `d_mid` et une valeur, par exemple : `_setMarketingCloudFields({"d_mid":"4235...`
1. Vérifiez que la requête d’Analytics contient le paramètre `mid` (l’Experience Cloud ID). Durant la période de grâce (le cas échéant), un paramètre `aid` doit également s’afficher (l’identifiant visiteur Analytics).

Réponse attendue contenant le service Experience Cloud ID :

![](assets/mac_id_response.png)

Requête d’image Analytics contenant l’Experience Cloud ID (également appelé `mid` ou _identifiant visiteur_) :

![](assets/mid.png)

Experience Cloud ID dans la requête de mbox :

![](assets/mbox_request.png)

### Qu’est-ce que la période de grâce ?

Une fois le service Experience Cloud ID déployé, les nouveaux visiteurs ne reçoivent plus d’Experience Cloud ID Analytics de votre serveur de collecte de données. Si le service Experience Cloud ID n’a pas encore été mis en œuvre sur certaines sections de votre site, l’Experience Cloud ID n’est pas reconnu lorsque les visiteurs parcourent ces sections et un identifiant visiteur Analytics hérité est attribué aux visiteurs. Ce comportement peut être à l’origine de certains problèmes, notamment des visites en double et des attributions incorrectes.

Si, par exemple, la section Assistance de votre site est gérée dans un système de gestion de contenu distinct, il se peut que vous ayez un fichier JavaScript Analytics différent pour cette section. Si vous déployez l’Experience Cloud ID sur votre site principal avant de déployer le service d’ID sur le site d’assistance, les nouveaux visiteurs recevront un Analytics ID hérité lorsqu’ils se rendent dans la section d’assistance ; les visites qui portent sur les deux sections du site sont alors signalées comme deux visites distinctes.

Le déploiement du service Experience Cloud ID sur les sites qui utilisent plusieurs fichiers JavaScript ou d’autres technologies (telles que Flash) peut entraîner des problèmes de coordination puisque vous devez activer le service Experience Cloud ID en même temps sur toutes les parties de votre site. Si vous configurez une période de grâce, les nouveaux visiteurs peuvent continuer à recevoir un identifiant visiteur Analytics du service d’ID, de sorte que les visiteurs puissent être identifiés de manière cohérente sur les sections de votre site qui n’ont pas été mises à niveau pour utiliser le service d’identification des visiteurs.

## Gérer les utilisateurs et les produits {#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF}

Lorsque vous êtes opérationnel, accédez à [Admin Console](https://adminconsole.adobe.com/), à partir de laquelle vous pouvez gérer les utilisateurs et les profils de produits.

![](assets/menu-administration-shell.png)

Voir [Gestion des utilisateurs et des produits Experience Cloud](../admin-getting-started/admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909).

### Attributs du client

Les utilisateurs membres du groupe [!UICONTROL Attributs du client] ont accès aux options du menu [!UICONTROL Attributs du client] sur le côté gauche de l’interface d’Experience Cloud.

## Commencer à partager les données d’attribut et d’audience {#section_960C06093623462E8EA247B3E97274A1}

Profitez des fonctionnalités suivantes.

### [!UICONTROL Personnes] > [!UICONTROL Attributs du client]

Si vous capturez les données clients d’entreprise dans une base de données de gestion de la relation client, vous pouvez les transférer dans une source de données d’attributs du client dans Experience Cloud. Une fois le transfert effectué, utilisez les données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

Voir [Attributs du client](../attributes/attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1)

### [!UICONTROL Personnes] > [!UICONTROL Bibliothèque d’audiences]

Dans l’interface [!UICONTROL Audiences] d’Experience Cloud, vous pouvez créer des audiences, combiner les audiences existantes pour créer des audiences composites et afficher toutes les audiences partagées.

Voir [Audiences](../audience-library/audience-library.md#topic_679810123CAA4E0CA4FA3417FB0100C7)

## Stockage des données et divulgation des données confidentielles

Le recours au profilage d’audiences en temps réel et à d’autres services principaux du composant Personnes d’Adobe [!DNL Experience Cloud] peut avoir une influence sur le centre de données (et le pays) où se trouvent vos données. En particulier, dans la mesure où les services principaux d’Adobe [!DNL Experience Cloud] exploitent Adobe Audience Manager, les données utilisées dans le service [!UICONTROL People] doivent se trouver sur les serveurs Audience Manager situés aux États-Unis.

Lors de l’utilisation des services principaux accessibles par le biais du service [!UICONTROL People], les types de données envoyés depuis d’autres produits Adobe à la gestion de l’audience sont les suivants :

* Paires clé/valeur [!DNL Analytics] (Props, eVars, variables de liste, etc.). Par défaut, les lignes des journaux contiennent l’adresse IP, notamment le dernier octet de l’adresse IP (en supposant que l’adresse IP n’a pas été modifiée par les paramètres de masquage d’Adobe [!DNL Analytics]).
* Caractéristiques et segments pour lesquels les visiteurs sont inclus selon les règles configurées dans Audience Manager.
* (Facultatif) Un ou plusieurs de vos identifiants. Selon votre mise en œuvre du service d’ID, vous envoyez peut-être également un ou plusieurs de vos ID, tels que les ID CRM ou des adresses électroniques hachées. Si ces données sont envoyées à Adobe [!DNL Analytics], elles sont transférées à la gestion de l’audience d’Adobe. Adobe recommande de ne pas fournir de données personnelles à Adobe [!DNL Analytics]. Utilisez un hachage à sens unique pour masquer les données avant de les envoyer à Adobe.
* Segments provenant d’[!DNL Analytics] au moyen de la fonctionnalité de partage des segments principale.
* Le cookie demdex.net est défini si les cookies tiers ne sont pas bloqués. Le cookie propriétaire `AMCV_###@AdobeOrg` est toujours défini avec le service Experience Cloud ID.

Tous ces éléments de données sont transmis à Adobe Audience Manager sous forme de fichiers journaux. Audience Manager traite et stocke ces données aux États-Unis. Audience Manager ne permet pas de stocker ni de traiter ces données en dehors des États-Unis.

### Cookies et exclusions

Le recours au profilage d’audiences en temps réel entraîne l’utilisation du cookie d’Audience Manager, en plus des cookies utilisés pour [!DNL Analytics] et [!DNL Target].

Si vous souhaitez proposer la fonctionnalité d’exclusion adaptée, les visiteurs de votre site doivent ajouter l’exclusion d’Audience Manager à votre processus d’exclusion.

Pour obtenir des instructions, reportez-vous au document [Adobe Experience Cloud : mise en œuvre des exclusions Adobe](https://docs.adobe.com/content/help/fr-FR/analytics/implementation/js/opt-out.html).

Voir [CNAME de collecte de données et suivi interdomaines](https://docs.adobe.com/content/help/en/id-service/using/reference/analytics-reference/cname.html) pour en savoir plus sur l’activation du suivi interdomaines.
