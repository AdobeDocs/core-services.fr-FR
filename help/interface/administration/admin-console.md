---
title: Gestion des licences d’utilisation et de produit
description: Gérez les utilisateurs et les licences de produits dans Admin Console pour les applications CX Enterprise.
application: Experience Cloud
index: true
feature: Admin Console
topic: Administration
role: Admin
level: Experienced
exl-id: c82821c4-aa5d-48ae-8bef-5937fede8db2
autotag-review: '2026-05-12T21:16:07.250Z'
TQID: 'https://experienceleague.adobe.com/tONTr5mo5qLUxNS-q-uHGMCc5jKkURApIR-2RW0aV3w'
product_v2:
  - id: e1971122-7081-4556-9222-8a31bd71800c
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2:
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2:
  - id: eb7e29b9-c5e9-4ed0-8e4b-6465dabb3cb1
  - id: f1299f18-ec4b-4531-b2a2-df3b94ff9a68
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2:
  - id: bce87dde-a4ab-44c9-8a18-ad66e4ddb377
  - id: c7d04a2c-412a-4c9d-9d7a-4456eaa5adeb
  - id: d00e9f03-e50b-4162-b143-0c0817c937c2
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
  - id: d3cdead0-685a-4489-9250-4bb709942f66
  - id: e1e0219c-f879-479f-8427-888ed2a6e9c2
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
  - id: f4e6943a-c91a-4134-a2c7-f4f20cfff2f0
source-git-commit: 25446910430bf15dcfa0fc70e25e0681f9faeb95
workflow-type: tm+mt
source-wordcount: 1054
ht-degree: 8%

---

# Gestion des utilisateurs et des produits

Vous pouvez gérer les utilisateurs et les licences de produits dans Adobe [Admin Console](https://adminconsole.adobe.com/enterprise/). Pour obtenir une aide générale sur la gestion des identités applicable à toutes les applications Adobe, consultez le guide [Enterprise and Teams admin guide](https://helpx.adobe.com/fr/enterprise/admin-guide.html).

Cette page fournit des informations particulièrement utiles aux administrateurs CX Enterprise, définit des rôles et fournit des liens vers des rubriques courantes sur la gestion des utilisateurs et des produits dans le guide Enterprise.

## Rôles administratifs dans Admin Console

Admin Console fournit trois rôles administratifs principaux, chacun disposant de niveaux spécifiques d’accès et de responsabilité :

| Rôle | Description |
| ------- | ------- |
| Administrateur système | Accès complet : gère tous les aspects de la console. <br>Principales responsabilités : <br><ul><li>Ajouter, supprimer et gérer des utilisateurs.</li><li>Attribuez et révoquez des licences de produit.</li><li>Configuration des paramètres d’identité et d’authentification</li><li>Afficher et gérer les informations de facturation.</li><li>Configurez d’autres rôles d’administrateur et de délégué.</li></ul> **Idéal pour** administrateurs informatiques ou chefs d’équipe supervisant l’ensemble de l’environnement Adobe de l’entreprise. |
| Administrateur de produit | Gestion spécifique aux produits : contrôle l’accès et les autorisations pour des produits Adobe spécifiques.<br>Principales responsabilités :<ul><li>Attribuez et gérez des licences pour un produit spécifique.</li><li>Créer et gérer des profils de produit.</li><li>Ajouter ou supprimer des utilisateurs dans les produits affectés.</li></ul>   **Idéal pour** équipes/utilisateurs gérant des logiciels spécifiques tels que Marketo Engage ou Adobe Creative Cloud. |
| Administrateur de profil de produit | Gestion des rôles granulaire : se concentre sur la gestion des groupes d’utilisateurs et des autorisations au sein d’un produit.<br>Principales responsabilités :<ul><li>Créer et gérer des profils de produit.</li><li>Attribuez des autorisations et un accès aux fonctionnalités dans les profils.</li><li>Ajouter ou supprimer des utilisateurs dans les profils.</li></ul> **Idéal pour :** chefs de service ou chefs d&#39;équipe supervisant des groupes plus petits ayant des besoins particuliers. <br> Les administrateurs et administratrices peuvent combiner les rôles pour une plus grande flexibilité, en fonction des exigences organisationnelles. |

## Admin Console pour CX Enterprise

Pour gérer l’identité et les licences de produits pour les applications CX Enterprise, accédez à [&#128279;](https://adminconsole.adobe.com/enterprise/).

Voici les ressources dont vous pourriez avoir besoin lors de la prise en main en tant qu’administrateur dans Admin Console :

### Configurer les ressources

| Lien d’aide | Description |
| ------- | ------ |
| [Configurer l’identité et l’authentification unique](https://helpx.adobe.com/fr/enterprise/using/set-up-identity.html) | **[!UICONTROL Admin Console]** > **[!UICONTROL Settings]** <br> Découvrez comment configurer les comptes de vos utilisateurs avec différents types d’ID avec ou sans authentification unique (SSO). Configurez l’authentification unique pour le logiciel Adobe, configurez les paramètres SAML et passez en revue les questions et erreurs les plus courantes. |
| [Configuration de l’organisation via l’approbation d’annuaire](https://helpx.adobe.com/enterprise/using/directory-trust.html) | Authentifiez vos utilisateurs sur un domaine déjà demandé par une autre organisation. Pour plus d’informations sur la recherche et le changement d’organisation, voir [Organisations dans CX Enterprise](organizations.md). |
| [Paramètres d’authentification (entreprise)](https://helpx.adobe.com/enterprise/using/authentication-settings.html) | Admin Console prend en charge plusieurs niveaux de protection par mot de passe et stratégies pour assurer la sécurité. Vous pouvez indiquer d’utiliser un niveau de protection par mot de passe à appliquer à tous les utilisateurs de votre entreprise. |
| [Contacts de confidentialité et de sécurité](https://helpx.adobe.com/enterprise/using/security-contacts.html) | Protégez les données de votre entreprise et des utilisateurs. Si un incident de sécurité impliquant nos solutions logicielles se produit, des notifications sont envoyées aux responsables de la conformité appropriés. Les entreprises disposent de personnel dont le rôle est spécifique à la protection des données, à l’intégrité et à d’autres questions de conformité. Par conséquent, les coordonnées de ce personnel sont essentielles pour assurer une notification rapide en cas d’incident de sécurité. |

### Gestion des utilisateurs et utilisatrices

| Lien d’aide | Description |
| ------- | ------- |
| [Réinitialiser votre Adobe ID](https://helpx.adobe.com/account/individual/sign-in-and-security/security-and-recovery/cant-sign-in-to-adobe-account.html) | Déconnectez-vous, puis cliquez sur **[!UICONTROL Get help signing in]** > **[!UICONTROL Reset your password]**. |
| [Gérer plusieurs utilisateurs](https://helpx.adobe.com/enterprise/using/bulk-upload-users.html) | **[!UICONTROL Admin Console]** > **[!UICONTROL Users]** <br>Découvrez comment gérer plusieurs utilisateurs et utilisatrices par le biais d’un chargement en masse de CSV vers Admin Console. |
| [Types d’identité](https://helpx.adobe.com/fr/enterprise/using/identity.html) | Les types d’identité permettent à l’organisation de contrôler à différents niveaux les comptes et données des utilisateurs. Le choix du modèle d’identité a une incidence sur la manière dont votre organisation stocke et partage les ressources. Alors que les modèles Federated ID et Enterprise ID sont créés et gérés par l’organisation, les Adobe ID sont créés et gérés par la personne concernée. |
| [Outil de synchronisation des utilisateurs](https://helpx.adobe.com/enterprise/using/user-sync.html) (UST) | L’outil de synchronisation des utilisateurs d’Adobe est une application de bureau utilisée pour automatiser la synchronisation des données utilisateur entre le système Identity Management d’une organisation (comme Active Directory) et Adobe Admin Console. Cet outil permet aux administrateurs de rationaliser l’approvisionnement, les mises à jour et la désactivation des utilisateurs et utilisatrices sur l’ensemble des produits Adobe. |
| [Afficher les détails de l’utilisateur (outil d’administration)](admin-tool-experience-cloud.md) | Affichez une liste triable et filtrable de tous les utilisateurs et politiques CX Enterprise avec des détails dans la [!UICONTROL Admin Tool]. |

### Rapports et journaux

| Lien d’aide | Description |
| ------- | ------- |
| [&#x200B; Journal d’audit &#x200B;](https://helpx.adobe.com/enterprise/using/audit-logs.html) | **[!UICONTROL Insights]** > **[!UICONTROL Logs]** > **[!UICONTROL Audit Log]** <br> Effectuez le suivi de toutes les modifications apportées dans Admin Console. |


## Ressources spécifiques à l’application

Ces liens vous aident à trouver des informations d&#39;administration pour des applications CX Enterprise spécifiques.

<!--
| Application | Link to resource|
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

* [Advertising Search, Social et Commerce](https://experienceleague.adobe.com/en/docs/advertising/search-social-commerce/target/user-administration)
* [Analytics](https://experienceleague.adobe.com/en/docs/analytics/admin/admin-console/home)
* [Customer Journey Analytics](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/workspace-faq/frequently-asked-questions-analysis-workspace)
* [Audience Manager](https://experienceleague.adobe.com/en/docs/audience-manager/user-guide/features/administration/admin-console-migration)
* [Campaign v8](https://experienceleague.adobe.com/fr/docs/campaign/campaign-v8/permissions/gs-permissions)
* [Campaign Standard](https://experienceleague.adobe.com/en/docs/campaign-web/acs-to-ac/user-management-acs)
* [&#128279;](https://experienceleague.adobe.com/en/docs/commerce-admin/start/admin/ims/adobe-ims-config)
* [Dynamic Media Classic](https://experienceleague.adobe.com/en/docs/dynamic-media-classic/using/setup/administration-setup#user_administration)
* [Experience Manager as a Cloud Service](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/onboarding/journey/admin-console)
* [&#128279;](https://experienceleague.adobe.com/en/docs/experience-platform/access-control/ui/overview) et [collecte de données](https://experienceleague.adobe.com/en/docs/experience-platform/collection/permissions)
* [&#128279;](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/intro/product-provisioning)
* [Journey Optimizer](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/access-control/permissions)
* [Journey Optimizer B2B edition](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/admin/user-management)
* [Journey Orchestration](https://experienceleague.adobe.com/en/docs/journeys/using/starting-with-journeys/access-management)
* [&#128279;](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/administration/marketo-with-adobe-identity/subscription-and-user-migration/understanding-marketo-subscription-and-user-migration-to-the-adobe-admin-console)
* [&#128279;](https://experienceleague.adobe.com/en/docs/marketo-measure/using/configuration-and-setup/getting-started-with-marketo-measure/adobe-admin-console-setup)
* [Mix Modeler](https://experienceleague.adobe.com/en/docs/mix-modeler/using/data-governance/access-controls)
* [Cible](https://experienceleague.adobe.com/en/docs/target/using/administer/start-target)
* [Workfront](https://experienceleague.adobe.com/en/docs/workfront/using/administration-and-setup/add-users/create-manage-users/admin-console)

La majorité de l’aide d’Admin Console pour toutes les applications Adobe est documentée dans le [guide d’administration des entreprises et des équipes](https://helpx.adobe.com/fr/enterprise/admin-guide.html).

