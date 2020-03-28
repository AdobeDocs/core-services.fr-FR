---
description: Découvrez l’outil d’administration d’Experience Cloud pour  un pouvant être trié et filtré pour tous les utilisateurs d’Experience Cloud.
keywords: core services
seo-description: Découvrez l’outil d’administration d’Experience Cloud pour  un pouvant être trié et filtré pour tous les utilisateurs d’Experience Cloud.
seo-title: ' utilisateurs et détails utilisateur d’Experience Cloud'
solution: Experience Cloud
title: ' utilisateurs et détails utilisateur d’Experience Cloud '
index: true
translation-type: tm+mt
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e

---


#  utilisateurs d’Experience Cloud dans l’outil d’administration

Les administrateurs peuvent  un pouvant être trié et filtré de tous les utilisateurs d’Experience Cloud et de leurs détails dans l’outil d’administration. Les détails de l’utilisateur incluent l’accès au produit d’un utilisateur, ses rôles et les informations de dernier accès. (**Remarque :** La gestion des utilisateurs et des produits est configurée dans la Console [d’administration](admin-getting-started.md).)

1. Connectez-vous à `https://experience.adobe.com/.`

   ![](assets/admin-tool.png)

1. Dans la page d’accueil d’Experience Cloud, cliquez sur Outil **[!UICONTROL d’administration.]**

   (Vous pouvez également remplacer _accueil_ par _admin._ dans l’URL de  du)

   La page [!UICONTROL Utilisateurs] s’affiche.

## Page Utilisateurs

Cette page affiche le  complet des utilisateurs ayant accès à Experience Cloud dans votre entreprise. Il fournit des informations sur les droits de la solution et la dernière connexion. Vous pouvez rechercher, trier et filtrer les  personnalisées du utilisateur .

![](assets/admin-tool-users.png)

| Elément | Description |
|---|---|
| [!UICONTROL Nom] | Prénom et nom de famille de l’utilisateur. Vous pouvez trier cette colonne de A à Z et de Z à A.  Cliquez sur le nom d’un utilisateur pour en savoir plus sur lui. |
| [!UICONTROL Courriel] | Adresse électronique associée à l’utilisateur. Vous pouvez trier les colonnes A->Z, Z->A. |
| [!UICONTROL Type d’ID] | Type d’identité du compte de l’utilisateur. Le filtre peut être appliqué  types d’ID spécifiques à l’. Voir [Gestion des types](https://helpx.adobe.com/enterprise/using/identity.html) d’identité pour plus d’informations. |
| [!UICONTROL Solutions] | Résumé des solutions Experience Cloud auxquelles l’utilisateur peut accéder. Vous pouvez appliquer des  pour restreindre le des utilisateurs disposant d’un accès aux solutions spécifiques. |
| [!UICONTROL Dernière identification] | Heure et date de la dernière connexion de l’utilisateur à Experience Cloud. Cette colonne peut être triée par date ascendante ou descendante. <br> **Important :** A compter du 13 janvier 2020, les dernières données de connexion de l’utilisateur seront conservées pendant 365 jours. Ces informations ont pour but d’afficher le  de connexion actuel  dans Experience Cloud et non une recommandation d’action sur les comptes inactifs avant le 13 janvier 2020. |

## Personnaliser le utilisateur  le 

Vous pouvez rechercher, trier ou filtrer les colonnes afin de personnaliser le utilisateur.

* Rechercher des utilisateurs par nom ou adresse électronique. Les recherches correspondent à la chaîne de texte saisie.
* Triez une colonne par valeurs ascendantes ou décroissantes. Cela s’applique aux colonnes [!UICONTROL Nom,] [!UICONTROL Adresse électronique et] Dernière connexion  .
* Cliquez sur l’icône **[!UICONTROL Filtrer par]** pour appliquer plusieurs  à des utilisateurs  avec des critères spécifiques. Lorsque plusieurs de filtre sont appliqués, les recherches contiennent la `AND` solution TYPE `AND` d’ID de domaine de courriel.

| Elément | Description |
|---------|----------|
| [!UICONTROL Filtre de domaine] de courriel | Recherchez des chaînes de caractères dans la colonne Courriel pour restreindre les résultats à un ou plusieurs domaines. Ajouter plusieurs  en appuyant sur la touche Entrée après chaque terme de recherche |
| [!UICONTROL Filtre Type] d’ID | Choisissez parmi les types d’ID disponibles. Plusieurs types d’ID peuvent être utilisés comme filtre. |
| [!UICONTROL Filtre de solution] | Choisissez parmi les solutions disponibles. Les de plusieurs solutions  recherchent des résultats contenant la solution 1 `OR` Solution 2. |

##  des informations sur l’utilisateur

Sur la page [!UICONTROL Utilisateurs] , pour  les détails d’un utilisateur, cliquez sur son adresse électronique.

![](assets/admin-tool-user-details.png)

Un détaillé de chaque utilisateur affiche des informations importantes sur l’accès aux solutions de l’utilisateur, les rôles d’administrateur et de produit, ainsi que les dernières informations accessibles.

## A propos de la section

Cette section présente un résumé du compte utilisateur, notamment :

* Avatar de l’utilisateur et badge d’administrateur système (le cas échéant)
* Nom
* Courriel
* Nom d’utilisateur (les comptes d’ID fédérés peuvent avoir des noms d’utilisateur différents de l’adresse électronique)
* [Type d’ID](https://helpx.adobe.com/enterprise/using/identity.html)
* Country
* Dernière identification

## Résumé des solutions

Cette section présente un résumé des solutions Experience Cloud auxquelles l’utilisateur peut accéder. Inclut le rôle d’administration du produit, le cas échéant.

##  d’accès aux produits détaillés

Cette section présente un  complet de tous les membres de de produits pour l’utilisateur.

| Elément | Description |
|---------|----------|
| [!UICONTROL Produit] | Nom du produit associé au  de produit. |
| [!UICONTROL Instance] | Nom de l’instance (par exemple, de connexion ou locataire) associée au de produit et de produit. |
| [!UICONTROL de produits] | Nom unique du de produits. |
| [!UICONTROL Attribué par groupe] | Nom du groupe d’utilisateurs qui associe l’utilisateur à un  de produit. Les résultats vides indiquent que l’utilisateur a été affecté directement au de produits, et non par l’intermédiaire d’un groupe. |
| [!UICONTROL Rôles du produit] | Attribution du rôle de l’utilisateur dans le  de produit. Actuellement, ces informations ne s’appliquent qu’aux de produits Adobe  . |
