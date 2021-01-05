---
description: Découvrez comment vous connecter à Adobe Admin Console, gérer les autorisations d’utilisateur et les profils de produits dans Experience Cloud et apprenez-en davantage sur la prise en charge des navigateurs.
keywords: Experience Cloud services
solution: Experience Cloud
title: 'Découvrez comment gérer les utilisateurs et les produits '
index: true
translation-type: ht
source-git-commit: 3f26c1af19a0838913eec2b4135304f5f3fcf0b4
workflow-type: ht
source-wordcount: '1432'
ht-degree: 100%

---


# Gestion des utilisateurs et des produits Experience Cloud {#topic_3FCB4099640647E3B2411ADBFCE81909}

Découvrez-en plus sur la connexion à Admin Console, sur la gestion des autorisations d’utilisateurs, sur les profils de produits dans Experience Cloud et sur la prise en charge des navigateurs.

>[!IMPORTANT]
>
>La gestion des utilisateurs dans Admin Console implique l’introduction de nouveaux termes, de nouvelles interfaces et d’une nouvelle navigation. Vous trouverez ci-dessous des informations sur ces modifications, ainsi que des liens vers d’autres ressources utiles. Cette aide complète les informations du [Guide d’utilisation de l’administrateur Enterprise](https://helpx.adobe.com/fr/enterprise/managing/user-guide.html) pour tous les produits cloud d’Adobe.

## Nouveautés en matière de gestion des utilisateurs d’Experience Cloud {#concept_06A0A13362F644FB90F947238407637A}

Découvrez les dernières fonctionnalités de la gestion des utilisateurs d’Experience Cloud.

<!-- ### Business ID type

Adobe is introducing an identity type called Business ID. This identity type improves the control of user and product management. Adobe is migrating all Adobe IDs (owned by individuals) that are used for business to the new enterprise Business IDs owned by your organization.

If you are an existing Experience Cloud customer, Adobe will migrate all your users with Adobe IDs in the Admin Console to Business IDs. If you are a new enterprise or teams customer, you will add users to the Admin Console using one of the available identity types: Business ID, Enterprise ID, or Federated ID.

What to do

* Your users will need to accept Terms of Use (TOU) changes prior to accounts being migrated to Type2e. 
* Users that belong to multiple organizations might see a Profile Selection screen during the login workflow and need to select the correct one. This ensures that they are logging into the correct organization. (There might be multiple profiles to choose from if a user was a member of multiple organizations before the migration.)

Beginning May 2020, enterprise administrators cannot use the Adobe ID for new organizations created in the Admin Console. Latest: https://wiki.corp.adobe.com/pages/viewpage.action?spaceKey=engage&title=Type2e+DX+GTM-->

### Outil d’administration

Les administrateurs peuvent afficher une liste triable et filtrable de tous les utilisateurs d’Experience Cloud et de leurs informations dans l’outil d’administration. Voir [Affichage des utilisateurs d’Experience Cloud dans l’outil d’administration](admin-tool-experience-cloud.md).

## Connexion à Admin Console {#section_705072FD4EBE4B70BC69EC81F2BB8669}

Les administrateurs ne gèrent plus les utilisateurs dans les solutions. La gestion des utilisateurs et des produits pour Experience Cloud est désormais effectuée dans Admin Console.

Pour vous connecter à Admin Console :

1. Accédez à [https://adminconsole.adobe.com/enterprise/](https://adminconsole.adobe.com/enterprise/#).
1. Saisissez votre [Adobe ID ou Enterprise ID](https://helpx.adobe.com/fr/enterprise/help/identity.html) et votre mot de passe.

Ou, dans le menu Experience Cloud (![](assets/menu-icon.png)), cliquez sur **[!UICONTROL Administration]** > **[!UICONTROL Lancer Admin Console]**.

**Aide connexe**

[Guide d’utilisation d’Administration](https://helpx.adobe.com/fr/enterprise/using/users.html) pour Creative Cloud et Document Cloud. Certaines informations concernent la gestion des utilisateurs d’Experience Cloud, telles que la [gestion des types d’identité](https://helpx.adobe.com/fr/enterprise/help/identity.html).

[Connectez-vous et gérez vos paramètres de profil](../admin-getting-started/getting-started-experience-cloud.md#topic_AC564B6795334DE39359ADD87F52F2E0) pour gérer les mots de passe, les organisations et les notifications.

## Profils et groupes de produits {#section_AB50558124D541CF80A0D3D76D35A4BF}

L’insertion de profils de produits marque un tournant quant à la façon de gérer les produits et services de la solution (en utilisant des groupes). Dans Admin Console, les autorisations dépendent des profils de produits, qui sont des groupes de produits et de services que vous pouvez affecter aux utilisateurs.

Dans Analytics par exemple, vous pouvez configurer une collection d’outils de création de rapports, tels qu’Analysis Workspace et le Report Builder, parallèlement aux suites de rapports, aux mesures, aux dimensions, etc. Vous pouvez autoriser les utilisateurs à accéder à un profil de produits en les ajoutant au profil. Reportez-vous à la section [Attribution d’autorisations d’accès Analytics à un profil de produits](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391).

**Aide connexe**

[Délégation de droits d’administration limités](../admin-getting-started/admin-getting-started.md#task_3A072C4AA9734BC59FFA7E015271BC7E)

## Analytics {#section_97DE101F92CD494AB073893680992F1A}

Gérez dans Admin Console les autorisations des utilisateurs et des produits Analytics.

[Affectez des autorisations d’accès Analytics à un profil de produits](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391) (sur cette page).

**Migration des comptes d’utilisateurs**

Dans Analytics, les administrateurs peuvent utiliser l’outil de migration des ID d’utilisateur pour migrer des comptes d’utilisateurs de la gestion des utilisateurs Analytics vers [Adobe Admin Console](https://adminconsole.adobe.com/enterprise/).

La migration des comptes est en cours de déploiement. Adobe vous avisera lorsqu’il sera temps de migrer vos comptes d’utilisateurs des **[!UICONTROL Outils d’administration]** > **[!UICONTROL Gestion des utilisateurs]** vers Admin Console et vous aidera à le faire.

Une fois la migration terminée, les utilisateurs se connectent à l’aide de leur Adobe ID (ou Enterprise ID) et s’authentifient dans les solutions et services Experience Cloud sur [experiencecloud.adobe.com](https://experiencecloud.adobe.com). Si les utilisateurs tentent de se connecter au moyen des comptes hérités ([!DNL my.omniture.com] et [!DNL sc.omniture.com]), ils sont redirigés vers [!DNL experiencecloud.adobe.com].

**Aide connexe**

[Migration de l’ID d’utilisateur Analytics](https://docs.adobe.com/content/help/fr-FR/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.html)

## Adobe Target - profils de produits par rapport aux espaces de travail {#section_3860AF177C9E4C7E9C390D36A414F353}

Dans Adobe Target, un espace de travail est un profil de produits. Avec un espace de travail, une organisation peut allouer un groupe d’utilisateurs spécifique à un groupe de propriétés spécifique. Un espace de travail peut être comparé à une suite de rapports dans Adobe Analytics.

Voir :

* [Autorisations des utilisateurs d’Enterprise](https://docs.adobe.com/content/help/fr-FR/target/using/administer/manage-users/enterprise/property-channel.html)
* [Gestion des produits et des profils](https://helpx.adobe.com/fr/enterprise/using/manage-products-and-profiles.html)
* Vidéo : [Configuration des espaces de travail Adobe Target dans Adobe Admin Console](https://helpx.adobe.com/fr/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Campaign - profils de produits, clients et groupes de sécurité {#section_09CDF75366444CF5810CF321B7C712F3}

Un *client* dans Campaign s’affiche en tant que *produit* sur la page de produits dans Admin Console.

*Le groupe de sécurité* s’affiche en tant que profil de produits.

Voir [Gestion des groupes et des utilisateurs](https://docs.adobe.com/content/help/fr-FR/campaign-standard/using/administrating/users-and-security/managing-groups-and-users.html) pour en savoir plus sur les groupes de sécurité et l’affectation d’utilisateurs à des groupes de sécurité.

## Experience Platform Launch {#section_F2DA6778DD2D48AA8F794041971EE6B1}

Experience Platform Launch s’affiche sur la page de produits dans Admin Console. Vous pouvez inclure d’autres solutions et services dans un profil de produits Launch.

Voir [Gestion des utilisateurs](https://docs.adobe.com/content/help/fr-FR/launch/using/reference/admin/user-permissions.html) pour en savoir plus sur les autorisations d’utilisateurs dans Admin Console et pour configurer des options spécifiques à Launch, y compris l’attribution de droits aux profils.

## Experience Manager as a Cloud Service

Les clients Adobe Enterprise sont représentés en tant qu’organisations IMS dans Adobe Admin Console. Il s’agit du portail que les clients Adobe utilisent pour gérer les droits de leurs produits pour leurs utilisateurs et groupes. Les clients AEM peuvent utiliser Adobe Admin Console pour gérer leurs droits sur les produits et l’authentification IMS vers AEM as a Cloud Service.

Voir [Prise en charge IMS d’AEM as a Cloud Service](https://docs.adobe.com/content/help/fr-FR/experience-manager-cloud-service/security/ims-support.html#managing-products-and-user-access-in-admin-console).

## Gestionnaire dynamique de balises {#section_3A41CF2BD5994B9891537D063571D4ED}

Invitez les utilisateurs à rejoindre Dynamic Tag Management, puis attribuez des rôles d’utilisateur et ajoutez des utilisateurs à des groupes.

Voir [Utilisateurs et autorisations](https://docs.adobe.com/content/help/fr-FR/dtm/using/admin/users.html) pour plus d’informations sur la manière d’inviter des utilisateurs à rejoindre Dynamic Tag Management, d’affecter des rôles utilisateur et d’ajouter des utilisateurs aux groupes.

## Audience Manager {#section_C31E3FA8A1E14463B1B3E07235F1983C}

Créez des utilisateurs d’Audience Manager et affectez-les à des groupes. Vous pouvez également consulter les limites (caractéristiques, segments, destinations et [!DNL AlgoModel]).

Voir [Administration](https://docs.adobe.com/content/help/fr-FR/dtm/using/admin/users.html) dans l’aide d’Audience Manager.

## Gestion des produits Experience Cloud {#task_16335111C52D40E9BAC73D0699584DBF}

Créez un profil de produits et affectez-le à un groupe d’autorisations.

Lorsque vous invitez un utilisateur à rejoindre une organisation, vous pouvez lui donner accès à des produits et à des profils de produits. Vous pouvez également déléguer des autorisations d’administration limitées à un utilisateur. De même, vous pouvez créer des groupes d’utilisateurs, puis ajouter le groupe à un profil de produits pour activer l’accès.

1. Dans [Admin Console](https://adminconsole.adobe.com/enterprise/), cliquez sur **[!UICONTROL Produits]**.
1. Cliquez sur **[!UICONTROL Nouveau profil]**.
1. Configurez les détails du profil, puis cliquez sur **[!UICONTROL Suivant]**.
1. Cliquez sur **[!UICONTROL Terminé]**.

Vous trouverez plus d’aide à l’adresse :

* [Gestion des produits et des profils](https://helpx.adobe.com/fr/enterprise/using/manage-products-and-profiles.html)
* [Autorisations des utilisateurs d’entreprise](https://docs.adobe.com/content/help/fr-FR/target/using/administer/manage-users/enterprise/property-channel.html) dans l’aide d’Adobe Target pour plus d’informations.
* Vidéo : [Configuration des espaces de travail Adobe Target dans Adobe Admin Console](https://helpx.adobe.com/fr/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Attribution d’autorisations d’accès Analytics à un profil de produits {#task_040673FE3E3E429B9531FBCB8B6A4391}

Attribuez des autorisations d’accès aux rapports Analytics (suites de rapports, mesures, dimensions, etc.) à un profil de produits.

Vous pouvez par exemple créer un profil de produits qui contient plusieurs outils Analytics ([!UICONTROL Analysis Workspace], [!UICONTROL Reports &amp; Analytics] et [!UICONTROL Report Builder]), avec des autorisations d’accès à des mesures et dimensions spécifiques (y compris les eVars) et à des fonctionnalités telles que la création de segments ou de mesures calculées.

1. Connectez-vous à [Admin Console](https://adminconsole.adobe.com/enterprise), puis cliquez sur **[!UICONTROL Produits]** (ou cliquez sur le nom de votre produit).
1. Dans le profil de produits, cliquez sur **[!UICONTROL Autorisations]** (option réservée aux administrateurs).
1. Configurez les autorisations du profil :

| Élément | Description |
|--- |--- |
| Suites de rapports | Activez les autorisations pour des suites de rapports spécifiques. |
| Mesures | Activez les autorisations pour les événements personnalisés, de trafic, de conversion, de solution, la reconnaissance de contenu, etc. |
| Dimensions | Personnalisez l’accès des utilisateurs à un niveau plus détaillé, y compris les eVars, les rapports de trafic, les rapports de solution et les rapports de cheminement. |
| Outils de suites de rapports | Activez les autorisations d’utilisateurs pour les services web, la gestion des suites de rapports, les outils et les rapports, ainsi que les éléments de tableau de bord. |
| Outils Analytics | Activez les autorisations d’utilisateurs pour les éléments généraux (facturation, journaux, etc.), la gestion des entreprises, les outils, l’accès au service web, le Report Builder et l’intégration de Data Connectors. Les paramètres d’entreprise de la catégorie de personnalisation d’Admin Console ont été déplacés dans les outils Analytics. |

## Délégation des rôles d’administration aux utilisateurs {#task_3A072C4AA9734BC59FFA7E015271BC7E}

Dans Admin Console, vous pouvez déléguer des droits d’administration limités à d’autres membres de votre organisation. Les rôles délégués permettent aux utilisateurs d’administrer l’accès logiciel aux utilisateurs finaux, de fournir des capacités de déploiement d’accès et de fonctionner en tant que délégués du support technique.

Par exemple, vous pouvez effectuer les opérations suivantes :

* Autoriser votre directeur créatif à accorder l’accès à Creative Cloud
* Autoriser votre directeur marketing à accorder l’accès à Experience Cloud
* Garder ces deux rôles séparés de sorte qu’ils ne puissent pas outrepasser les rôles respectifs

En utilisant ces rôles, vous pouvez déléguer simultanément la gestion à d’autres personnes sans fournir plus de capacités que nécessaire.

1. Dans Admin Console, cliquez sur **[!UICONTROL Utilisateurs]**, puis sur le nom de l’utilisateur.
1. Cliquez sur **[!UICONTROL Modifier les droits d’administrateur]**.
1. Configurez les droits d’administrateur de l’utilisateur.
1. Cliquez sur **[!UICONTROL Suivant]** pour passer en revue les paramètres, puis cliquez sur **[!UICONTROL Enregistrer]**.

## Navigateurs pris en charge et configuration requise {#concept_CDC4371EB9BF433E9534F8716DC8A088}

Navigateurs pris en charge dans Experience Cloud.

* [!DNL Microsoft Edge] (Microsoft a officialisé la [cessation de prise en charge](https://www.microsoft.com/fr-fr/WindowsForBusiness/End-of-IE-support) d’Internet Explorer 8, 9 et 10. Par conséquent, Adobe ne corrige pas les bogues signalés concernant ces versions spécifiques d’Internet Explorer.
* [!DNL Google Chrome]
* [!DNL Firefox]
* [!DNL Safari]
* [!DNL Opera]

**Remarque** : bien que l’interface d’Experience Cloud prenne en charge ces navigateurs, les solutions individuelles peuvent ne pas tous les prendre en charge. (Par exemple, [Analytics](https://docs.adobe.com/content/help/fr-FR/analytics/admin/sys-reqs.html) ne prend pas en charge [!DNL Opera] et [ Adobe Target](https://docs.adobe.com/help/fr-FR/target/using/implement-target/before-implement/supported-browsers.html) ne prend pas en charge [!DNL Safari].)

### Exigences des solutions et des produits

* [Analytics](https://docs.adobe.com/content/help/fr-FR/analytics/admin/sys-reqs.html)
* [Report Builder](https://docs.adobe.com/content/help/fr-FR/analytics/analyze/report-builder/report-builder-setup/system-requirements.html)
* [Adobe Target](https://docs.adobe.com/help/fr-FR/target/using/implement-target/before-implement/supported-browsers.html)
