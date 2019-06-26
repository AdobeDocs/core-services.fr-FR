---
description: Découvrez-en plus sur la connexion à Admin Console et sur la gestion des autorisations d’utilisateurs et sur les profils de produits dans Experience Cloud.
keywords: services principaux
seo-description: Découvrez-en plus sur la connexion à Admin Console et sur la gestion des autorisations d’utilisateurs et sur les profils de produits dans Experience Cloud.
seo-title: Gestion des utilisateurs et des produits Experience Cloud
solution: Experience Cloud
title: Gestion des utilisateurs et des produits Experience Cloud
uuid: aea4e4c3-f543-4e8d-b553-d838418477d6
translation-type: ht
source-git-commit: 979b2202a70e2a5362aa86a65a17d7c4279b3a1a

---


# Gestion des utilisateurs et des produits Experience Cloud {#topic_3FCB4099640647E3B2411ADBFCE81909}

Découvrez-en plus sur la connexion à Admin Console et sur la gestion des autorisations d’utilisateurs et sur les profils de produits dans Experience Cloud.


<!-- marketing-cloud-identity-management.xml -->

<!-- user_mgmt_admin.xml -->

<!-- domain change for 2018 
<ul id="ul_6654B3993EBE4DE0A3FBCFA5173A52D1"> 
 <li id="li_BE41EB31960B4C079E864FAA2E322BB4"> Private Beta - Support new domain alongside old domain for selected customers (June, 2018) </li> 
 <li id="li_0513CA457FAA4F37A9D5E514DEAF2067"> General Rollout - Serve both old and new domains seamlessly for all customers (Aug, 2018) </li> 
 <li id="li_AB89A6D00A274EB7863D0243757322DE"> Public Beta - Drive solution teams and customers to switch references from old domain to new domain (Aug - Oct, 2018) </li> 
 <li id="li_6FED48B1F361493082102E823EA335F4"> General Availability - Redirect all old domain requests to new domain (Oct, 2018) </li> 
</ul> -->

>[!IMPORTANT]
>
>La gestion des utilisateurs dans Admin Console implique l’introduction de nouveaux termes, de nouvelles interfaces et d’une nouvelle navigation. Vous trouverez ci-dessous des informations sur ces modifications, ainsi que des liens vers d’autres ressources utiles. Cette aide complète les informations du [Guide d’utilisation de l’administrateur Enterprise](https://helpx.adobe.com/fr/enterprise/managing/user-guide.html) pour tous les produits cloud d’Adobe.

## Nouveautés en matière de gestion des utilisateurs d’Experience Cloud {#concept_06A0A13362F644FB90F947238407637A}

Découvrez les dernières fonctionnalités de la gestion des utilisateurs d’Experience Cloud.


## Connexion à Admin Console {#section_705072FD4EBE4B70BC69EC81F2BB8669}

Les administrateurs ne peuvent plus gérer les utilisateurs dans les solutions. Désormais, ils doivent gérer les utilisateurs et les produits d’Experience Cloud dans Admin Console.

**Connexion à Admin Console**

1. Accédez à [https://adminconsole.adobe.com/enterprise/](https://adminconsole.adobe.com/enterprise/#).
1. Saisissez [votre Adobe ID ou Enterprise ID](https://helpx.adobe.com/fr/enterprise/help/identity.html) et votre mot de passe.


Ou, dans le menu Experience Cloud (![](assets/menu-icon.png)), cliquez sur **[!UICONTROL Administration]** &gt; **[!UICONTROL Lancer Admin Console]**.

**Aide connexe**

[Guide de l’utilisateur d’administration](https://helpx.adobe.com/fr/enterprise/using/users.html) pour Creative Cloud et Document Cloud. Certaines informations sont pertinentes pour la gestion des utilisateurs d’Experience Cloud, comme [la gestion des types d’identité](https://helpx.adobe.com/fr/enterprise/help/identity.html).

[Connectez-vous et gérez vos paramètres de profil](../admin-getting-started/getting-started-experience-cloud.md#topic_AC564B6795334DE39359ADD87F52F2E0) afin de gérer des mots de passe, des organisations et des notifications.

## Profils et groupes de produits  {#section_AB50558124D541CF80A0D3D76D35A4BF}

L’insertion de profils de produits marque un tournant quant à la façon de gérer les produits et services de la solution (en utilisant des groupes). Dans Admin Console, les autorisations reposent sur des profils de produits, qui sont des groupes de produits et de services que vous pouvez affecter aux utilisateurs.

Dans Analytics par exemple, vous pouvez configurer une collection d’outils de création de rapports, tels qu’Analysis Workspace et le Report Builder, parallèlement aux suites de rapports, aux mesures, aux dimensions, etc. Vous pouvez affecter des autorisations d’accès à des utilisateurs en ajoutant ces derniers à un profil de produits. Voir  [Attribution d’autorisations d’accès Analytics à un profil de produits](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391).

**Aide connexe**

[Délégation de droits d’administration limités](../admin-getting-started/admin-getting-started.md#task_3A072C4AA9734BC59FFA7E015271BC7E)

## Analytics {#section_97DE101F92CD494AB073893680992F1A}

Gérez dans Admin Console les autorisations des utilisateurs et des produits Analytics.

[Affectez des autorisations d’accès Analytics à un profil de produits](../admin-getting-started/admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391)(sur cette page).

**Migration des comptes d’utilisateurs**

Dans Analytics, les administrateurs peuvent utiliser l’outil de migration des ID d’utilisateur pour migrer des comptes d’utilisateurs de la gestion des utilisateurs Analytics vers [Adobe Admin Console](https://adminconsole.adobe.com/enterprise/)

La migration des comptes est en cours de déploiement. Adobe vous avisera lorsqu’il sera temps de migrer vos comptes d’utilisateurs des **[!UICONTROL Outils d’administration]** &gt; **[!UICONTROL Gestion des utilisateurs]** vers Admin Console et vous aidera à le faire.

Une fois la migration terminée, les utilisateurs se connectent à l’aide de leur Adobe ID (ou Enterprise ID) et s’authentifient dans les solutions et services Experience Cloud sur [marketing.adobe.com](https://marketing.adobe.com/). Si les utilisateurs tentent de se connecter au moyen des comptes hérités ([!DNL my.omniture.com] et [!DNL sc.omniture.com]), ils sont redirigés vers [!DNL marketing.adobe.com].

**Aide connexe**

[Migration des ID utilisateur Analytics](https://marketing.adobe.com/resources/help/fr_FR/experience-cloud/admin-console/analytics-migration/)

## Target - profils de produit par rapport aux espaces de travail {#section_3860AF177C9E4C7E9C390D36A414F353}

Dans Target, un espace de travail est un profil de produits. Avec un espace de travail, une organisation peut allouer un groupe d’utilisateurs spécifique à un groupe de propriétés spécifique. Un espace de travail peut être comparé à une suite de rapports dans Adobe Analytics.

Voir :
* [Autorisations des utilisateurs Enterprise](https://marketing.adobe.com/resources/help/fr_FR/target/target/?f=property_channel)
* [Gestion des produits et profils](https://helpx.adobe.com/fr/enterprise/using/manage-products-and-profiles.html)
* Vidéo : [Configuration des espaces de travail Target dans Adobe Admin Console](https://helpx.adobe.com/fr/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)




## Campaign - profils de produits, clients et groupes de sécurité {#section_09CDF75366444CF5810CF321B7C712F3}

Dans Campaign, un *client* s’affiche comme un *produit* dans la page de produits Admin Console.

Le *groupe de sécurité* s’affiche comme un profil de produits.

Voir [Gestion des groupes et des utilisateurs](https://helpx.adobe.com/fr/campaign/standard/administration/using/managing-groups-and-users.html) pour plus d’informations sur les groupes de sécurité et l’affectation des utilisateurs aux groupes de sécurité.

## Experience Platform Launch {#section_F2DA6778DD2D48AA8F794041971EE6B1}

Experience Platform Launch, s’affiche sur la page de produits dans Admin Console. Dans un profil de produits Launch, vous pouvez ajouter d’autres solutions et services principaux.

Pour plus d’informations sur les autorisations utilisateur dans Admin Console et la configuration des options spécifiques à Launch, y compris l’attribution des droits aux profils, voir [Gestion des utilisateurs](https://marketing.adobe.com/resources/help/en_US/experience-cloud/launch/?f=user-management).

## Gestionnaire dynamique de balises {#section_3A41CF2BD5994B9891537D063571D4ED}

Invitez les utilisateurs à rejoindre Dynamic Tag Management, puis attribuez des rôles d’utilisateur et ajoutez des utilisateurs à des groupes.

Voir [Utilisateurs et autorisations](https://marketing.adobe.com/resources/help/fr_FR/dtm/?f=users) pour plus d’informations sur la manière d’inviter des utilisateurs à rejoindre Dynamic Tag Management, d’affecter des rôles utilisateur et d’ajouter des utilisateurs aux groupes.

## Audience Manager {#section_C31E3FA8A1E14463B1B3E07235F1983C}

Créez des utilisateurs Audience Manager et affectez-les à des groupes. Vous pouvez également afficher des limites (caractéristiques, segments, destinations et AlgoModel).

Voir [Administration](https://marketing.adobe.com/resources/help/en_US/aam/?f=c_administration) dans l’aide d’Audience Manager.

## Gestion des produits Experience Cloud {#task_16335111C52D40E9BAC73D0699584DBF}

Créez un profil de produits et affectez-le à un groupe d’autorisations.

Lorsque vous invitez un utilisateur dans une organisation, vous pouvez lui donner accès aux produits et aux profils de produits. Vous pouvez également déléguer certaines autorisations d’administration à un utilisateur. De même, vous pouvez créer des groupes d’utilisateurs, puis ajouter les groupes à un profil de produits pour leur autoriser l’accès.

1. Dans [Admin Console](https://adminconsole.adobe.com/enterprise/), cliquez sur **[!UICONTROL Produits]**.
1. Cliquez sur **[!UICONTROL Nouveau profil]**.
1. Configurez les détails du profil, puis cliquez sur **[!UICONTROL Suivant]**.
1. Cliquez sur **[!UICONTROL Terminé]**.

Pour obtenir une aide supplémentaire, consultez les sections suivantes :

* [Gestion des produits et des profils](https://helpx.adobe.com/fr/enterprise/using/manage-products-and-profiles.html)
* [Autorisations des utilisateurs Enterprise](https://marketing.adobe.com/resources/help/fr_FR/target/target/?f=property_channel) dans l’aide de Target pour obtenir des informations supplémentaires.
* Vidéo : [Configuration des espaces de travail Target dans Adobe Admin Console](https://helpx.adobe.com/fr/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)


## Attribution d’autorisations d’accès Analytics à un profil de produits {#task_040673FE3E3E429B9531FBCB8B6A4391}

Attribuez des autorisations d’accès aux rapports Analytics (suites de rapports, mesures, dimensions, etc.) à un profil de produits.

Vous pouvez par exemple créer un profil de produits qui contient plusieurs outils Analytics ([!UICONTROL Analysis Workspace], [!UICONTROL Reports &amp; Analytics] et [!UICONTROL Report Builder]), avec des autorisations d’accès à des mesures et dimensions spécifiques (y compris les eVars) et à des fonctionnalités telles que la création de segments ou de mesures calculées.

1. Connectez-vous à [Admin Console](https://adminconsole.adobe.com/enterprise), puis cliquez sur **[!UICONTROL Produits]** (ou cliquez sur le nom de votre produit).
1. Dans le profil de produits, cliquez sur **[!UICONTROL Autorisations]** (option réservée aux administrateurs).
1. Configurez les autorisations du profil :


| Élément | Description |
|--- |--- |
| Suites de rapports | Activez les autorisations pour des suites de rapports spécifiques. |
| Mesures | Activez les autorisations pour les événements de trafic, de conversion, personnalisés, de solution, la reconnaissance de contenu, etc. |
| Dimensions | Personnalisez l’accès des utilisateurs à un niveau plus détaillé, y compris les eVars, les rapports de trafic, les rapports de solution et les rapports de cheminement. |
| Outils de suites de rapports | Activez les autorisations d’utilisateurs pour les services web, la gestion des suites de rapports, les outils et les rapports, ainsi que les éléments de tableau de bord. |
| Outils Analytics | Activez les autorisations d’utilisateurs pour les éléments généraux (facturation, journaux, etc.), la gestion des entreprises, les outils, l’accès au service web, le Report Builder et l’intégration des Data Connectors. Les paramètres d’entreprise de la catégorie de personnalisation d’Admin Console ont été déplacés dans les outils Analytics. |



## Délégation des rôles d’administration aux utilisateurs {#task_3A072C4AA9734BC59FFA7E015271BC7E}


<!-- t_admin-roles.xml -->
Dans Admin Console, vous pouvez déléguer des droits d’administration limités à d’autres membres de votre organisation. Les rôles délégués permettent aux utilisateurs d’administrer l’accès aux logiciels pour les utilisateurs finaux, de fournir l’accès à des fonctionnalités de déploiement et d’intervenir en tant que délégués de soutien.

Par exemple, vous pouvez effectuer les opérations suivantes :

* Permettre à votre directeur créatif d’accorder l’accès à Creative Cloud.
* Permettre à votre directeur marketing d’accorder l’accès à Experience Cloud.
* Maintenir ces deux rôles distincts, afin qu’ils n’empiètent pas l’un sur l’autre.


En utilisant ces rôles, vous pouvez déléguer simultanément la gestion à d’autres personnes sans leur attribuer davantage de capacités qu’ils n’en ont besoin.

1. Dans Admin Console, cliquez sur **[!UICONTROL Utilisateurs]**, puis sur le nom de l’utilisateur.
1. Cliquez sur **[!UICONTROL Modifier les droits d’administrateur]**.
1. Configurez les droits d’administrateur de l’utilisateur.
1. Cliquez sur **[!UICONTROL Suivant]** pour passer en revue les paramètres, puis cliquez sur **[!UICONTROL Enregistrer]**.

## Navigateurs pris en charge et configuration requise {#concept_CDC4371EB9BF433E9534F8716DC8A088}

Cette section répertorie les navigateurs pris en charge dans Experience Cloud.


<!-- browsers.xml -->
**Services principaux Experience Cloud**

* Dernière version d’Internet Explorer de Microsoft. (Microsoft a [mis fin à la prise en charge](https://www.microsoft.com/fr-fr/WindowsForBusiness/End-of-IE-support) d’Internet Explorer 8, 9, et 10. Par conséquent, Adobe ne corrigera pas les bogues signalés pour ces versions spécifiques d’Internet Explorer.)
* Google Chrome
* Mozilla Firefox
* Apple Safari


**Exigences en matière de produit et de solution**

* [Analysis Workspace et Reports &amp; Analytics](https://marketing.adobe.com/resources/help/fr_FR/sc/user/?f=requirements) (comprend Adobe Social)
* [Report Builder](https://marketing.adobe.com/resources/help/fr_FR/arb/?f=system_requirements)
* [Ad Hoc Analysis](https://marketing.adobe.com/resources/help/fr_FR/dsc/index.html?f=c_sys_reqs)
* [Data Workbench](https://marketing.adobe.com/resources/help/en_US/insight/install/?f=c_Data_Workbench_Client_install)
* [Adobe Target](https://marketing.adobe.com/resources/help/fr_FR/target/ov/?f=r_supported_browsers)
* [Adobe Audience Manager](https://marketing.adobe.com/resources/help/en_US/aam/?f=c_supported_browsers)
* [Adobe Campaign Standard](https://helpx.adobe.com/fr/campaign/standard/start/using/compatible-browsers.html)
* [Adobe Campaign Classic](https://helpx.adobe.com/fr/campaign/kb/compatibility-matrix.html)
