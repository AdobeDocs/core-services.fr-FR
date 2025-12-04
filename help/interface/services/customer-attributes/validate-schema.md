---
description: Découvrez comment valider le schéma  [!DNL Customer Attributes]  dans Adobe Experience Cloud.
solution: Experience Cloud
title: 'Validation du schéma  [!DNL Customer Attributes] '
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 776d1fd3-c733-4970-a76b-4c3c0119ee77
source-git-commit: e63dd988abba199049da2b3620eed9ebf51043d1
workflow-type: tm+mt
source-wordcount: '310'
ht-degree: 37%

---

# Valider le schéma

Le processus de validation vous permet de mapper les noms d’affichage et les descriptions aux attributs chargés (chaînes, entiers, nombres, etc.).

Un schéma est créé d’après ces paramètres. Le schéma permet de valider toutes les données chargées par la suite vers cette source de données. Le processus de mappage ne modifie pas les données d’origine.

>[!NOTE]
>
>La mise à jour du schéma après la validation supprime les attributs du client. Voir [Mise à jour du schéma (supprime également les attributs)](t-crs-usecase.md).

**Pour valider le schéma**

1. Dans [!DNL Customer Attributes], cliquez sur la source d’attributs à modifier.

1. Sur la **[!UICONTROL Edit Customer Attribute Source]**, cliquez sur **[!UICONTROL File Upload]**.

1. Sur la page [!UICONTROL File Upload and Schema Validation], cliquez sur **[!UICONTROL Actions]** > **[!UICONTROL View/Edit Schema]**

   ![Modification dʼun schéma](assets/actions.png)

   Sur la page [!UICONTROL Edit Schema], chaque ligne du schéma représente une colonne du fichier CSV chargé.

   ![Page Modifier le schéma dans Experience Cloud](assets/schema-edit.png)

**Actions**

* **[!UICONTROL Add Data:]** Chargez les nouvelles données d’attribut dans cette source de données.

* **[!UICONTROL View/Edit Schema:]** Mappez les noms d’affichage aux données d’attribut, comme décrit dans l’étape suivante.

* **[!UICONTROL FTP Setup:]** Créez votre compte FTP pour [télécharger vos données par FTP](t-upload-attributes-ftp.md) (facultatif).

* **[!UICONTROL ID Lookup:]** Saisissez un ID de client (CID) à partir de votre `.csv` pour rechercher les informations Experience Cloud relatives à cet ID. Cette fonction s’avère utile pour résoudre les problèmes de non-affichage des données d’attribut d’un visiteur :

   * **[!UICONTROL ECID (Experience Cloud ID):]** S’affiche si vous utilisez le dernier service Experience Cloud ID. Si vous êtes sur le service MCID, mais qu’aucun ID n’est répertorié ici, Experience Cloud n’a reçu aucun alias pour cet ID de client. En d’autres termes, le visiteur n’a pas encore ouvert de session ou votre mise en œuvre ne transmet pas cet identifiant.

   * **[!UICONTROL CID (customer ID):]** Attributs associés à cet ID de client. Si vous utilisez une prop ou une eVar pour charger les ID de client (AVID) et que les attributs sont affichés, mais pas les identifiants AVID, cela signifie que le visiteur n’a pas encore ouvert de session sur votre site.

   * **[!UICONTROL AVID (Analytics visitor ID):]** S’affiche si vous utilisez une prop ou eVar pour charger des CID. Si ces ID sont transmis à Experience Cloud, tous les ID de visiteur associés à l’ID de client que vous avez saisi s’affichent ici.
