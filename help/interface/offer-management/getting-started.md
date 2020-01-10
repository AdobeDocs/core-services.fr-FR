---
description: Présentation de la gestion des offres, comment y accéder et comment accorder des autorisations d’utilisateur.
seo-description: Présentation de la gestion des offres, comment y accéder et comment accorder des autorisations d’utilisateur.
seo-title: Prise en main
title: Prise en main
uuid: 28d83606-ee36-4bbf-b52d-bbe8b097f6d5
index: y
internal: n
snippet: y
translation-type: tm+mt
source-git-commit: 2f0c2eb70313c42da9e7ac1d75429ec768dea10d

---


# Gestion des offres Adobe {#section_07CBD4C01F4049A5A19781737D2DCD35}

[!UICONTROL La gestion des offres permet la création et la gestion des offres ainsi que la prise de décisions automatisée relatives aux offres sur l’ensemble des canaux d’Experience Cloud. ] Il sert de catalogue d’offres central dans lequel vous pouvez associer des règles d’éligibilité et plusieurs éléments de contenu à chaque _objet d’offre._ Vous pouvez publier ces offres sur plusieurs canaux et emplacements et proposer la meilleure offre pour chaque client à chaque interaction. Ces fonctionnalités vous permettent de fournir en permanence la meilleure offre à vos clients d’une manière cohérente et coordonnée au sein de leur expérience.

Les avantages incluent :

* Amélioration des performances des campagnes par courrier électronique en proposant des offres plus personnalisées dans vos courriels.
* Flux de travaux amélioré : Plutôt que de créer plusieurs diffusions ou campagnes, les équipes marketing peuvent améliorer le flux de travail en créant une seule diffusion et modifier les offres dans différentes parties du modèle.
* Permet de créer, de gérer et d’approuver des offres en dehors du processus de campagne par courrier électronique Adobe Campaign Standard.
* Contrôle du nombre d’affichages d’une offre dans les campagnes par courrier électronique et les clients.

## Accès aux offres {#task_DEB6F6A4B6E04E15AD3E1817D700688E}

Découvrez comment accéder à la gestion des offres.

1. Contactez Adobe pour l’approvisionnement.

   Une organisation Experience Cloud doit avoir une instance de Campaign Standard. Adobe peut également activer une fonction dans Campaign qui vous permet de créer des activités d’offre dans des courriers électroniques.

1. Dans le menu de navigation d’Experience Cloud, cliquez sur le sélecteur de solutions, puis sur **[!UICONTROL Offres]**.

   ![](assets/access-offers.png)

   Pour accéder aux offres dans Campaign Standard, cliquez sur l’icône **[!UICONTROL Offres]**dans un modèle de courrier électronique.

   ![](assets/campaign-add-offer.png)

   Une fois que vous avez vu ces deux éléments dans Marketing Cloud et dans votre compte Adobe Campaign, vous avez été configuré avec les fonctionnalités nécessaires pour commencer.

## Utilisateurs et autorisations {#concept_81F0ABB07ACC49E099EDCD87AA0436E1}

Les administrateurs peuvent ajouter des utilisateurs à la gestion des [!UICONTROL offres] dans la Console d’administration. Une invitation par courrier électronique est envoyée au nouvel utilisateur avec des instructions pour accéder au produit. Une fois qu’un utilisateur est ajouté, vous pouvez ajuster ses autorisations, ce qui lui donne accès à différentes fonctionnalités dans l’ensemble de la gestion des [!UICONTROL offres].

Pour plus d’informations sur l’utilisation de la Console d’administration, voir la documentation [de la Console d’administration](https://helpx.adobe.com/enterprise/help/aedash.html)HelpX.

Dans Campaign, les utilisateurs standard ont automatiquement le droit d’incorporer des activités d’offre dans un modèle de courrier électronique.

>[!NOTE]
>
>Pour la version bêta, il n’existe aucune autorisation en place. Chaque utilisateur ajouté aux offres aura un accès complet à toutes les fonctionnalités de la gestion des [!UICONTROL offres].

## Création d’un profil de produit pour la gestion des offres

Un profil de produit est un ensemble d’autorisations pouvant être combinées pour créer un rôle utilisateur au sein d’un produit. Les profils de produit doivent être créés et les utilisateurs ou les groupes sont ensuite affectés à eux.

1. Accédez à la console d’ [administration Adobe](https://adminconsole.adobe.com/).

1. Cliquez sur votre processus (**[!UICONTROL Offres]**, par exemple).

1. Sur la page [!UICONTROL Profils] de produits, cliquez sur **[!UICONTROL Nouveau profil]**.

1. Entrez le nom et la description du profil du produit, puis cliquez sur **[!UICONTROL Terminé]**.

1. Cliquez sur **[!UICONTROL Enregistrer]**.

### Permissions - définitions

Description des autorisations de gestion des [!UICONTROL offres] disponibles pour les profils de produit dans la console [!UICONTROL d’]administration.

| Élément | Description |
|--- |--- |
| Création et modification d’offres | Permet aux utilisateurs d’accéder à la création et à la modification d’offres dans la gestion des [!UICONTROL offres]. Si un utilisateur dispose de cette autorisation mais pas de l’autorisation _Approuver les offres_ , il peut uniquement créer une offre et l’envoyer pour approbation. Il ne peut pas être utilisé dans une activité d’offre tant qu’il n’a pas été approuvé. |
| Suppression d’offres | Permet aux utilisateurs d’accéder à la suppression des offres. |
| Approuver les offres | Permet aux utilisateurs d’approuver une offre. Les utilisateurs disposant de cette autorisation voient une notification lorsqu’ils se connectent à Gestion des offres si des offres doivent être approuvées. Si un utilisateur dispose à la fois de cette autorisation et de l’autorisation de _créer et de modifier des offres_ , il peut créer et approuver des offres dans un seul processus. |
| Archiver les offres | Permet aux utilisateurs d’archiver une offre. |
| Création de libellés | Permet aux utilisateurs de créer des étiquettes, à la fois dans l’onglet Etiquette et dans la ligne de l’écran de création d’offres. Sans cette autorisation, un utilisateur ne pourra sélectionner des offres précréées que lors de la création d’une offre. |
| Modifier les étiquettes | Permet à l’utilisateur de modifier des libellés dans l’onglet Etiquettes. |
| Suppression d’étiquettes | Permet à l’utilisateur de supprimer des libellés dans l’onglet Etiquettes. |
| Créer des emplacements | Permet à l’utilisateur de créer des emplacements dans l’onglet Emplacements. |
| Modifier les emplacements | Permet à l’utilisateur de modifier des emplacements dans l’onglet Emplacements. |
| Supprimer les emplacements | Permet à l’utilisateur de supprimer des emplacements dans l’onglet Emplacements. **** Remarque : Seuls les emplacements non utilisés dans une activité d’offre peuvent être supprimés. |