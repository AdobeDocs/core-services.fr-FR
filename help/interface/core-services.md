---
description: Modernisez vos applications Adobe Analytics et Adobe Target pour obtenir des services entre applications. Découvrez comment débuter avec les services Experience Cloud.
keywords: services principaux;attributs du client
solution: Experience Cloud
title: Activation des applications pour les services entre applications
index: true
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 48e79e23-b339-4143-b3b1-969c370efeff
source-git-commit: ae14748aa7b0f0d803d48fe980a6743f53d996ab
workflow-type: ht
source-wordcount: '2294'
ht-degree: 100%

---

# Activation de la mise en œuvre pour les services Experience Cloud

Si vous avez récemment mis en œuvre Experience Cloud à l’aide d’Experience Platform Launch, vous êtes prêt pour les attributs du client et les audiences Experience Cloud. Vous pouvez également gérer les utilisateurs et les produits dans Admin Console.

Les clients actuels peuvent moderniser leurs implémentations dʼapplications et implémenter Experience Cloud. Cela vous permet d’utiliser les attributs du client et les fonctionnalités d’audience dans Adobe Analytics, Audience Manager et Adobe Target. Suivez les étapes suivantes afin de réaliser cette mise en œuvre :

1. [Rejoindre Experience Cloud et devenir administrateur](#section_2423F0BD3DF642658103310EE5EA6154)
1. [Implémentation du service Experience Cloud ID](#section_3C9F6DF37C654D939625BB4D485E4354)
1. [Mapper des suites de rapports à une organisation Experience Cloud](#section_7B08516B01BA421681DF03D0E86CE3BA)
1. [Mettre à jour votre code Analytics AppMeasurement](#section_1798D9D0F05C47E29816AC4EEB9A0913)
1. [Mettre à jour votre mise en œuvre Adobe Target](#section_C2F4493C7A36406DAE2266B429A4BD24)
1. [Vérification de la mise en œuvre](#section_E641782A0F4F44AF8C9C91216BE330D5)
1. [Gérer les utilisateurs et les produits](#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF)
1. [Commencer à partager les données d’attribut et d’audience](#section_960C06093623462E8EA247B3E97274A1)

## Rejoindre Experience Cloud et devenir administrateur {#section_2423F0BD3DF642658103310EE5EA6154}

Procédez comme suit pour rejoindre Experience Cloud :

1. Assurez-vous d’être en possession des SKU d’Adobe Analytics ou d’Adobe Target appropriées.

   * **Adobe Analytics :** Standard ou Premium (et non la [!DNL SiteCatalyst] SKU héritée).
   * **Adobe Target :** Standard ou Premium.

   >[!NOTE]
   >
   >Pour [!DNL Target], migrez vers at.js depuis [!DNL mbox.js]. Reportez-vous à la section [Mise à niveau d’at.js 1.x vers at.js 2.x](https://experienceleague.adobe.com/docs/target/using/implement-target/client-side/at-js-implementation/upgrading-from-atjs-1x-to-atjs-20.html?lang=fr).

1. Modernisez votre mise en œuvre et configurez votre statut d’administrateur.

   * Suivez les étapes ci-dessous dans [Implémentation du [!UICONTROL service Experience Cloud ID]](core-services.md#section_3C9F6DF37C654D939625BB4D485E4354).
   * Contactez votre gestionnaire de compte et entamez le processus de provisionnement pour Experience Cloud.

1. Gestion des utilisateurs et des produits dans [!UICONTROL Admin Console].

### Connexion d’administrateur

Une fois votre statut d’administrateur acquis, vous pouvez vous connecter à [experience.adobe.com](https://experience.adobe.com).

Le lien **[!UICONTROL Admin Console]** est disponible dans la navigation du menu Experience Cloud.

Voir [Administration des utilisateurs et des produits Experience Cloud](admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909) pour plus d’informations.

### Connexion d’utilisateur

Pour se connecter à Experience Cloud, les utilisateurs doivent :

* posséder un Adobe ID (ou un Enterprise ID pour votre société).
* Connectez-vous à [experiencecloud.adobe.com](https://experience.adobe.com).
* Appartenir à un groupe dʼapplications mappé avec un groupe dʼentreprises.
* Si nécessaire, liez leurs comptes dʼapplication à leur Adobe ID (comme décrit ci-après).

### Facultatif : liez les comptes dʼutilisateurs existants.

Des utilisateurs sont probablement déjà membres de groupes dʼapplications, par exemple un groupe Analytics que vous avez déjà géré dans [!UICONTROL Analytics] > [!UICONTROL Outils dʼadministration].

Lorsque vous mappez ces groupes avec des groupes dʼentreprises dʼExperience Cloud, ces utilisateurs doivent associer manuellement les informations de connexion de leur compte dʼapplication avec leur Adobe ID.

Reportez-vous à la section [Liaison de comptes dans Experience Cloud](organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1).

>[!NOTE]
>
>Une fois le mappage de groupes d’entreprises et dʼapplications effectué, les nouveaux utilisateurs sont liés automatiquement. (Les informations de connexion de la solution sont automatiquement créées et liées à leur Adobe ID.)

Les sections suivantes expliquent comment moderniser votre mise en œuvre. Ceci permet d’activer les services principaux dans Experience Cloud.

## Implémentation du [!UICONTROL service Experience Cloud ID] {#section_3C9F6DF37C654D939625BB4D485E4354}

Le [!UICONTROL service Experience Cloud ID] fournit un ID commun pour une intégration entre applications. Il offre une identification des visiteurs interdomaines ainsi quʼun chemin dʼaccès pour le ciblage et la personnalisation entre appareils/navigateurs basés sur les données de gestion de la relation client transférées par le biais dʼ[!UICONTROL Attributs du client].

La méthode la plus simple pour activer les services principaux d’Experience Cloud consiste à les activer automatiquement pour Analytics et Adobe Target à l’aide de l’[extension du service Experience Cloud ID](https://experienceleague.adobe.com/docs/experience-platform/tags/extensions/adobe/id-service/overview.html?lang=fr) dans [!UICONTROL Experience Platform Launch].

Pour accéder à l’aide complète du service Experience Cloud ID (anciennement, identifiant visiteur), [rendez-vous ici](https://experienceleague.adobe.com/docs/id-service/using/intro/overview.html?lang=fr#intro).

**Vous n’utilisez ni [!UICONTROL Experience Platform Launch] ni [!UICONTROL Dynamic Tag Management] ?**

Si vous n’utilisez ni [!UICONTROL Experience Platform Launch] ni [!UICONTROL Dynamic Tag Management], mettez en œuvre manuellement le service d’ID par le biais du déploiement de JavaScript ([!DNL VisitorAPI.js]) en procédant comme suit :

| Tâche | Description |
| -----------| ---------- |  
| [Mise en œuvre du service Experience Cloud ID pour Analytics](https://experienceleague.adobe.com/docs/id-service/using/implementation/setup-analytics.html?lang=fr) | Adobe recommande également de paramétrer des [ID de client](https://experienceleague.adobe.com/docs/id-service/using/reference/authenticated-state.html?lang=fr) supplémentaires. Ces ID sont associés à chaque visiteur ; ils donnent accès aux fonctions existantes et à venir d’Experience Cloud. |
| Mettez à jour le fichier [!DNL s_code] existant vers la version H.27.3 ou ultérieure ou le fichier [!DNL AppMeasurement.js] vers la version 1.4 ou ultérieure. | Ces fichiers peuvent être téléchargés dans le [Gestionnaire de code](https://experienceleague.adobe.com/docs/analytics/admin/admin-tools/code-manager-admin.html?lang=fr) des outils d’administration Analytics. (Le guide de [mise en œuvre de JavaScript](https://experienceleague.adobe.com/docs/analytics/implementation/js/overview.html?lang=fr#js) est disponible si vous avez besoin d’informations complémentaires sur [!DNL AppMeasurement.js].) |
| Synchronisez l’ID client pour Analytics | Voir [Analytics - Synchronisation de l’ID client](core-services.md#section_AD473A6A21C1446498E700363F9A8437) (ci-dessous). |

{style=&quot;table-layout:auto&quot;}

### Analytics et Adobe Target - Synchronisation de l’ID client {#section_AD473A6A21C1446498E700363F9A8437}

Dans le cadre de la configuration du service Experience Cloud ID, Adobe recommande, pour Analytics et [!DNL Target], de synchroniser vos [ID client](https://experienceleague.adobe.com/docs/id-service/using/reference/authenticated-state.html?lang=fr) avec Experience Cloud.

Dans Adobe Target, le paramètre `mbox3rdpartyid` doit obtenir l’ID client et l’envoyer à [!DNL Target]. (Reportez-vous à la section [Utilisation des attributs du client](https://experienceleague.adobe.com/docs/target/using/audiences/visitor-profiles/working-with-customer-attributes.html?lang=fr) dans [!DNL Target].)

Chaque fois qu’un visiteur s’authentifie sur votre site web ou s’identifie d’une autre manière, votre implémentation doit afficher son ID client CRM sur la page ou dans l’application. Par la suite, vous pouvez utiliser l’appel de fonction approprié pour synchroniser votre ID client avec Experience Cloud. Cette synchronisation stocke l’ID de client CRM du visiteur dans Experience Cloud et active les attributs de ce client en vue d’une utilisation dans Experience Cloud.

Par exemple, supposons que Robert a l’identifiant de client `52mc210tr42` dans votre système de gestion de la relation client. Quand Robert s’authentifie sur votre site, vous devez exposer cet identifiant sur la page, puis le synchroniser de l’une des deux façons suivantes :

* Appelez `visitor.setCustomerIDs({"crm_id":"52mc210tr42"})` à l’aide du service d’identification des visiteurs. Sinon,
* renseignez le *`Customer ID (52mc210tr42)`* dans une variable prop ou eVar.

L’ID de client doit être défini dans chaque appel au serveur [!DNL Analytics] où il est connu.

### SDK mobiles

Reportez-vous à la section *Experience Cloud ID Service* pour consulter des exemples de syntaxe sur la manière de définir des ID client supplémentaires dans les applications mobiles [Android™](https://experienceleague.adobe.com/docs/mobile-services/android/overview.html?lang=fr) et [iOS](https://experienceleague.adobe.com/docs/mobile-services/ios/overview.html?lang=fr).

### Activation des attributs pour les données historiques

Les données d’attribut du client sont disponibles une fois les visiteurs connectés. Si vous nʼavez pas encore mis en œuvre le service dʼID et que vous avez effectué le suivi historique des ID de client dans une variable prop ou eVar, vous pouvez appeler un processus qui envoie les connexions historiques vers Experience Cloud. Grâce à ce processus, vous pouvez commencer à utiliser immédiatement les attributs du client.

Contactez l’assistance clientèle pour activer les données d’historique.

## Mapper des suites de rapports à une organisation Experience Cloud {#section_7B08516B01BA421681DF03D0E86CE3BA}

>[!NOTE]
>
>La fonctionnalité de mappage de suites de rapports a été abandonnée en novembre 2020. Contactez le Service clientèle pour toute question.

Les services Experience Cloud (tels que le service Experience Cloud ID et le service [!UICONTROL People]) sont associés à une organisation Experience Cloud plutôt qu’à une suite d’Analytics rapports individuelle. Afin de garantir le bon fonctionnement de ces services, chaque suite de rapports Analytics doit être mappée à une organisation Experience Cloud.

## Mettre à jour votre code Analytics AppMeasurement {#section_1798D9D0F05C47E29816AC4EEB9A0913}

Si vous utilisez Analytics, vérifiez que vous avez recours à la collecte de données régionale (RDC). Si votre domaine de collecte des données est `omtrdc.net` ou si votre CNAME est mappé à `omtrdc.net`, vous utilisez le service RDC. Reportez-vous à la section [Transition vers RDC](https://experienceleague.adobe.com/docs/analytics/technotes/rdc/regional-data-collection.html?lang=fr) pour en savoir plus. Si vous utilisez des cookies propriétaires, reportez-vous à la rubrique [CNAME et service Experience Cloud ID](https://experienceleague.adobe.com/docs/id-service/using/reference/analytics-reference/cname.html?lang=fr) pour en savoir plus sur les CNAME de collecte de données et le suivi interdomaines.

Il vous est recommandé d’actualiser votre mise en œuvre Analytics en mettant à jour vos bibliothèques JavaScript, y compris l’API visiteur. La méthode la plus simple consiste à ajouter une [extension Adobe Analytics](https://experienceleague.adobe.com/docs/experience-platform/tags/extensions/adobe/analytics/overview.html?lang=fr) dans la collecte de données Experience Platform (Launch).

## Mettre à jour votre mise en œuvre Adobe Target {#section_C2F4493C7A36406DAE2266B429A4BD24}

* Il est recommandé dʼajouter une [extension Adobe Target](https://experienceleague.adobe.com/docs/experience-platform/tags/extensions/adobe/target-v2/overview.html?lang=fr) dans [!UICONTROL Experience Platform Launch] afin de permettre lʼextraction automatique de votre bibliothèque. Vous pouvez également configurer lʼ[extension du service Experience Cloud ID](https://experienceleague.adobe.com/docs/experience-platform/tags/extensions/adobe/id-service/overview.html?lang=fr) pour Adobe Target (et dʼautres applications) à lʼaide dʼ[!UICONTROL Experience Platform Launch]. Le [!UICONTROL service Experience Cloud ID] **doit être mis à jour** pour qu’Adobe Target puisse utiliser les services principaux.
* Si vous nʼutilisez pas [!UICONTROL Experience Platform Launch], [mettez à jour votre bibliothèque mbox](https://experienceleague.adobe.com/docs/target/using/implement-target/client-side/implement-target-for-client-side-web.html?lang=fr) manuellement.
* Demandez lʼaccès afin dʼutiliser Adobe Analytics comme source de création de rapports pour [!DNL Adobe Target]. Les données de [!DNL Target] et dʼ[!DNL Analytics] sont combinées dans le même appel au serveur durant le traitement afin que les visiteurs soient connectés entre les deux applications. Voir [Implémentation d’Analytics for Target](https://experienceleague.adobe.com/docs/target/using/integrate/a4t/a4t.html?lang=fr).

   >[!IMPORTANT]
   >
   >Tous les clients d’Analytics sont déjà configurés pour les services principaux ainsi que pour les attributs du client. Si vous n’êtes pas client d’Analytics, contactez le service à la clientèle pour demander à recevoir les privilèges d’accès.

## Vérification de la mise en œuvre {#section_E641782A0F4F44AF8C9C91216BE330D5}

Appliquez la procédure suivante pour vérifier que le service Experience Cloud ID est correctement mis en œuvre sur votre site.

1. Effacez les cookies de votre site afin de pouvoir visualiser la requête du service Experience Cloud ID (cette requête est émise lors de la première visite, puis une fois par visiteur et par semaine).
1. À l’aide d’un analyseur de paquets ou du volet des réseaux dans un débogueur de navigateur web, recherchez une requête envoyée à [!DNL dpm.demdex.net].
1. Vérifiez que la réponse contient `d_mid` et une valeur, par exemple : `_setMarketingCloudFields({"d_mid":"4235...`
1. Vérifiez que la requête d’Analytics contient le paramètre `mid` (l’Experience Cloud ID). Durant la période de grâce (le cas échéant), un paramètre `aid` doit également s’afficher (l’identifiant visiteur Analytics).

Réponse attendue contenant le service Experience Cloud ID :

![Réponse attendue contenant le service Experience Cloud ID](assets/mac_id_response.png)

Demande dʼimage Analytics contenant lʼExperience Cloud ID (également appelé `mid` ou _identifiant visiteur_) :

![Demande dʼimage Analytics contenant lʼExperience Cloud ID](assets/mid.png)

Experience Cloud ID dans la requête de mbox :

![Experience Cloud ID dans la requête de mbox](assets/mbox_request.png)

### Qu’est-ce que la période de grâce ?

Une fois le service Experience Cloud ID déployé, les nouveaux visiteurs ne reçoivent plus d’Experience Cloud ID Analytics de votre serveur de collecte de données. Si le service ID n’a pas encore été mis en œuvre sur certaines sections de votre site, l’Experience Cloud ID n’est pas reconnu lorsque les visiteurs parcourent ces sections et un identifiant visiteur Analytics hérité est attribué aux visiteurs. Ce comportement peut être à l’origine de certains problèmes, notamment des visites en double et des attributions incorrectes.

Si, par exemple, la section Assistance de votre site est gérée dans un système de gestion de contenu distinct, il se peut que vous ayez un fichier JavaScript Analytics différent pour cette section. Si vous déployez lʼExperience Cloud ID sur votre site principal avant de déployer le service dʼID sur le site dʼassistance, les nouveaux visiteurs recevront un Analytics ID hérité lorsquʼils se rendront dans la section dʼassistance. Les visites qui portent sur les deux sections du site seront alors signalées comme deux visites distinctes.

Le déploiement du service Experience Cloud ID sur les sites qui utilisent plusieurs fichiers JavaScript ou dʼautres technologies (telles que Flash) peut entraîner des problèmes de coordination. Ces problèmes se produisent car vous devez activer le service Experience Cloud ID sur toutes les parties de votre site en même temps. Si vous configurez une période de grâce, les nouveaux visiteurs peuvent continuer à recevoir un identifiant visiteur Analytics du service dʼID. Les visiteurs peuvent être identifiés de manière cohérente sur les sections de votre site qui nʼont pas été mises à niveau pour utiliser le service dʼidentification des visiteurs.

## Gérer les utilisateurs et les produits {#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF}

Lorsque vous êtes opérationnel, accédez à [Admin Console](https://adminconsole.adobe.com/), à partir de laquelle vous pouvez gérer les utilisateurs et les profils de produits.

![Accès à Admin Console](assets/menu-administration-shell.png)

Voir [Gestion des utilisateurs et des produits Experience Cloud](admin-getting-started.md#topic_3FCB4099640647E3B2411ADBFCE81909).

### Attributs du client

Les utilisateurs membres du groupe [!UICONTROL Attributs du client] ont accès aux options du menu [!UICONTROL Attributs du client] sur le côté gauche de l’interface d’Experience Cloud.

## Commencer à partager les données d’attribut et d’audience {#section_960C06093623462E8EA247B3E97274A1}

Profitez des fonctionnalités suivantes.

### [!UICONTROL Personnes] > [!UICONTROL Attributs du client]

Si vous capturez des données clients d’entreprise dans une base de données de gestion de la relation client (CRM), vous pouvez les transférer dans une source de données d’attributs du client dans Experience Cloud. Une fois le transfert effectué, utilisez les données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

Voir [Attributs du client](attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1)

### [!UICONTROL Personnes] > [!UICONTROL Bibliothèque d’audiences]

Dans l’interface [!UICONTROL Audiences] d’Experience Cloud, vous pouvez créer des audiences, combiner les audiences existantes pour créer des audiences composites et afficher toutes les audiences partagées.

Voir [Audiences](audience-library.md#topic_679810123CAA4E0CA4FA3417FB0100C7)

## Stockage des données et divulgation des données confidentielles

L’utilisation du profilage d’audiences en temps réel et d’autres services principaux au sein d’Adobe [!DNL Experience Cloud] peut avoir une influence sur le centre de données (et le pays) où se trouvent vos données. En particulier, dans la mesure où [!DNL Experience Cloud] utilise Audience Manager, les données utilisées dans le service [!UICONTROL Personnes] doivent se trouver sur les serveurs d’Audience Manager situés aux États-Unis.

Lors de l’utilisation de services accessibles par le biais du service [!UICONTROL Personnes], les types de données envoyés depuis d’autres produits Adobe à la gestion de l’audience sont les suivants :

* Paires clé/valeur [!DNL Analytics] (Props, eVars, variables de liste, etc.). Par défaut, les lignes des journaux contiennent l’adresse IP, notamment le dernier octet de l’adresse IP (en supposant que l’adresse IP n’a pas été modifiée par les paramètres de masquage d’Adobe [!DNL Analytics]).
* Caractéristiques et segments pour lesquels les visiteurs sont inclus selon les règles configurées dans Audience Manager.
* (Facultatif) Un ou plusieurs de vos identifiants. Selon votre mise en œuvre du service d’ID, vous envoyez peut-être également un ou plusieurs de vos ID, tels que les ID CRM ou des adresses électroniques hachées. Si ces données sont envoyées à Adobe [!DNL Analytics], elles sont transférées à la gestion de l’audience d’Adobe. Adobe recommande de ne pas fournir de données personnelles à Adobe [!DNL Analytics]. Utilisez un hachage à sens unique pour masquer les données avant de les envoyer à Adobe.
* Segments provenant d’[!DNL Analytics] au moyen de la fonctionnalité de partage des segments principale.
* Le cookie demdex.net est défini si les cookies tiers ne sont pas bloqués. Le cookie propriétaire `AMCV_###@AdobeOrg` est toujours défini avec le service Experience Cloud ID.

Tous ces éléments de données sont transmis à Adobe Audience Manager sous forme de fichiers journaux. Audience Manager traite et stocke ces données aux États-Unis. Audience Manager ne permet pas de stocker ni de traiter ces données en dehors des États-Unis.

### Cookies et exclusions

Le recours au profilage d’audiences en temps réel entraîne l’utilisation du cookie d’Audience Manager, en plus des cookies utilisés pour [!DNL Analytics] et [!DNL Target].

Si vous souhaitez proposer la fonctionnalité d’exclusion adaptée, les visiteurs de votre site doivent ajouter l’exclusion d’Audience Manager à votre processus d’exclusion.

Pour obtenir des instructions, reportez-vous au document [Adobe Experience Cloud : mise en œuvre des exclusions Adobe](https://experienceleague.adobe.com/docs/analytics/implementation/js/opt-out.html?lang=fr).

Voir [CNAME de collecte de données et suivi interdomaines](https://experienceleague.adobe.com/docs/id-service/using/reference/analytics-reference/cname.html?lang=fr) pour en savoir plus sur l’activation du suivi interdomaines.
