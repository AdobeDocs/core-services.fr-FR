---
title: Gérer les utilisateurs et les produits
description: Découvrez comment vous connecter au Admin Console et gérer les autorisations utilisateur et les profils de produits Experience Cloud. Découvrez comment déléguer des droits d’administration aux utilisateurs Experience Cloud et comment obtenir de l’aide pour les navigateurs dans Experience Cloud.
solution: Admin
index: true
feature: Admin Console
topic: Administration
role: Admin
level: Experienced
exl-id: af9eda5b-d984-44b7-a7b3-52dfc4e03d8f
source-git-commit: 3cf359c54467b4f913f20060e9d7f9577691b90c
workflow-type: tm+mt
source-wordcount: '1557'
ht-degree: 69%

---

# Gestion des utilisateurs et des produits Experience Cloud

Découvrez-en plus sur la connexion au Admin Console, la gestion des autorisations utilisateur et des profils de produits Experience Cloud et la prise en charge des navigateurs.

>[!IMPORTANT]
>
>Les informations suivantes concernent spécifiquement les applications Experience Cloud. Ces informations complètent les informations administratives générales du [Guide d’utilisation de l’administrateur Enterprise](https://helpx.adobe.com/fr/enterprise/admin-guide.html) pour tous les produits cloud d’Adobe.

Vous pouvez afficher une liste triable et filtrable de tous les utilisateurs d’Experience Cloud et de leurs informations dans l’outil d’administration. Voir [Affichage des utilisateurs d’Experience Cloud dans l’outil d’administration](admin-tool-experience-cloud.md).

## Authentification des utilisateurs Experience Cloud (migration planifiée){#migration}

Depuis février 2022, Adobe met à jour son système de gestion des profils afin de permettre aux entreprises de mieux gérer les droits de l’entreprise pour les profils individuels. Ainsi, tous les utilisateurs disposant d’un profil personnel, qui correspond à une Adobe ID individuelle (Type1), seront migrés vers un nouveau profil professionnel. Ce profil correspond à un _Identifiant professionnel_ (Type2e).

Voir [Types d’identité dans Adobe Admin Console](https://helpx.adobe.com/fr/enterprise/using/identity.html) pour plus d’informations sur les types d’identité.

### Processus de migration

À l’heure de la migration, les administrateurs de l’organisation recevront un e-mail de notification 30 jours avant la migration.

* La migration sera planifiée entre 22h00. - 6h00, selon le fuseau horaire Principal de l’entreprise ou le week-end.
* Pendant la migration, l’application Experience Cloud peut être inaccessible pendant environ 15 minutes et Admin Console peut être inaccessible pendant 30 minutes. Sinon, cette migration sera transparente.

### Modifications après la migration

Admin Console

* Les administrateurs disposant de plusieurs comptes peuvent voir un sélecteur de profil lors de la connexion à [!UICONTROL Admin Console].
* Les utilisateurs Adobe ID individuels seront mis à jour vers Business ID.
* Le répertoire des Business ID sera ajouté dans **[!UICONTROL Paramètres]** > **[!UICONTROL Identité]** > **[!UICONTROL Répertoires]**.

   ![Identité du Admin Console - Identifiant de l’entreprise](assets/identity-home.png)

### Connexion après la migration

Votre expérience de connexion ne change pas avec cette mise à jour :

1. Se connecter à l’adresse `experience.adobe.com` en utilisant les mêmes informations d’identification.

1. Un nouveau profil associé à l’identifiant de l’entreprise est créé. Vous êtes invité à **[!UICONTROL Rejoindre maintenant]** ou **[!UICONTROL Ignorer]**.

1. L’utilisation de l’une des options génère une expérience de page d’entrée existante.

1. Un profil d’Adobe est associé à chaque plan d’entreprise et permet d’organiser les ressources créées à partir d’offres Adobe Cloud supplémentaires (Creative Cloud et Document Cloud).

Pour plus d’informations, voir [Présentation des profils d’Adobe](https://helpx.adobe.com/fr/enterprise/kb/introducing-adobe-profiles.html).

## Qu’est-ce qu’un profil de produit ? {#section_AB50558124D541CF80A0D3D76D35A4BF}

Les _[!UICONTROL profils de produits]_ sont des groupes de produits et de services que vous pouvez affecter aux utilisateurs. Dans Experience Cloud, les autorisations sont basées sur le profil d’un produit et non sur l’utilisateur. (Cependant, vous pouvez déléguer des droits d’administration à des utilisateurs spécifiques.)

Dans Analytics par exemple, vous pouvez configurer une collection d’outils de création de rapports, tels qu’Analysis Workspace et le Report Builder, parallèlement aux suites de rapports, aux mesures et aux dimensions. Vous pouvez accorder l’autorisation d’accès à un profil de produit en ajoutant des utilisateurs au profil.

* Voir [Attribution d’autorisations d’accès Analytics à un profil de produit](admin-getting-started.md#task_040673FE3E3E429B9531FBCB8B6A4391) sur cette page.
* Voir [Délégation de rôles d’administration aux utilisateurs](#delegate-rights) sur cette page.

## Gestion des profils de produits Experience Cloud {#task_16335111C52D40E9BAC73D0699584DBF}

Vous pouvez créer un profil de produit et l’affecter à un groupe d’autorisations.

Lorsque vous invitez un utilisateur à rejoindre une organisation, vous pouvez lui donner accès aux produits et aux profils de produit. Vous pouvez également déléguer des autorisations d’administration limitées à un utilisateur. De même, vous pouvez créer des groupes d’utilisateurs, puis ajouter le groupe à un profil de produit pour activer l’accès.

1. Dans [Admin Console](https://adminconsole.adobe.com/enterprise/), sélectionnez **[!UICONTROL Produits]**.
1. Sélectionnez le nom de votre organisation.
1. Sélectionnez **[!UICONTROL Nouveau profil]**.
1. Configurez les détails du profil, puis sélectionnez **[!UICONTROL Enregistrer]**.

Pour plus d’informations (et pour obtenir de l’aide sur la gestion des produits Creative Cloud et Document Cloud), voir [Identité](https://helpx.adobe.com/fr/enterprise/admin-guide.html/fr/enterprise/using/identity.ug.html) dans le [Guide d’utilisation de l’administrateur](https://helpx.adobe.com/fr/enterprise/admin-guide.html/fr/enterprise/using/users.ug.html).

**Aide connexe**

* [Gérez les produits et les profils](https://helpx.adobe.com/fr/enterprise/admin-guide.html/fr/enterprise/using/manage-products.ug.html) dans le Guide d’utilisation de l’administrateur.
* [Autorisations des utilisateurs d’entreprise](https://experienceleague.adobe.com/docs/target/using/administer/manage-users/enterprise/property-channel.html?lang=fr) dans l’aide d’Adobe Target pour plus d’informations.
* Vidéo : [Configuration d’Adobe Target Workspaces dans Adobe Admin Console](https://helpx.adobe.com/fr/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Délégation des rôles d’administration aux utilisateurs {#delegate-rights}

Dans Admin Console, vous pouvez déléguer des droits d’administration limités à d’autres membres de votre organisation. Les rôles délégués permettent aux utilisateurs d’administrer l’accès logiciel aux utilisateurs finaux, de fournir des capacités de déploiement d’accès et de fonctionner en tant que délégués du support technique.

Par exemple, vous pouvez effectuer les opérations suivantes :

* Autoriser votre directeur créatif à accorder l’accès à Creative Cloud
* Autoriser votre directeur marketing à accorder l’accès à Experience Cloud
* Garder ces deux rôles séparés de sorte qu’ils ne puissent pas outrepasser les rôles respectifs

En utilisant ces rôles, vous pouvez déléguer simultanément la gestion à d’autres personnes sans fournir plus de capacités que nécessaire.

1. Dans Admin Console, sélectionnez **[!UICONTROL Utilisateurs]**, puis le nom de lʼutilisateur.

   ![Droits dʼadministration dans Admin Console](assets/edit-admin-rights.png)

1. Sélectionnez **[!UICONTROL Modifier droits d’administration]**.

   ![Modification des droits dʼadministration dans Admin Console](assets/edit-admin-rights-page.png)

1. Spécifiez les droits d’administrateur de l’utilisateur.
1. Sélectionnez **[!UICONTROL Enregistrer]**.

## Gérer les utilisateurs et les produits Analytics {#section_97DE101F92CD494AB073893680992F1A}

Vous pouvez attribuer des autorisations d’accès aux rapports Analytics (suites de rapports, mesures, dimensions, etc.) à un profil de produit.

Par exemple, vous pouvez créer un profil de produit qui contient plusieurs outils Analytics ([!UICONTROL Analysis Workspace], [!UICONTROL Reports &amp; Analytics], et [!UICONTROL Report Builder]). Ces profils contiennent des autorisations d’accès à des mesures et dimensions spécifiques (y compris les eVars) et à des fonctionnalités telles que la création de segments ou de mesures calculées.

1. Connectez-vous à [Admin Console](https://adminconsole.adobe.com/enterprise), puis sélectionnez **[!UICONTROL Produits]**.
1. Sur la page [!UICONTROL Produits], sélectionnez votre produit, puis choisissez **[!UICONTROL Autorisations]** (disponible uniquement pour les administrateurs).
1. Configurez les autorisations du profil :

| Élément | Description |
|--- |--- |
| Suites de rapports | Activez les autorisations pour des suites de rapports spécifiques. |
| Mesures | Activez les autorisations pour les événements personnalisés, de trafic, de conversion, dʼapplication, la reconnaissance de contenu, etc. |
| Dimensions | Personnalisez lʼaccès des utilisateurs à un niveau plus détaillé, y compris les eVars, les rapports de trafic, les rapports dʼapplication et les rapports de cheminement. |
| Outils de suites de rapports | Activez les autorisations d’utilisateurs pour les services web, la gestion des suites de rapports, les outils et les rapports, ainsi que les éléments de tableau de bord. |
| Outils Analytics | Activez les autorisations d’utilisateurs pour les éléments généraux (facturation, journaux, etc.), la gestion des entreprises, les outils, l’accès au service web, le Report Builder et l’intégration de Data Connectors. Les paramètres d’entreprise de la catégorie de personnalisation d’Admin Console ont été déplacés dans les outils Analytics. |

**Migration des comptes d’utilisateurs**

Dans Analytics, les administrateurs peuvent utiliser l’outil de migration des ID d’utilisateur pour migrer des comptes d’utilisateurs de la gestion des utilisateurs Analytics vers [Adobe Admin Console](https://adminconsole.adobe.com/enterprise/).

La migration des comptes est en cours de déploiement. Adobe vous avisera lorsqu’il sera temps de migrer vos comptes d’utilisateurs des **[!UICONTROL Outils d’administration]** > **[!UICONTROL Gestion des utilisateurs]** vers Admin Console et vous aidera à le faire.

Une fois la migration terminée, les utilisateurs se connectent à lʼaide de leur Adobe ID (ou Enterprise ID) et sʼauthentifient dans les applications et services Experience Cloud sur [experience.adobe.com](https://experience.adobe.com). Si les utilisateurs tentent de se connecter au moyen des comptes hérités ([!DNL my.omniture.com], [!DNL sc.omniture.com] et [!DNL experiencecloud.adobe.com]), ils sont redirigés vers [!DNL experience.adobe.com].

**Aide connexe**

Pour plus d’informations, voir [Migration des ID d’utilisateur Analytics](https://experienceleague.adobe.com/docs/analytics/admin/user-product-management/migrate-users/c-migration-tool.html?lang=fr).

## Gestion d’Adobe Target - Profils de produit par rapport aux espaces de travail {#section_3860AF177C9E4C7E9C390D36A414F353}

Dans Adobe Target, un espace de travail est un profil de produit. Avec un espace de travail, une organisation peut allouer un groupe d’utilisateurs spécifique à un groupe de propriétés spécifique. Un espace de travail peut être comparé à une suite de rapports dans Adobe Analytics.

Voir :

* [Autorisations des utilisateurs d’Enterprise](https://experienceleague.adobe.com/docs/target/using/administer/manage-users/enterprise/property-channel.html?lang=en)
* [Gestion des produits et des profils](https://helpx.adobe.com/enterprise/admin-guide.html/enterprise/using/manage-products.ug.html)
* Vidéo : [Configuration d’Adobe Target Workspaces dans Adobe Admin Console](https://helpx.adobe.com/target/kb/how-to-configure-target-workspaces-in-adobe-admin-console0.html)

## Gestion des profils de produits Campaign, des clients et des groupes de sécurité {#section_09CDF75366444CF5810CF321B7C712F3}

Un *client* dans Campaign s’affiche en tant que *produit* sur la page de produits dans Admin Console.

*Groupe de sécurité* s’affiche sous la forme d’un profil de produit.

Voir [Gestion des groupes et des utilisateurs](https://experienceleague.adobe.com/docs/campaign-standard/using/administrating/users-and-security/managing-groups-and-users.html?lang=fr) pour en savoir plus sur les groupes de sécurité et l’affectation d’utilisateurs à des groupes de sécurité.

## Gestion de la collecte de données Experience Platform (Launch) {#section_F2DA6778DD2D48AA8F794041971EE6B1}

Experience Platform [!UICONTROL Data Collection] ([!UICONTROL Launch]) s’affiche sur la page [!UICONTROL Produits] dans [!UICONTROL Admin Console]. Vous pouvez inclure d’autres applications et services dans un profil de produit Launch.

Invitez des utilisateurs dans [!UICONTROL Platform Launch] et attribuez des rôles et des droits d’utilisateur.

Voir [Autorisations des utilisateurs](https://experienceleague.adobe.com/docs/experience-platform/tags/admin/user-permissions.html?lang=fr) pour en savoir plus sur les autorisations d’utilisateurs dans Admin Console et pour configurer des options spécifiques à Launch, y compris l’attribution de droits aux profils.

## Experience Manager as a Cloud Service

Les clients Adobe Enterprise sont représentés en tant qu’organisations dans Adobe [!UICONTROL Admin Console]. Les clients Experience Manager peuvent utiliser Adobe [!UICONTROL Admin Console] pour gérer les droits sur les produits et l’authentification IMS vers Experience Manager as a [!UICONTROL Cloud Service].

Voir [Prise en charge IMS d’Experience Manager as a Cloud Service](https://experienceleague.adobe.com/docs/experience-manager-cloud-service/security/ims-support.html?lang=fr).

## Audience Manager {#section_C31E3FA8A1E14463B1B3E07235F1983C}

Créez des utilisateurs d’Audience Manager et affectez-les à des groupes. Vous pouvez également consulter les limites (caractéristiques, segments, destinations et [!DNL AlgoModel]).

Voir [Administration](https://experienceleague.adobe.com/docs/audience-manager/user-guide/features/administration/administration-overview.html?lang=fr) dans l’aide d’Audience Manager.

## Navigateurs pris en charge dans Experience Cloud

* [!DNL Microsoft® Edge] (Microsoft® a officialisé la [cessation de prise en charge](https://www.microsoft.com/fr-fr/WindowsForBusiness/End-of-IE-support) d’Internet Explorer 8, 9 et 10. Par conséquent, Adobe ne corrige pas les bugs signalés concernant ces versions spécifiques d’Internet Explorer.)
* [!DNL Google Chrome]
* [!DNL Firefox]
* [!DNL Safari]
* [!DNL Opera]

**Remarque** : bien que l’interface d’Experience Cloud prenne en charge ces navigateurs, les applications individuelles ne les prennent pas tous en charge. (Par exemple, [Analytics](https://experienceleague.adobe.com/docs/analytics/admin/sys-reqs.html?lang=fr) ne prend pas en charge [!DNL Opera] et [ Adobe Target](https://experienceleague.adobe.com/docs/target/using/implement-target/before-implement/supported-browsers.html?lang=fr) ne prend pas en charge [!DNL Safari].)

### Exigences des solutions et des produits

* [Analytics](https://experienceleague.adobe.com/docs/analytics/admin/sys-reqs.html?lang=en)
* [Report Builder](https://experienceleague.adobe.com/docs/analytics/analyze/report-builder/report-builder-setup/system-requirements.html?lang=fr)
* [Adobe Target](https://experienceleague.adobe.com/docs/target/using/implement-target/before-implement/supported-browsers.html?lang=en)
