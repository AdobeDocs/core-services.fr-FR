---
description: Découvrez-en plus sur la connexion à Admin Console et sur la gestion des autorisations d’utilisateurs et sur les profils de produits dans Experience Cloud.
keywords: core services
seo-description: Découvrez-en plus sur la connexion à Admin Console et sur la gestion des autorisations d’utilisateurs et sur les profils de produits dans Experience Cloud.
seo-title: Gestion des utilisateurs et des produits Experience Cloud
solution: Marketing Cloud
title: Gestion des utilisateurs et des produits Experience Cloud
uuid: aea4e4c3-f543-4e8d-b553-d838418477d6
translation-type: tm+mt
source-git-commit: 6040c4d2f052c561958624296c8e62c8230ae820

---


# Gestion des utilisateurs et des produits Experience Cloud {#topic_3FCB4099640647E3B2411ADBFCE81909}

Découvrez-en plus sur la connexion à Admin Console et sur la gestion des autorisations d’utilisateurs et sur les profils de produits dans Experience Cloud.

>[!IMPORTANT]
>
>La gestion des utilisateurs dans Admin Console implique l’introduction de nouveaux termes, de nouvelles interfaces et d’une nouvelle navigation. Vous trouverez ci-dessous des informations sur ces modifications, ainsi que des liens vers d’autres ressources utiles. La présente aide est un complément des informations du [Guide d’utilisation de l’administrateur en entreprise](https://helpx.adobe.com/enterprise/managing/user-guide.html) pour tous les produits cloud d’Adobe.

## Nouveautés en matière de gestion des utilisateurs d’Experience Cloud {#concept_06A0A13362F644FB90F947238407637A}

Découvrez les dernières fonctionnalités de la gestion des utilisateurs d’Experience Cloud.

## Connexion à Admin Console {#section_705072FD4EBE4B70BC69EC81F2BB8669}

Les administrateurs ne peuvent plus gérer les utilisateurs dans les solutions. Désormais, ils doivent gérer les utilisateurs et les produits d’Experience Cloud dans Admin Console.

**Connexion à Admin Console**

1. Navigate to [https://adminconsole.adobe.com/enterprise/](https://adminconsole.adobe.com/enterprise/#).
1. Saisissez votre [Adobe ID ou Enterprise ID](https://helpx.adobe.com/enterprise/help/identity.html) et votre mot de passe.

Ou, dans le menu Experience Cloud (![](assets/menu-icon.png)), cliquez sur **[!UICONTROL Administration]** >**[!UICONTROL  Lancer Admin Console]**.

**Aide connexe**

[Guide d’utilisation de l’administrateur](https://helpx.adobe.com/enterprise/using/users.html) pour Creative Cloud et Document Cloud. Certaines informations se rapportent à la gestion des utilisateurs d’Experience Cloud, telle la [gestion des types d’identité](https://helpx.adobe.com/enterprise/help/identity.html).

[Connectez-vous et gérez vos paramètres de profil](../admin-getting-started/getting-started-experience-cloud.md#topic_AC564B6795334DE39359ADD87F52F2E0) afin de gérer des mots de passe, des organisations et des notifications.

## Profils et groupes de produits  {#section_AB50558124D541CF80A0D3D76D35A4BF}

L’insertion de profils de produits marque un tournant quant à la façon de gérer les produits et services de la solution (en utilisant des groupes). Dans Admin Console, les autorisations reposent sur des profils de produits, qui sont des groupes de produits et de services que vous pouvez affecter aux utilisateurs.

Dans Analytics par exemple, vous pouvez configurer une collection d’outils de création de rapports, tels qu’Analysis Workspace et le Report Builder, parallèlement aux suites de rapports, aux mesures, aux dimensions, etc. Vous pouvez affecter des autorisations d’accès à des utilisateurs en ajoutant ces derniers à un profil de produits. Voir [Attribution d’autorisations d’accès Analytics à un profil de produits](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391).

**Aide connexe**

[Délégation de droits d’administration limités](../admin-getting-started/admin-getting-started.md#task_3A072C4AA9734BC59FFA7E015271BC7E)

## Analytics {#section_97DE101F92CD494AB073893680992F1A}

Gérez dans Admin Console les autorisations des utilisateurs et des produits Analytics.

[Affectez des autorisations d’accès Analytics à un profil de produits](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391)(sur cette page).

**Migration des comptes d’utilisateurs**

Dans Analytics, les administrateurs peuvent utiliser l’outil de migration des ID d’utilisateur pour migrer des comptes d’utilisateurs de la gestion des utilisateurs Analytics vers [Adobe Admin Console](https://adminconsole.adobe.com/enterprise/)

La migration des comptes est en cours de déploiement. Adobe vous avisera lorsqu’il sera temps de migrer vos comptes d’utilisateurs des **[!UICONTROL Outils d’administration]** >**[!UICONTROL  Gestion des utilisateurs]** vers Admin Console et vous aidera à le faire.

After the migration, users sign in using their Adobe ID (or Enterprise ID) and authenticate to their Experience Cloud solutions and services at [experiencecloud.adobe.com](https://experiencecloud.adobe.com). Si les utilisateurs tentent de se connecter au moyen des comptes hérités ([!DNL my.omniture.com] et [!DNL sc.omniture.com]), ils sont redirigés vers [!DNL experiencecloud.adobe.com].

**Aide connexe**

[Migration des identifiants d’utilisateurs Analytics](https://docs.adobe.com/content/help/en/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.html)

## Target - profils de produit par rapport aux espaces de travail {#section_3860AF177C9E4C7E9C390D36A414F353}

Dans Target, un espace de travail est un profil de produits. Avec un espace de travail, une organisation peut allouer un groupe d’utilisateurs spécifique à un groupe de propriétés spécifique. Un espace de travail peut être comparé à une suite de rapports dans Adobe Analytics.

Voir :
* [Autorisations des utilisateurs d’Enterprise](https://docs.adobe.com/content/help/en/target/using/administer/manage-users/enterprise/property-channel.html)
* [Gestion des produits et des profils](https://helpx.adobe.com/enterprise/using/manage-products-and-profiles.html)
* Vidéo : [Mode de configuration des espaces de travail de Target dans Adobe Admin Console](https://helpx.adobe.com/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Campaign - profils de produits, clients et groupes de sécurité {#section_09CDF75366444CF5810CF321B7C712F3}

Dans Campaign, un *client* s’affiche comme un *produit* dans la page de produits Admin Console.

Le *groupe de sécurité* s’affiche comme un profil de produits.

Voir [Gestion des groupes et des utilisateurs](https://helpx.adobe.com/campaign/standard/administration/using/managing-groups-and-users.html) pour en savoir plus sur les groupes de sécurité et affectation des utilisateurs aux groupes de sécurité.

## Experience Platform Launch {#section_F2DA6778DD2D48AA8F794041971EE6B1}

Experience Platform Launch, s’affiche sur la page de produits dans Admin Console. Dans un profil de produits Launch, vous pouvez ajouter d’autres solutions et services principaux.

See [User Management](https://docs.adobelaunch.com/launch-reference/administration/user-permissions) for information about user permissions in the Admin Console and set up Launch-specific options, including assigning rights to profiles.

## Gestionnaire dynamique de balises {#section_3A41CF2BD5994B9891537D063571D4ED}

Invitez les utilisateurs à rejoindre Dynamic Tag Management, puis attribuez des rôles d’utilisateur et ajoutez des utilisateurs à des groupes.

See [Users and Permissions](https://docs.adobe.com/content/help/en/dtm/using/admin/users.html) for information about how to invite users to Dynamic Tag Management and assign user roles and add users to groups.

## Audience Manager {#section_C31E3FA8A1E14463B1B3E07235F1983C}

Créez des utilisateurs Audience Manager et affectez-les à des groupes. Vous pouvez également afficher des limites (caractéristiques, segments, destinations et AlgoModel).

Voir [Administration](https://docs.adobe.com/content/help/en/dtm/using/admin/users.html) dans l’aide d’Audience Manager.

## Gestion des produits Experience Cloud {#task_16335111C52D40E9BAC73D0699584DBF}

Créez un profil de produits et affectez-le à un groupe d’autorisations.

Lorsque vous invitez un utilisateur dans une organisation, vous pouvez lui donner accès aux produits et aux profils de produits. Vous pouvez également déléguer certaines autorisations d’administration à un utilisateur. De même, vous pouvez créer des groupes d’utilisateurs, puis ajouter les groupes à un profil de produits pour leur autoriser l’accès.

1. Dans [Admin Console](https://adminconsole.adobe.com/enterprise/), cliquez sur **[!UICONTROL Produits]**.
1. Cliquez sur **[!UICONTROL Nouveau profil]**.
1. Configurez les détails du profil, puis cliquez sur **[!UICONTROL Suivant]**.
1. Cliquez sur **[!UICONTROL Terminé]**.

Pour obtenir une aide supplémentaire, consultez les sections suivantes :

* [Gestion des produits et des profils](https://helpx.adobe.com/enterprise/using/manage-products-and-profiles.html)
* [Autorisations des utilisateurs Enterprise](https://docs.adobe.com/content/help/en/target/using/administer/manage-users/enterprise/property-channel.html) dans l’aide Target.
* Vidéo : [Configuration d’espaces de travail Target dans Adobe Admin Console](https://helpx.adobe.com/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Attribution d’autorisations d’accès Analytics à un profil de produits {#task_040673FE3E3E429B9531FBCB8B6A4391}

Attribuez des autorisations d’accès aux rapports Analytics (suites de rapports, mesures, dimensions, etc.) à un profil de produits.

Vous pouvez par exemple créer un profil de produits qui contient plusieurs outils Analytics ([!UICONTROL Analysis Workspace], [!UICONTROL Reports &amp; Analytics] et [!UICONTROL Report Builder]), avec des autorisations d’accès à des mesures et dimensions spécifiques (y compris les eVars) et à des fonctionnalités telles que la création de segments ou de mesures calculées.

1. Connectez-vous à [Admin Console](https://adminconsole.adobe.com/enterprise), puis cliquez sur **[!UICONTROL Produits]**(ou cliquez sur le nom de votre produit).
1. Dans le profil de produits, cliquez sur **[!UICONTROL Autorisations]**(option réservée aux administrateurs).
1. Configurez les autorisations du profil :

| Élément | Description |
|--- |--- |
| Report Suites (Suites de rapports) | Activez les autorisations pour des suites de rapports spécifiques. |
| Mesures | Activez les autorisations pour les événements de trafic, de conversion, personnalisés, de solution, la reconnaissance de contenu, etc. |
| Dimensions | Personnalisez l’accès des utilisateurs à un niveau plus détaillé, y compris les eVars, les rapports de trafic, les rapports de solution et les rapports de cheminement. |
| Outils de suites de rapports | Activez les autorisations d’utilisateurs pour les services web, la gestion des suites de rapports, les outils et les rapports, ainsi que les éléments de tableau de bord. |
| Outils Analytics | Activez les autorisations d’utilisateurs pour les éléments généraux (facturation, journaux, etc.), la gestion des entreprises, les outils, l’accès au service web, le Report Builder et l’intégration des Data Connectors. Les paramètres d’entreprise de la catégorie de personnalisation d’Admin Console ont été déplacés dans les outils Analytics. |

## Délégation des rôles d’administration aux utilisateurs {#task_3A072C4AA9734BC59FFA7E015271BC7E}

Dans Admin Console, vous pouvez déléguer des droits d’administration limités à d’autres membres de votre organisation. Les rôles délégués permettent aux utilisateurs d’administrer l’accès aux logiciels pour les utilisateurs finaux, de fournir l’accès à des fonctionnalités de déploiement et d’intervenir en tant que délégués de soutien.

Par exemple, vous pouvez effectuer les opérations suivantes :

* Permettre à votre directeur créatif d’accorder l’accès à Creative Cloud.
* Permettre à votre directeur marketing d’accorder l’accès à Experience Cloud.
* Maintenir ces deux rôles distincts, afin qu’ils n’empiètent pas l’un sur l’autre.

En utilisant ces rôles, vous pouvez déléguer simultanément la gestion à d’autres personnes sans leur attribuer davantage de capacités qu’ils n’en ont besoin.

1. Dans Admin Console, cliquez sur **[!UICONTROL Utilisateurs]**, puis sur le nom de l’utilisateur.
1. Cliquez sur **[!UICONTROL Modifier les droits d’administrateur]**.
1. Configurez les droits d’administrateur de l’utilisateur.
1. Cliquez sur **[!UICONTROL Suivant]**pour passer en revue les paramètres, puis cliquez sur**[!UICONTROL  Enregistrer]**.

## Navigateurs pris en charge et configuration requise {#concept_CDC4371EB9BF433E9534F8716DC8A088}

Cette section répertorie les navigateurs pris en charge dans Experience Cloud.

Les navigateurs pris en charge par Experience Cloud sont les suivants :

* [!DNL Microsoft Edge] (Microsoft a [mis fin à la prise en charge](https://www.microsoft.com/en-us/WindowsForBusiness/End-of-IE-support) d’Internet Explorer 8, 9 et 10. Par conséquent, Adobe ne corrigera pas les bogues signalés pour ces versions spécifiques d’Internet Explorer.)
* [!DNL Google Chrome]
* [!DNL Firefox]
* [!DNL Safari]
* [!DNL Opera]

**** Remarque : Bien que l’interface d’Experience Cloud prenne en charge ces navigateurs, les solutions individuelles peuvent ne pas prendre en charge tous les navigateurs. (Par exemple, [Analytics](https://docs.adobe.com/content/help/en/analytics/admin/sys-reqs.html) ne prend pas en charge [!DNL Opera]et [Target](https://docs.adobe.com/help/en/target/using/implement-target/before-implement/supported-browsers.html) ne prend pas en charge [!DNL Safari].)

**Exigences en matière de solution et de produit**

* [Analytics](https://docs.adobe.com/content/help/en/analytics/admin/sys-reqs.html)
* [Report Builder ](https://docs.adobe.com/content/help/en/analytics/analyze/report-builder/report-builder-setup/system-requirements.html)
* [Adobe Target](https://docs.adobe.com/help/en/target/using/implement-target/before-implement/supported-browsers.html)
