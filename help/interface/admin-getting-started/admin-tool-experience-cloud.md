---
description: Découvrez l’outil d’administration d’Experience Cloud pour afficher une liste pouvant être triée et filtrée de tous les utilisateurs d’Experience Cloud.
keywords: core services
seo-description: Découvrez l’outil d’administration d’Experience Cloud pour afficher une liste pouvant être triée et filtrée de tous les utilisateurs d’Experience Cloud.
seo-title: Affichage des utilisateurs et des détails utilisateur d’Experience Cloud
solution: Experience Cloud
title: 'Affichage des utilisateurs et des détails utilisateur d’Experience Cloud '
index: true
translation-type: tm+mt
source-git-commit: 5e57aedb38e6914f7e99b1b26df9e4bb52b9e13d

---


# Affichage des utilisateurs d’Experience Cloud dans l’outil d’administration

Les administrateurs peuvent afficher une liste triable et filtrable de tous les utilisateurs d’Experience Cloud et de leurs détails dans l’outil d’administration. Les détails de l’utilisateur incluent l’accès au produit d’un utilisateur, ses rôles et les informations de dernier accès. (**Remarque :** La gestion des utilisateurs et des produits est configurée dans la Console [d’administration](admin-getting-started.md).)

1. Log in to `https://experience.adobe.com/.`

   ![](assets/admin-tool.png)

1. Dans la page d’accueil d’Experience Cloud, cliquez sur Outil **[!UICONTROL d’administration.]**

   (Vous pouvez également remplacer _accueil_ par _admin._ dans l’URL de la page d’accueil)

   La page [!UICONTROL Utilisateurs] s’affiche.

## Page Utilisateurs

Cette page affiche la liste complète des utilisateurs ayant accès à Experience Cloud dans votre entreprise. Il fournit des informations sur les droits de la solution et la dernière connexion. Vous pouvez rechercher, trier et filtrer les vues personnalisées de la liste des utilisateurs.

![](assets/admin-tool-users.png)

| Élément | Description |
|---|---|
| [!UICONTROL Nom] | Prénom et nom de famille de l’utilisateur. Vous pouvez trier cette colonne de A à Z et de Z à A.  Cliquez sur le nom d’un utilisateur pour en savoir plus sur lui. |
| [!UICONTROL Courriel] | Adresse électronique associée à l’utilisateur. Vous pouvez trier les colonnes A->Z, Z->A. |
| [!UICONTROL Type d’ID] | Type d’identité du compte de l’utilisateur. Un filtre peut être appliqué pour afficher des types d’ID spécifiques. Voir [Gestion des types](https://helpx.adobe.com/enterprise/using/identity.html) d’identité pour plus d’informations. |
| [!UICONTROL Solutions] | Résumé des solutions Experience Cloud auxquelles l’utilisateur peut accéder. Vous pouvez appliquer des filtres pour réduire la liste des utilisateurs disposant d’un accès aux solutions spécifique. |
| [!UICONTROL Dernière identification] | Heure et date de la dernière connexion de l’utilisateur à Experience Cloud. Cette colonne peut être triée par date ascendante ou descendante. <br> **Important :** A compter du 13 janvier 2020, les dernières données de connexion de l’utilisateur seront conservées pendant 365 jours. Ces informations ont pour but d’afficher l’activité de connexion actuelle dans Experience Cloud et non de recommander une action sur les comptes inactifs avant le 13 janvier 2020. |

## Personnalisation de l’affichage de la liste des utilisateurs

Vous pouvez rechercher, trier ou filtrer les colonnes pour personnaliser la liste des utilisateurs.

* Rechercher des utilisateurs par nom ou adresse électronique. Les recherches correspondent à la chaîne de texte saisie.
* Triez une colonne par valeurs ascendantes ou décroissantes. Cela s’applique aux colonnes [!UICONTROL Nom,] [!UICONTROL Adresse électronique et] Dernière connexion  .
* Cliquez sur l’icône **[!UICONTROL Filtrer par]** pour appliquer plusieurs filtres à la liste des utilisateurs avec des critères spécifiques. Lorsque plusieurs catégories de filtres sont appliquées, les recherches contiennent la `AND` solution TYPE `AND` d’ID de domaine de courriel.

| Élément | Description |
|---------|----------|
| [!UICONTROL Filtre de domaine] de courriel | Recherchez des chaînes de caractères dans la colonne Courriel pour restreindre les résultats à un ou plusieurs domaines. Ajoutez plusieurs filtres en appuyant sur la touche Entrée après chaque terme de recherche. |
| [!UICONTROL Filtre Type] d’ID | Choisissez parmi les types d’ID disponibles. Plusieurs types d’ID peuvent être utilisés comme filtre. |
| [!UICONTROL Filtre de solution] | Choisissez parmi les solutions disponibles. Plusieurs filtres de solution recherchent des résultats contenant la solution 1 `OR` Solution 2. |

## Affichage des détails utilisateur

Sur la page [!UICONTROL Utilisateurs] , pour afficher les détails d’un utilisateur, cliquez sur son adresse électronique.

![](assets/admin-tool-user-details.png)

Une vue détaillée de chaque utilisateur affiche des détails importants sur l’accès aux solutions de l’utilisateur, les rôles d’administrateur et de produit, ainsi que les informations sur le dernier accès de l’utilisateur.

## A propos de la section

Cette section présente un résumé du compte utilisateur, notamment :

* Avatar de l’utilisateur et badge d’administrateur système (le cas échéant)
* Nom
* Courrier électronique
* Nom d’utilisateur (les comptes d’ID fédérés peuvent avoir des noms d’utilisateur différents de l’adresse électronique)
* [Type d’ID](https://helpx.adobe.com/enterprise/using/identity.html)
* Pays
* Dernière identification

## Résumé des solutions

Cette section présente un résumé des solutions Experience Cloud auxquelles l’utilisateur peut accéder. Inclut le rôle d’administrateur du produit, le cas échéant

## Liste détaillée des accès aux produits

Cette section affiche la liste complète de tous les profils de produit associés à l’utilisateur.

| Élément | Description |
|---------|----------|
| [!UICONTROL Produit] | Nom du produit associé au profil du produit. |
| [!UICONTROL Instance] | Nom de l’instance (par exemple, identifiant société ou client) associée au profil du produit et du produit. |
| [!UICONTROL Profil du produit] | Nom unique du profil de produit. |
| [!UICONTROL Attribué par groupe] | Nom du groupe d’utilisateurs qui associe l’utilisateur à un profil de produit. Les résultats vides indiquent que l’utilisateur a été affecté directement au profil du produit, et non via un groupe. |
| [!UICONTROL Rôles du produit] | Attribution du rôle de l’utilisateur dans le profil du produit. Actuellement, ces informations s’appliquent uniquement aux profils de produit Target. |