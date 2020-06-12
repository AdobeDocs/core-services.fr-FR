---
description: Découvrez l’outil d’administration d’Experience Cloud pour afficher une liste pouvant être triée et filtrée de tous les utilisateurs d’Experience Cloud.
keywords: core services
seo-description: Découvrez l’outil d’administration d’Experience Cloud pour afficher une liste pouvant être triée et filtrée de tous les utilisateurs d’Experience Cloud.
seo-title: Affichage des utilisateurs et des informations sur les utilisateurs d’Experience Cloud
solution: Experience Cloud
title: 'Affichage des utilisateurs et des informations sur les utilisateurs d’Experience Cloud '
index: true
translation-type: ht
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e
workflow-type: ht
source-wordcount: '693'
ht-degree: 100%

---


# Affichage des utilisateurs d’Experience Cloud dans l’outil d’administration

Les administrateurs peuvent afficher une liste triable et filtrable de tous les utilisateurs d’Experience Cloud et de leurs informations dans l’outil d’administration. Les détails de l’utilisateur incluent l’accès au produit d’un utilisateur, ses rôles et les informations de dernier accès. (**Remarque :** la gestion des utilisateurs et des produits est configurée dans [Admin Console](admin-getting-started.md).)

1. Connectez-vous à `https://experience.adobe.com/.`

   ![](assets/admin-tool.png)

1. Dans la page d’accueil d’Experience Cloud, cliquez sur **[!UICONTROL Outil d’administration.]**

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

## Section À propos

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
