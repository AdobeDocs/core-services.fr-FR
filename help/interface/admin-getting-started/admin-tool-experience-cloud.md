---
description: Découvrez l’outil d’administration Experience Cloud, qui permet de vue d’une liste pouvant être triée et filtrée de tous les utilisateurs et stratégies Experience Cloud.
keywords: core services
seo-description: Découvrez l’outil d’administration Experience Cloud, qui permet de vue d’une liste pouvant être triée et filtrée de tous les utilisateurs et stratégies Experience Cloud.
seo-title: Affichage des utilisateurs et des informations sur les utilisateurs d’Experience Cloud
solution: Experience Cloud
title: 'Affichage des utilisateurs et des informations sur les utilisateurs d’Experience Cloud '
index: true
translation-type: tm+mt
source-git-commit: 82b0b42d8b06388e396bf2959503fe484c8b3a66
workflow-type: tm+mt
source-wordcount: '1271'
ht-degree: 52%

---


# Utilisateurs et stratégies Experience Cloud vues dans l’outil d’administration

Les administrateurs peuvent vue une liste pouvant être triée et filtrée de tous les utilisateurs et stratégies Experience Cloud avec des informations détaillées dans l’outil d’administration. Les détails de l’utilisateur incluent l’accès au produit d’un utilisateur, ses rôles et les informations de dernier accès. Les détails de la stratégie incluent l’utilisateur, le groupe, le développeur, l’intégration et la liste d’administration d’une stratégie (profil de produits), ainsi que les autorisations détaillées et les informations de ressources de la stratégie.

>[!NOTE]
>
>User and product management is configured in the [Admin Console](admin-getting-started.md).

1. Connectez-vous à `https://experience.adobe.com/.`

   ![](assets/admin-tool.png)

1. Sous Accès rapide, cliquez sur **[!UICONTROL Outil d’administration.]**

   (Vous pouvez également remplacer la _page d’accueil_ par _admin_ dans l’URL de la page d’accueil.)

   La page [!UICONTROL Utilisateurs] s’affiche.

## Page Utilisateurs

Cette page affiche la liste complète des utilisateurs ayant accès à Experience Cloud dans votre entreprise. Il fournit des informations sur les droits de la solution et la dernière connexion. Vous pouvez rechercher, trier et filtrer des affichages personnalisés de la liste des utilisateurs.

![](assets/admin-tool-users.png)

| Élément | Description |
|---|---|
| [!UICONTROL Nom] | Prénom et nom de l’utilisateur. Vous pouvez trier cette colonne de A à Z et de Z à A. Cliquez sur le nom d’un utilisateur pour afficher plus de détails à son sujet. |
| [!UICONTROL E-mail] | Adresse électronique associée à l’utilisateur. La colonne peut être triée des manières suivantes : A->Z, Z->A. |
| [!UICONTROL Type d’ID] | Type d’identité du compte de l’utilisateur. Le filtre peut être appliqué aux types d’ID spécifiques à un affichage. Voir [Gestion des types d’identité](https://helpx.adobe.com/fr/enterprise/using/identity.html) pour plus d’informations. |
| [!UICONTROL Solutions] | Résumé des solutions Experience Cloud auxquelles l’utilisateur peut accéder. Vous pouvez appliquer des filtres pour réduire la liste des utilisateurs disposant d’un accès aux solutions spécifique. |
| [!UICONTROL Dernière connexion] | Heure et date de la dernière connexion de l’utilisateur à Experience Cloud. Cette colonne peut être triée par date ascendante ou descendante. <br> **Important :** à compter du 13 janvier 2020, les données concernant la dernière connexion de l’utilisateur seront conservées pendant 365 jours. Ces informations ont pour but d’afficher l’activité de connexion actuelle dans Experience Cloud et non de recommander une action sur les comptes inactifs avant le 13 janvier 2020. |

## Personnalisation de l’affichage de la liste des utilisateurs

Vous pouvez rechercher, trier ou filtrer les colonnes pour personnaliser la liste des utilisateurs.

* Recherchez des utilisateurs par nom ou adresse électronique. Les recherches correspondent à la chaîne de texte que vous saisissez.
* Triez la colonne par valeurs ascendantes ou descendantes. Ceci s’applique aux colonnes [!UICONTROL Nom,] [!UICONTROL Adresse électronique] et [!UICONTROL Dernière connexion].
* Cliquez sur l’icône **[!UICONTROL Filtrer par]** pour appliquer plusieurs filtres aux utilisateurs de la liste avec des critères spécifiques. Lorsque plusieurs catégories de filtres sont appliquées, les recherches contiennent Domaine de messagerie `AND`TYPE D’ID`AND` Solution.

| Élément | Description |
|---------|----------|
| Filtre [!UICONTROL Domaine de messagerie] | Recherchez des chaînes de caractères dans la colonne E-mail pour restreindre les résultats à un ou plusieurs domaines. Ajoutez plusieurs filtres en appuyant sur la touche Entrée après chaque terme de recherche |
| Filtre [!UICONTROL Type d’ID] | Choisissez parmi les types d’ID disponibles. Plusieurs types d’ID peuvent être utilisés comme filtre. |
| Filtre [!UICONTROL Solution] | Choisissez parmi les solutions disponibles. Plusieurs filtres de solution recherchent des résultats contenant la solution 1 `OR` la solution 2. |

## Affichage des informations sur les utilisateurs

Sur la page [!UICONTROL Utilisateurs], pour afficher les informations d’un utilisateur, cliquez sur son adresse e-mail.

![](assets/admin-tool-user-details.png)

Une vue détaillée de chaque utilisateur affiche des détails importants sur l’accès à la solution de l’utilisateur, les rôles d’administrateur et de produit, ainsi que les dernières informations consultées.

## A propos de la section

Cette section présente un résumé du compte d’utilisateur, notamment :

* Avatar et badge d’administration système (le cas échéant) de l’utilisateur
* Nom
* E-mail
* Nom d’utilisateur (les comptes Federated ID peuvent avoir des noms d’utilisateur différents de ceux de l’adresse électronique)
* [Type d’ID](https://helpx.adobe.com/fr/enterprise/using/identity.html)
* Pays
* Dernière connexion

## Résumé des solutions

Cette section présente un résumé des solutions Experience Cloud auxquelles l’utilisateur peut accéder. Inclut le rôle administratif du produit, le cas échéant.

## Liste détaillée d’accès aux produits

Cette section affiche une liste complète de tous les profils d’adhésion de produit pour l’utilisateur.

| Élément | Description |
|---------|----------|
| [!UICONTROL Produit] | Nom du produit associé au profil de produits. |
| [!UICONTROL Instance] | Nom de l’instance (telle que la société de connexion ou le client) associée au produit et au profil de produits. |
| [!UICONTROL Profil de produits] | Nom unique du profil de produits. |
| [!UICONTROL Attribué par groupe] | Nom du groupe d’utilisateurs qui associe l’utilisateur à un profil de produits. Les résultats vides indiquent que l’utilisateur a été affecté directement au profil de produits, et non par l’intermédiaire d’un groupe. |
| [!UICONTROL Rôles de produit] | Affectation de rôle de l’utilisateur dans le profil de produits. Actuellement, ces informations s’appliquent uniquement aux profils de produits Adobe Target. |

## Page Stratégies

Cette page affiche la liste complète des stratégies Experience Cloud de votre organisation. Il fournit des informations sur les produits, les instances, les utilisateurs et les développeurs. Vous pouvez rechercher, trier et filtrer des vues personnalisées de la liste de stratégies.

![](assets/admin-tool-policies.png)

| Élément | Description |
|---|---|
| [!UICONTROL Profil de produits] | Nom du profil de produits. La colonne peut être triée A->Z, Z->A. Cliquez sur le nom d’un profil de produits pour afficher plus d’informations sur la stratégie. |
| [!UICONTROL Produit] | Produit associé au profil de produit. La colonne peut être triée des manières suivantes : A->Z, Z->A. |
| [!UICONTROL Instance] | L’instance (par exemple, société de connexion ou de client) associée au profil de produit. Les produits qui n’ont pas d’instances ou de locataires uniques afficheront un &quot; -&quot; pour la valeur. La colonne peut être triée des manières suivantes : A->Z, Z->A. |
| [!UICONTROL Nombre d’utilisateurs] | Nombre unique d’utilisateurs associés au profil de produits, y compris l’affectation directe et l’affectation de groupe. La colonne peut être triée du plus petit au plus grand ou du plus grand au plus petit. |
| [!UICONTROL Nombre de développeurs] | Nombre de rôles de développeur associés au profil de produits. La colonne peut être triée du plus petit au plus grand ou du plus grand au plus petit. |

## Personnalisation de la vue de liste de stratégies

Vous pouvez rechercher, trier ou filtrer les colonnes afin de personnaliser la liste des stratégies.

* Recherchez les profils de produits par nom. Les recherches correspondent à la chaîne de texte que vous saisissez.
* Triez la colonne par valeurs ascendantes ou descendantes. Cela s’applique au Profil [!UICONTROL de produit,] au [!UICONTROL produit,] à l’ [!UICONTROL instance,] au [!UICONTROL nombre d’utilisateurs, et au nombre de développeurs, colonnes.]
* Click the **[!UICONTROL Filter By]** icon to apply multiple filters to list product profiles with specific criteria. Lorsque plusieurs catégories de filtrage sont appliquées, les recherches contiennent la `AND` `AND` solution d’instance associée aux groupes.

| Élément | Description |
|---------|----------|
| [!UICONTROL Filtre d’instance] | Recherchez des chaînes de caractères dans la colonne d’instance pour restreindre les résultats à une ou plusieurs instances. Ajoutez plusieurs filtres en appuyant sur la touche Entrée après chaque terme de recherche. |
| Filtre [!UICONTROL Solution] | Choisissez parmi les solutions disponibles. Plusieurs filtres de solution recherchent des résultats contenant la solution 1 `OR` la solution 2. |

## Détails de la stratégie de vue

Sur la page [!UICONTROL Stratégies] , pour vue des détails d’une stratégie, cliquez sur le nom du profil de produits.

![](assets/admin-tool-policy-detail.png)

Une vue détaillée de chaque profil de produits présente des détails importants sur les sujets du profil de produits (utilisateurs, groupes, etc.). Il affiche également les autorisations et les ressources activées par le profil de produits.

Les détails du profil du produit peuvent être exportés dans des fichiers CSV. L’option [!UICONTROL Exporter au format CSV] produit deux fichiers CSV :

* Détails du sujet (utilisateurs, groupes d’utilisateurs, développeurs, intégrations, administrateurs)
* Autorisations et éléments de ressources

## Section Résumé

Cette section présente un récapitulatif du profil de produits, notamment :

* Nom du profil du produit
* Nombre d’utilisateurs
* Nombre de développeurs
* Nombre d&#39;intégrations
* Produits associés
* Instance

## Liste détaillée du sujet

Cette section présente une liste complète de tous les utilisateurs, groupes d’utilisateurs, développeurs, intégrations et administrateurs affectés au profil de produits.

| Tabulation | Description |
|---------|----------|
| [!UICONTROL Utilisateurs] | Liste des utilisateurs inclus dans le profil de produits. L’association de groupe d’utilisateurs apparaît dans la colonne [!UICONTROL Attribué par groupe] . |
| [!UICONTROL Groupes d’utilisateurs] | Liste des groupes d’utilisateurs associés au profil de produits. |
| [!UICONTROL Développeurs] | Liste des développeurs associés au profil de produits. |
| [!UICONTROL Intégrations] | Liste des intégrations associées au profil de produits. |
| [!UICONTROL Administrateurs] | Liste des administrateurs associés au profil de produit. |

## Listes détaillées des autorisations et des ressources

Cette section présente une liste complète des autorisations et des ressources disponibles pour le profil de produits. Les autorisations et les ressources qui ont été incluses dans le profil de produits ont été marquées d&#39;un &quot;&quot;. Les listes d’autorisations et de ressources ont été classées en onglets et en colonnes pour faciliter l’affichage. Les onglets et les colonnes affichent la liste des sections qui s’appliquent au produit actif.
