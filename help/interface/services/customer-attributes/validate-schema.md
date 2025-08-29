---
description: Découvrez comment valider le schéma  [!DNL Customer Attributes]  dans Adobe Experience Cloud.
solution: Experience Cloud
title: 'Validation du schéma  [!DNL Customer Attributes] '
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 776d1fd3-c733-4970-a76b-4c3c0119ee77
source-git-commit: d2244e249c7af27bc1b4fc7bfe628bc25b37f4d4
workflow-type: tm+mt
source-wordcount: '347'
ht-degree: 49%

---

# Validation du schéma

Le processus de validation vous permet de mapper les noms d’affichage et les descriptions aux attributs chargés (chaînes, entiers, nombres, etc.).

Un schéma est créé d’après ces paramètres. Le schéma permet de valider toutes les données chargées par la suite vers cette source de données. Le processus de mappage ne modifie pas les données d’origine.

>[!NOTE]
>
>La mise à jour du schéma après la validation supprime les attributs du client. Voir [Mise à jour du schéma (supprime également les attributs)](t-crs-usecase.md).

**Pour valider le schéma**

1. Dans [!DNL Customer Attributes], cliquez sur la source d’attributs à modifier.

1. Dans **[!UICONTROL Modifier le Source d’attributs du client]**, cliquez sur **[!UICONTROL Chargement de fichier]**.

1. Sur la page [!UICONTROL  Chargement de fichier et validation du schéma ], cliquez sur **[!UICONTROL Actions]** > **[!UICONTROL Afficher/Modifier le schéma]**

   ![Modification dʼun schéma](assets/actions.png)

   Sur la page [!UICONTROL Modifier le schéma], chaque ligne du schéma représente une colonne du fichier CSV chargé.

   ![Page Modifier le schéma dans Experience Cloud](assets/schema-edit.png)

**Actions**

* **[!UICONTROL Ajouter des données :]** chargez de nouvelles données d’attribut vers cette source de données.

* **[!UICONTROL Afficher/modifier le schéma :]** mappez des noms d’affichage aux données d’attribut, comme décrit à l’étape suivante.

* **[!UICONTROL Configuration FTP :]** créez votre compte FTP pour [charger vos données par FTP](t-upload-attributes-ftp.md) (facultatif).

* **[!UICONTROL Recherche d’ID :]** saisissez un ID de client (CID) issu de votre `.csv` pour rechercher les informations Experience Cloud relatives à cet ID. Cette fonction s’avère utile pour résoudre les problèmes de non-affichage des données d’attribut d’un visiteur :

   * **[!UICONTROL ECID (Experience Cloud ID) :]** s’affiche si vous utilisez le dernier service Experience Cloud ID. Si vous êtes sur le service MCID, mais qu’aucun ID n’est répertorié ici, Experience Cloud n’a reçu aucun alias pour cet ID de client. En d’autres termes, le visiteur n’a pas encore ouvert de session ou votre mise en œuvre ne transmet pas cet identifiant.

   * **[!UICONTROL CID (ID de client) :]** les attributs associés à cet CID. Si vous utilisez une prop ou une eVar pour charger les ID de client (AVID) et que les attributs sont affichés, mais pas les identifiants AVID, cela signifie que le visiteur n’a pas encore ouvert de session sur votre site.

   * **[!UICONTROL ID de visiteur Analytics (AVID) :]** s’affiche si vous utilisez une prop ou une eVar pour le chargement des ID de client. Si ces ID sont transmis à Experience Cloud, tous les ID de visiteur associés à l’ID de client que vous avez saisi s’affichent ici.
