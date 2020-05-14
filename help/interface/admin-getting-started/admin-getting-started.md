---
description: Découvrez comment vous connecter à la console d’administration, gérer les permissions utilisateur et les profils de produits d’Experience Cloud et la prise en charge des navigateurs.
keywords: core services
seo-description: Découvrez comment vous connecter à la console d’administration, gérer les permissions utilisateur et les profils de produits d’Experience Cloud et la prise en charge des navigateurs.
seo-title: Gestion des utilisateurs et des produits Experience Cloud
solution: Experience Cloud
title: Gestion des utilisateurs et des produits Experience Cloud
index: true
translation-type: tm+mt
source-git-commit: a4a0760f838178b3c4caebf89e389da8a7ff4627
workflow-type: tm+mt
source-wordcount: '1449'
ht-degree: 41%

---


# Gestion des utilisateurs et des produits Experience Cloud {#topic_3FCB4099640647E3B2411ADBFCE81909}

Découvrez comment vous connecter à la console d’administration, gérer les permissions utilisateur et les profils de produits d’Experience Cloud et la prise en charge des navigateurs.

>[!IMPORTANT]
>
>La gestion des utilisateurs dans Admin Console implique l’introduction de nouveaux termes, de nouvelles interfaces et d’une nouvelle navigation. Vous trouverez ci-dessous des informations sur ces modifications, ainsi que des liens vers d’autres ressources utiles. This help supplements the information in the [Enterprise Administration User Guide](https://helpx.adobe.com/fr/enterprise/managing/user-guide.html) for all Adobe cloud products.

## Nouveautés en matière de gestion des utilisateurs d’Experience Cloud {#concept_06A0A13362F644FB90F947238407637A}

Découvrez les dernières fonctionnalités de la gestion des utilisateurs d’Experience Cloud.

<!-- ### Business ID type

Adobe is introducing an identity type called _Business ID_. This identity type improves the control of user and product management. Adobe is migrating all Adobe IDs (owned by individuals) that are used for business to the new enterprise Business IDs owned by your organization.

If you are an existing Experience Cloud customer, Adobe will migrate all your users on the Admin Console with Adobe IDs to Business IDs. If you are a new enterprise or teams customer, you will add users to the Admin Console using one of the available identity types: Business ID, Enterprise ID, or Federated ID.

Beginning May 2020, enterprise administrators cannot use the Adobe ID for new organizations created in the Admin Console. Latest: https://wiki.corp.adobe.com/pages/viewpage.action?spaceKey=engage&title=Type2e+DX+GTM

What to do

* Your users will need to accept Terms of Use (TOU) changes prior to accounts being migrated to Type2e. 
* Users that belong to multiple organizations might see a Profile Selection screen during the login workflow and need to select the correct one. This ensures that they are logging into the correct organization. (There might be multiple profiles to choose from if a users was a member of multiple organizations before the migration.) -->

### Outil Administration

Les administrateurs peuvent vue une liste pouvant être triée et filtrée de tous les utilisateurs d’Experience Cloud et de leurs détails dans l’outil d’administration. Voir Utilisateurs de [Vue Experience Cloud dans l’outil](admin-tool-experience-cloud.md)d’administration.

## Connexion à Admin Console {#section_705072FD4EBE4B70BC69EC81F2BB8669}

Les administrateurs ne gèrent plus les utilisateurs dans les solutions. La gestion des utilisateurs et des produits pour Experience Cloud se produit désormais dans la Console d’administration.

Pour vous connecter à la console d’administration :

1. Navigate to [https://adminconsole.adobe.com/enterprise/](https://adminconsole.adobe.com/enterprise/#).
1. Saisissez votre ID [Adobe ou Enterprise ID](https://helpx.adobe.com/fr/enterprise/using/identity.html) et votre mot de passe.

Alternatively, from the Experience Cloud menu ( ![](assets/menu-icon.png)), click **[!UICONTROL Administration]** > **[!UICONTROL Launch Admin Console]**.

**Aide connexe**

[Guide](https://helpx.adobe.com/fr/enterprise/using/users.html) de l’utilisateur Administration pour Creative Cloud et Document Cloud. Certaines informations concernent la gestion des utilisateurs d’Experience Cloud, telles que la [gestion des types](https://helpx.adobe.com/fr/enterprise/using/identity.html)d’identité.

[Connectez-vous et gérez vos paramètres](../admin-getting-started/getting-started-experience-cloud.md#topic_AC564B6795334DE39359ADD87F52F2E0) de profil pour gérer les mots de passe, les organisations et les notifications.

## Profils et groupes de produits  {#section_AB50558124D541CF80A0D3D76D35A4BF}

L’insertion de profils de produits marque un tournant quant à la façon de gérer les produits et services de la solution (en utilisant des groupes). Dans la console d’administration, les autorisations dépendent des profils de produits, qui sont des groupes de produits et de services que vous pouvez affecter aux utilisateurs.

Dans Analytics par exemple, vous pouvez configurer une collection d’outils de création de rapports, tels qu’Analysis Workspace et le Report Builder, parallèlement aux suites de rapports, aux mesures, aux dimensions, etc. Vous pouvez autoriser les utilisateurs à accéder à un profil de produits en les ajoutant au profil. See [Assign Analytics access permissions to a product profile](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391).

**Aide connexe**

[Délégation de droits d’administration limités](../admin-getting-started/admin-getting-started.md#task_3A072C4AA9734BC59FFA7E015271BC7E)

## Analytics {#section_97DE101F92CD494AB073893680992F1A}

Gérez dans Admin Console les autorisations des utilisateurs et des produits Analytics.

[Affectez des autorisations d’accès Analytics à un profil de produits](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391)(sur cette page).

**Migration des comptes d’utilisateurs**

Dans Analytics, les administrateurs peuvent utiliser l’outil de migration des ID d’utilisateur pour migrer des comptes d’utilisateurs de la gestion des utilisateurs Analytics vers [Adobe Admin Console](https://adminconsole.adobe.com/enterprise/)

La migration des comptes est en cours de déploiement. Adobe will notify and assist you when it is your time to migrate existing user accounts from **[!UICONTROL Admin Tools]** > **[!UICONTROL User Management]** to the Admin Console.

After the migration, users sign in using their Adobe ID (or Enterprise ID) and authenticate to their Experience Cloud solutions and services at [experiencecloud.adobe.com](https://experiencecloud.adobe.com). Si les utilisateurs tentent de se connecter au moyen des comptes hérités ([!DNL my.omniture.com] et [!DNL sc.omniture.com]), ils sont redirigés vers [!DNL experiencecloud.adobe.com].

**Aide connexe**

[Migration de l’ID utilisateur Analytics](https://docs.adobe.com/content/help/fr-FR/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.translate.html)

## Adobe Target - product profiles vs workspaces {#section_3860AF177C9E4C7E9C390D36A414F353}

Dans Adobe Cible, un espace de travail est un profil de produit. Avec un espace de travail, une organisation peut allouer un groupe d’utilisateurs spécifique à un groupe de propriétés spécifique. Un espace de travail peut être comparé à une suite de rapports dans Adobe Analytics.

Voir :
* [Autorisations des utilisateurs d’Enterprise](https://docs.adobe.com/content/help/fr-FR/target/using/administer/manage-users/enterprise/property-channel.html)
* [Gestion des produits et des profils](https://helpx.adobe.com/fr/enterprise/using/manage-products-and-profiles.html)
* Vidéo : [Configuration des espaces de travail Adobe Cible dans Adobe Admin Console](https://helpx.adobe.com/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Campaign - profils de produits, clients et groupes de sécurité {#section_09CDF75366444CF5810CF321B7C712F3}

Un *client* dans Campaign s’affiche en tant que *produit* dans la page Produits de la Console d’administration.

*Le groupe* de sécurité s’affiche en tant que profil de produit.

Voir [Gestion des groupes et des utilisateurs](https://helpx.adobe.com/campaign/standard/administration/using/managing-groups-and-users.html) pour en savoir plus sur les groupes de sécurité et affectation d’utilisateurs à des groupes de sécurité.

## Experience Platform Launch {#section_F2DA6778DD2D48AA8F794041971EE6B1}

Le lancement de la plate-forme d’expérience s’affiche sur la page Produits de la console d’administration. Vous pouvez inclure d’autres solutions et services dans un profil de produits Launch.

Voir Gestion des [utilisateurs](https://docs.adobelaunch.com/launch-reference/administration/user-permissions) pour en savoir plus sur les autorisations d’utilisateur dans la Console d’administration et pour configurer des options spécifiques au lancement, y compris l’attribution de droits aux profils.

## Experience Manager as a Cloud Service

Les clients Adobe Enterprise sont représentés en tant qu’organisations IMS dans Adobe Admin Console. Il s’agit du portail utilisé par les clients Adobe pour gérer les droits des produits pour leurs utilisateurs et groupes. Les clients AEM peuvent utiliser Adobe Admin Console pour gérer leurs droits sur les produits et l’authentification IMS vers AEM en tant que service Cloud.

See [IMS Support for AEM as a Cloud Service](https://youtu.be/EuUAVLZMdDA).

## Gestionnaire dynamique de balises {#section_3A41CF2BD5994B9891537D063571D4ED}

Invitez les utilisateurs à rejoindre Dynamic Tag Management, puis attribuez des rôles d’utilisateur et ajoutez des utilisateurs à des groupes.

See [Users and Permissions](https://docs.adobe.com/content/help/en/dtm/using/admin/users.html) for information about how to invite users to Dynamic Tag Management and assign user roles and add users to groups.

## Audience Manager {#section_C31E3FA8A1E14463B1B3E07235F1983C}

Créez des utilisateurs d’Audience Manager et affectez-les à des groupes. Vous pouvez également définir des limites de vue (caractéristiques, segments, destinations et [!DNL AlgoModel]).

Voir [Administration](https://docs.adobe.com/content/help/en/dtm/using/admin/users.html) dans l’aide d’Audience Manager.

## Gestion des produits Experience Cloud {#task_16335111C52D40E9BAC73D0699584DBF}

Créez un profil de produit et affectez-le à un groupe d’autorisations.

Lorsque vous invitez un utilisateur à rejoindre une organisation, vous pouvez lui donner accès à des produits et à des profils de produits. Vous pouvez également déléguer des autorisations d’administration limitées à un utilisateur. De même, vous pouvez créer des groupes d’utilisateurs, puis ajouter le groupe à un profil de produits pour activer l’accès.

1. In the [Admin Console](https://adminconsole.adobe.com/enterprise/), click **[!UICONTROL Products]**.
1. Cliquez sur **[!UICONTROL Nouveau profil]**.
1. Configurez les détails du profil, puis cliquez sur **[!UICONTROL Suivant]**.
1. Cliquez sur **[!UICONTROL Terminé]**.

Vous trouverez plus d&#39;aide à l&#39;adresse :

* [Gestion des produits et des profils](https://helpx.adobe.com/fr/enterprise/using/manage-products-and-profiles.html)
* [Autorisations](https://docs.adobe.com/content/help/fr-FR/target/using/administer/manage-users/enterprise/property-channel.html) des utilisateurs d’entreprise dans l’aide d’Adobe Cible pour plus d’informations.
* Vidéo : [Configuration des espaces de travail Adobe Cible dans Adobe Admin Console](https://helpx.adobe.com/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Attribution d’autorisations d’accès Analytics à un profil de produits {#task_040673FE3E3E429B9531FBCB8B6A4391}

Attribuez des autorisations d’accès aux rapports Analytics (suites de rapports, mesures, dimensions, etc.) à un profil de produits.

Vous pouvez par exemple créer un profil de produits qui contient plusieurs outils Analytics ([!UICONTROL Analysis Workspace], [!UICONTROL Reports &amp; Analytics] et [!UICONTROL Report Builder]), avec des autorisations d’accès à des mesures et dimensions spécifiques (y compris les eVars) et à des fonctionnalités telles que la création de segments ou de mesures calculées.

1. Sign in to the [Admin Console](https://adminconsole.adobe.com/enterprise), then click **[!UICONTROL Products]** (or click your product name).
1. Dans le profil de produits, cliquez sur **[!UICONTROL Autorisations]** (option réservée aux administrateurs).
1. Configurez les autorisations du profil :

| Élément | Description |
|--- |--- |
| Report Suites (Suites de rapports) | Activez les autorisations pour des suites de rapports spécifiques. |
| Mesures | Activez les autorisations pour le trafic, la conversion, les événements personnalisés, les événements de solution, la reconnaissance du contenu, etc. |
| Dimensions | Personnalisez l’accès des utilisateurs à un niveau détaillé, y compris les eVars, les rapports de trafic, les rapports de solution et les rapports de chemins. |
| Outils de suites de rapports | Activez les autorisations d’utilisateur pour les services Web, la gestion des suites de rapports, les outils et les rapports et les éléments de Tableau de bord. |
| Outils Analytics | Activez les autorisations d’utilisateurs pour les éléments généraux (facturation, journaux, etc.), la gestion des entreprises, les outils, l’accès au service web, le Report Builder et l’intégration des Data Connectors. Les paramètres d’entreprise de la catégorie de personnalisation d’Admin Console ont été déplacés dans les outils Analytics. |

## Délégation des rôles d’administration aux utilisateurs {#task_3A072C4AA9734BC59FFA7E015271BC7E}

Dans Admin Console, vous pouvez déléguer des droits d’administration limités à d’autres membres de votre organisation. Les rôles délégués permettent aux utilisateurs d’administrer l’accès logiciel aux utilisateurs finaux, de fournir des capacités de déploiement d’accès et de fonctionner en tant que délégués du support technique.

Par exemple, vous pouvez effectuer les opérations suivantes :

* Autorisez votre directeur créatif à accorder l’accès à Creative Cloud.
* Autorisez votre directeur marketing à accorder l’accès à Experience Cloud.
* Gardez ces deux rôles séparés de sorte qu&#39;ils ne puissent pas outrepasser les rôles respectifs.

En utilisant ces rôles, vous pouvez déléguer simultanément la gestion à d’autres personnes sans fournir plus de capacités que nécessaire.

1. Dans Admin Console, cliquez sur **[!UICONTROL Utilisateurs]**, puis sur le nom de l’utilisateur.
1. Cliquez sur **[!UICONTROL Modifier les droits d’administrateur]**.
1. Configurez les droits d’administrateur de l’utilisateur.
1. Cliquez sur **[!UICONTROL Suivant]** pour passer en revue les paramètres, puis cliquez sur **[!UICONTROL Enregistrer]**.

## Navigateurs pris en charge et configuration requise {#concept_CDC4371EB9BF433E9534F8716DC8A088}

Navigateurs pris en charge dans Experience Cloud.

* [!DNL Microsoft Edge] (Microsoft a [mis fin à la prise en charge](https://www.microsoft.com/en-us/WindowsForBusiness/End-of-IE-support) d’Internet Explorer 8, 9 et 10. Par conséquent, Adobe ne corrigera pas les problèmes signalés concernant ces versions spécifiques d’Internet Explorer.)
* [!DNL Google Chrome]
* [!DNL Firefox]
* [!DNL Safari]
* [!DNL Opera]

**Remarque** : bien que l’interface d’Experience Cloud prenne en charge ces navigateurs, les solutions individuelles peuvent ne pas tous les prendre en charge. (For example, [Analytics](https://docs.adobe.com/content/help/fr-FR/analytics/admin/sys-reqs.html) does not support [!DNL Opera], and [Adobe Target](https://docs.adobe.com/help/fr-FR/target/using/implement-target/before-implement/supported-browsers.html) does not support [!DNL Safari].)

### Exigences en matière de solution et de produit

* [Analytics](https://docs.adobe.com/content/help/fr-FR/analytics/admin/sys-reqs.html)
* [Report Builder ](https://docs.adobe.com/content/help/en/analytics/analyze/report-builder/report-builder-setup/system-requirements.html)
* [Adobe Target](https://docs.adobe.com/help/fr-FR/target/using/implement-target/before-implement/supported-browsers.html)
