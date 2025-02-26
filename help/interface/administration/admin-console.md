---
title: Gestion des licences d’utilisation et de produit
description: Gérez les utilisateurs et les licences de produits dans Admin Console pour les applications Experience Cloud.
application: Experience Cloud
index: true
feature: Admin Console
topic: Administration
role: Admin
level: Experienced
exl-id: c82821c4-aa5d-48ae-8bef-5937fede8db2
source-git-commit: 9932f21e4aa4d4a5bf08d7f1617b4c25d4fb14bb
workflow-type: tm+mt
source-wordcount: '788'
ht-degree: 4%

---

# Gestion des utilisateurs et licences de produits

Cette page fournit des informations destinées spécifiquement aux administrateurs Experience Cloud, avec des liens vers la documentation commune relative à la gestion des utilisateurs et des produits.

Pour obtenir une aide générale sur la gestion des identités applicable à toutes les applications Adobe, consultez le guide [Enterprise and Teams admin guide](https://helpx.adobe.com/fr/enterprise/admin-guide.html).

Les sections suivantes fournissent des liens vers des ressources dans l’aide d’Admin Console.

## Rôles administratifs dans Admin Console

Admin Console fournit trois rôles administratifs principaux, chacun disposant de niveaux spécifiques d’accès et de responsabilité :

**Administrateur système :** accès complet - Gère tous les aspects de la console.

Principales responsabilités :

* Ajouter, supprimer et gérer des utilisateurs.
* Attribuez et révoquez des licences de produit.
* Configurez l’identité et les paramètres d’authentification.
* Afficher et gérer les informations de facturation.
* Configurez d’autres rôles d’administrateur et de délégué.

  **Idéal pour** administrateurs informatiques ou chefs d’équipe supervisant l’ensemble de l’environnement Adobe de l’entreprise.

**Administrateur de produit :** gestion spécifique au produit - Contrôle l’accès et les autorisations pour des produits Adobe spécifiques.

Principales responsabilités :

* Attribuez et gérez des licences pour un produit spécifique.
* Créer et gérer des profils de produit.
* Ajouter ou supprimer des utilisateurs dans les produits affectés.

  **Idéal pour** équipes/utilisateurs gérant des logiciels spécifiques tels que Marketo Engage ou Adobe Creative Cloud.

**Administrateur de profils de produit :** Gestion granulaire des rôles : se concentre sur la gestion des groupes d’utilisateurs et des autorisations au sein d’un produit.

* Responsabilités clés :
* Créer et gérer des profils de produit.
* Attribuez des autorisations et un accès aux fonctionnalités dans les profils.
* Ajouter ou supprimer des utilisateurs dans les profils.

  **Idéal pour :** responsables de service ou chefs d’équipe supervisant des groupes plus petits ayant des besoins spécifiques

  Les administrateurs et administratrices peuvent combiner les rôles pour une plus grande flexibilité, en fonction des exigences organisationnelles.

## Configuration d’Admin Console

Pour gérer les licences d’identité et de produit pour les applications Experience Cloud, accédez à [Admin Console](https://adminconsole.adobe.com/enterprise/).

* [Configurer l’identité et l’authentification unique](https://helpx.adobe.com/fr/enterprise/using/set-up-identity.html) - Découvrez comment configurer les comptes de vos utilisateurs avec différents types d’ID avec ou sans authentification unique (SSO). Configurez l’authentification unique pour le logiciel Adobe, configurez les paramètres SAML et passez en revue les questions et erreurs les plus courantes.

* [Configuration d’une organisation via l’approbation d’annuaire](https://helpx.adobe.com/enterprise/using/directory-trust.html) - Utilisez l’approbation d’annuaire pour authentifier vos utilisateurs sur un domaine déjà demandé par une autre organisation.

  Consultez [Organisations dans Experience Cloud](organizations.md) pour plus d’informations sur les organisations.

* [Paramètres d’authentification (entreprise)](https://helpx.adobe.com/enterprise/using/authentication-settings.html) - Admin Console prend en charge plusieurs niveaux de protection par mot de passe et politiques pour assurer la sécurité. Vous pouvez indiquer d’utiliser un niveau de protection par mot de passe à appliquer à tous les utilisateurs de votre entreprise. Assistance clientèle Adobe : trois niveaux de sécurité.

* [Contacts de confidentialité et de sécurité](https://helpx.adobe.com/enterprise/using/security-contacts.html) - Adobe met l’accent sur la protection des données de votre entreprise et des utilisateurs et utilisatrices. En cas d&#39;incident de sécurité impliquant nos solutions logicielles, des notifications sont envoyées aux responsables de la conformité appropriés.

  Les entreprises disposent de leur propre personnel dont le rôle est spécifique à la protection des données, à l’intégrité et à d’autres questions de conformité. Par conséquent, les coordonnées de ce personnel sont essentielles pour assurer une notification rapide en cas d’incident de sécurité.

## Gestion des utilisateurs

* [Gérer plusieurs utilisateurs](https://helpx.adobe.com/enterprise/using/bulk-upload-users.html) Chargement en bloc de fichiers CSV : découvrez comment gérer plusieurs utilisateurs par le biais du chargement en bloc de fichiers CSV sur le Adobe Admin Console.

* [Types d’identité](https://helpx.adobe.com/fr/enterprise/using/identity.html) - Les types d’identité permettent à l’organisation de contrôler à différents niveaux les comptes et données des utilisateurs. Le choix du modèle d’identité a une incidence sur la manière dont votre organisation stocke et partage les ressources. Alors que les modèles Federated ID et Enterprise ID sont créés et gérés par l’organisation, les Adobe ID sont créés et gérés par la personne concernée.

* [Outil de synchronisation des utilisateurs](https://helpx.adobe.com/enterprise/using/user-sync.html) (UST) - L’outil de synchronisation des utilisateurs d’Adobe est une application de bureau utilisée pour automatiser le processus de synchronisation des données utilisateur entre le système de gestion des identités d’une organisation (comme Active Directory) et Adobe Adobe Admin Console. Cet outil permet aux administrateurs de rationaliser l’approvisionnement, les mises à jour et la désactivation des utilisateurs et utilisatrices sur l’ensemble des produits Adobe.

  L’outil de synchronisation des utilisateurs permet aux entreprises de simplifier la gestion des comptes utilisateur et des licences en synchronisant automatiquement les données utilisateur (telles que les rôles, les groupes et les autorisations d’accès) entre leur service d’annuaire et les systèmes Adobe. Cet outil est particulièrement utile pour les entreprises disposant de grandes équipes. Cela permet de maintenir la cohérence et la sécurité tout en veillant à ce que les utilisateurs n’aient accès qu’aux produits et services auxquels ils ont droit.

* [Afficher les détails de l’utilisateur (outil d’administration)](admin-tool-experience-cloud.md) - Les administrateurs peuvent afficher une liste triable et filtrable de tous les utilisateurs et politiques Experience Cloud avec des détails dans l’[!UICONTROL outil d’administration].

## Rapports et journaux

* [Journal d’audit](https://helpx.adobe.com/enterprise/using/audit-logs.html) Pour suivre toutes les modifications apportées dans Admin Console.

Pour obtenir de l’aide qui n’est pas décrite dans les emplacements précédents, parcourez le [guide d’administration des entreprises et des équipes](https://helpx.adobe.com/fr/enterprise/admin-guide.html).

## Ressources spécifiques à l’application

Ces liens vous aident à trouver des informations d’administration pour des applications Experience Cloud spécifiques.

<!-- | Application | Link to resource|
| ------- | ------- |
|  [!DNL Analytics] <p>Customer Journey Analytics| [Analytics in the Adobe Admin Console overview](https://experienceleague.adobe.com/en/docs/analytics/admin/admin-console/home) <p>[Administration requirements](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/workspace-faq/frequently-asked-questions-analysis-workspace) |
| [!DNL Audience Manager] | [Audience Manager user migration to Admin Console](https://experienceleague.adobe.com/en/docs/audience-manager/user-guide/features/administration/admin-console-migration) |
| [!DNL Campaign] v8 |  [Get started with permissions](https://experienceleague.adobe.com/en/docs/campaign/campaign-v8/admin/permissions/gs-permissions) |
| [!DNL Campaign Standard] to [!DNL Campaign v8] | [User access management from Campaign Standard to Campaign V8](https://experienceleague.adobe.com/en/docs/campaign-web/acs-to-ac/user-management-acs) |
| [!DNL Commerce] | [Configure the Commerce Admin Integration with Adobe ID](https://experienceleague.adobe.com/en/docs/commerce-admin/start/admin/ims/adobe-ims-config) |
| [!DNL Dynamic Media Classic] | [Administration setup](https://experienceleague.adobe.com/en/docs/dynamic-media-classic/using/setup/administration-setup#user_administration) |
| [!DNL Experience Manager as a Cloud Service] |  [Accessing the Admin Console](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/onboarding/journey/admin-console) |
| [!DNL Experience Platform] <p>[!DNL Data Collection] | [Access control UI overview](https://experienceleague.adobe.com/en/docs/experience-platform/access-control/ui/overview) <p>[Permission management for data collection in Experience Platform](https://experienceleague.adobe.com/en/docs/experience-platform/collection/permissions)|
| [!DNL GenStudio for Performance Marketing] | [Provision Adobe GenStudio for Performance Marketing](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/intro/product-provisioning) |
| [!DNL Journey Optimizer] | [Manage users and roles](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/access-control/permissions) |
| [!DNL Journey Optimizer B2B Edition] | [User management](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/admin/user-management) |
|[!DNL  Journey Orchestration] | [Access management](https://experienceleague.adobe.com/en/docs/journeys/using/starting-with-journeys/access-management) |
| [!DNL Marketo Engage] | [Understanding Marketo Subscription and User Migration to the Adobe Admin Console](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/administration/marketo-with-adobe-identity/subscription-and-user-migration/understanding-marketo-subscription-and-user-migration-to-the-adobe-admin-console) |
| [!DNL Marketo Measure] | [Adobe Admin Console Setup](https://experienceleague.adobe.com/en/docs/marketo-measure/using/configuration-and-setup/getting-started-with-marketo-measure/adobe-admin-console-setup) |
| [!DNL Mix Modeler] | [Access controls](https://experienceleague.adobe.com/en/docs/mix-modeler/using/data-governance/access-controls) |
| [!DNL Pass] | [Get started with Account IQ](https://experienceleague.adobe.com/en/docs/pass/aiq-help/get-started) |
| [!DNL Target] | [Administrator first steps](https://experienceleague.adobe.com/en/docs/target/using/administer/start-target) <p> [User management](https://experienceleague.adobe.com/en/docs/target/using/administer/manage-users/user-management) |
| [!DNL Workfront] | [Manage users in the Adobe Admin Console](https://experienceleague.adobe.com/en/docs/workfront/using/administration-and-setup/add-users/create-manage-users/admin-console) |

 -->

* [Analytics](https://experienceleague.adobe.com/en/docs/analytics/admin/admin-console/home)
* [Customer Journey Analytics](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/workspace-faq/frequently-asked-questions-analysis-workspace)
* [Audience Manager](https://experienceleague.adobe.com/en/docs/audience-manager/user-guide/features/administration/admin-console-migration)
* [Campaign v8](https://experienceleague.adobe.com/fr/docs/campaign/campaign-v8/admin/permissions/gs-permissions)
* [Campaign Standard](https://experienceleague.adobe.com/en/docs/campaign-web/acs-to-ac/user-management-acs)
* [Commerce](https://experienceleague.adobe.com/en/docs/commerce-admin/start/admin/ims/adobe-ims-config)
* [Dynamic Media Classic](https://experienceleague.adobe.com/en/docs/dynamic-media-classic/using/setup/administration-setup#user_administration)
* [Experience Manager as a Cloud Service](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/onboarding/journey/admin-console)
* [Experience Platform](https://experienceleague.adobe.com/en/docs/experience-platform/access-control/ui/overview) et [collecte de données](https://experienceleague.adobe.com/en/docs/experience-platform/collection/permissions)
* [GenStudio for Performance Marketing](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/intro/product-provisioning)
* [Journey Optimizer](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/access-control/permissions)
* [Journey Optimizer B2B edition](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/admin/user-management)
* [Journey Orchestration](https://experienceleague.adobe.com/en/docs/journeys/using/starting-with-journeys/access-management)
* [Marketo Engage](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/administration/marketo-with-adobe-identity/subscription-and-user-migration/understanding-marketo-subscription-and-user-migration-to-the-adobe-admin-console)
* [Marketo Measure](https://experienceleague.adobe.com/en/docs/marketo-measure/using/configuration-and-setup/getting-started-with-marketo-measure/adobe-admin-console-setup)
* [Mix Modeler](https://experienceleague.adobe.com/en/docs/mix-modeler/using/data-governance/access-controls)
* [Adobe Pass](https://experienceleague.adobe.com/en/docs/pass/aiq-help/get-started)
* [Target](https://experienceleague.adobe.com/en/docs/target/using/administer/start-target)
* [Workfront](https://experienceleague.adobe.com/en/docs/workfront/using/administration-and-setup/add-users/create-manage-users/admin-console)