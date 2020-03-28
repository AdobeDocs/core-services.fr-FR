---
description: Présentation de  Gestion des  de, comment y accéder et comment accorder des autorisations d’utilisateur.
seo-description: Présentation de  Gestion des  de, comment y accéder et comment accorder des autorisations d’utilisateur.
seo-title: Prise en main
title: Prise en main
uuid: 28d83606-ee36-4bbf-b52d-bbe8b097f6d5
index: y
internal: n
snippet: y
translation-type: tm+mt
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e

---


# Adobe  Gestion des {#section_07CBD4C01F4049A5A19781737D2DCD35}

[!UICONTROL Gestion des]  de fournit des services de création, de gestion et de prise de décision de  de à l’échelle de tous les d’Experience Cloud. Il sert de central où vous pouvez associer des  de et plusieurs éléments de contenu à chaque _objet dede ._ Vous pouvez publier ces   sur les et les emplacements, et servir le meilleur pour chaque client à chaque interaction. Ces fonctionnalités vous permettent de fournir en permanence le meilleur  de  à vos clients d’une manière cohérente et coordonnée à travers leur expérience.

Les avantages incluent :

* Amélioration des performances des campagnes par courrier électronique en offrant des  plus personnalisés  dans vos courriels.
* Flux de travaux amélioré : Plutôt que de créer plusieurs  ou campagnes, les équipes marketing peuvent améliorer le flux de travail en créant un seul  de et en faisant varier le de la  dans différentes parties du modèle.
* Permet de créer, de gérer et d’approuver   en dehors du flux de travail des campagnes par courrier électronique de la norme .
* Contrôle du nombre d’affichages d’un  de dans les campagnes par courrier électronique et les clients.

## Accès aux  {#task_DEB6F6A4B6E04E15AD3E1817D700688E}

Découvrez comment accéder à   Gestion des.

1. Contactez Adobe pour l’approvisionnement.

   Une organisation Experience Cloud doit avoir une instance de Campaign Standard. Adobe peut également activer une fonction dans Campaign qui vous permet de créer  dede dans des courriers électroniques.

1. Dans le menu de navigation d’Experience Cloud, cliquez sur le sélecteur de solutions, puis sur ****.

   ![](assets/access-offers.png)

   Pour accéder à   de dans Campaign Standard, cliquez sur l’icône de **[!UICONTROL de]** dans un modèle de courrier électronique.

   ![](assets/campaign-add-offer.png)

   Une fois que vous avez vu ces deux éléments dans Marketing Cloud et dans votre compte Adobe Campaign , vous avez été configuré avec les fonctionnalités nécessaires pour commencer.

## Users and Permissions {#concept_81F0ABB07ACC49E099EDCD87AA0436E1}

Les administrateurs peuvent ajouter des utilisateurs à [!UICONTROL Gestion]  des dans la Console d’administration. Une invitation par courrier électronique est envoyée au nouvel utilisateur avec des instructions sur l’accès au produit. Une fois qu’un utilisateur est ajouté, vous pouvez ajuster ses autorisations, lui donnant accès à différentes fonctionnalités dans [!UICONTROL gestion]des.

Pour plus d’informations sur l’utilisation de la Console d’administration, voir la documentation [de la Console d’administration](https://helpx.adobe.com/enterprise/help/aedash.html)HelpX.

Dans Campaign, les utilisateurs standard ont automatiquement le droit d’incorporer  dede données dans un modèle de courrier électronique.

>[!NOTE]
>
>Pour la version bêta, il n’existe aucune autorisation en place. Chaque utilisateur qui a été ajouté à   de aura un accès complet à toutes les fonctionnalités de la gestion des .

## Création d’un de produits pour  Gestion des 

Un  de produit est un ensemble d’autorisations pouvant être combinées pour créer un rôle utilisateur dans un produit. Les  de produits doivent être créées et les utilisateurs ou groupes sont ensuite affectés à ces derniers.

1. Accédez à la console d’ [administration Adobe](https://adminconsole.adobe.com/).

1. Cliquez sur votre processus (****, par exemple).

1. Dans la page [!UICONTROL du] de produits, cliquez sur **[!UICONTROL Nouveau]**.

1. Tapez le nom et la description du de produits, puis cliquez sur **[!UICONTROL Terminé]**.

1. Cliquez sur **[!UICONTROL Enregistrer]**.

### Permissions - définitions

Description des autorisations de gestion [!UICONTROL des  de] disponibles pour les de produits  dans la console d’administration.

| Elément | Description |
|--- |--- |
| Créer et modifier   de | Permet aux utilisateurs d’accéder à la création et à la modification de   dans la gestion des . Si un utilisateur dispose de cette autorisation, mais pas de l’autorisation d’ _approbation de_ , il peut uniquement créer un  et l’envoyer pour approbation. Il ne peut pas être utilisé dans un     tant qu’il n’a pas été approuvé. |
| Supprimer   | Donne aux utilisateurs l’accès  supprimer . |
| Valider des offres | Permet aux utilisateurs d’approuver un  . Les utilisateurs disposant de cette autorisation verront une notification lorsqu’ils se connecteront à   Management si l’un des  doit être approuvé. Si un utilisateur dispose à la fois de cette autorisation et de l’autorisation de _créer et de modifier_ autorisation de, il peut créer et approuver  dans un seul processus. |
| Archiver   | Permet aux utilisateurs d’archiver un  . |
| Création de libellés | Permet aux utilisateurs de créer des libellés, à la fois dans l’onglet Etiquette et en ligne dans l’écran de création de  de . Sans cette autorisation, l’utilisateur ne pourra sélectionner de   précréés  que lors de la création d’un . |
| Modification des libellés | Permet à l’utilisateur de modifier des libellés dans l’onglet Etiquettes. |
| Suppression d’étiquettes | Permet à l’utilisateur de supprimer des libellés dans l’onglet Etiquettes. |
| Créer des emplacements | Permet à l’utilisateur de créer des emplacements dans l’onglet Emplacements. |
| Modifier les emplacements | Permet à l’utilisateur de modifier des emplacements dans l’onglet Emplacements. |
| Supprimer les emplacements | Permet à l’utilisateur de supprimer des emplacements dans l’onglet Emplacements. **Remarque :** Seuls les emplacements non utilisés dans un   peuvent être supprimés. |