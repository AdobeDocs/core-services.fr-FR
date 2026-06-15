---
description: Découvrez comment valider le schéma  [!DNL Customer Attributes]  dans Adobe CX Enterprise.
solution: Experience Cloud
title: 'Validation du schéma  [!DNL Customer Attributes] '
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 776d1fd3-c733-4970-a76b-4c3c0119ee77
TQID: https://experienceleague.adobe.com/J-AaDn4HtD1bS-VCPn2XiPLVBbTnYyl5o1NpJ9HFj1g
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2:
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2:
  - id: b75843fa-0a67-4a44-a6b1-cc627b0481dc
  - id: fef08361-6ac5-460c-93fe-d063e40b6a49
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 50012e2564e88e1a6e16578e3331136c7df0cb21
workflow-type: tm+mt
source-wordcount: 345
ht-degree: 39%

---

# Valider le schéma

Le processus de validation permet de mapper les noms d’affichage et les descriptions aux attributs chargés (chaînes, nombres entiers, numéros, etc.).

Un schéma est créé d’après ces paramètres. Le schéma permet de valider toutes les données chargées par la suite vers cette source de données. Le processus de mappage ne modifie pas les données d’origine.

>[!NOTE]
>
>La mise à jour du schéma après la validation supprime les attributs du client. Voir [Mise à jour du schéma (supprime également les attributs)](t-crs-usecase.md).

**Pour valider le schéma**

1. Dans [!DNL Customer Attributes], cliquez sur la source d’attributs à modifier.

1. Dans **[!UICONTROL Modifier le Source d’attributs du client]**, cliquez sur **[!UICONTROL Chargement de fichier]**.

1. Sur la page [!UICONTROL &#x200B; Chargement de fichier et validation du schéma &#x200B;], cliquez sur **[!UICONTROL Actions]** > **[!UICONTROL Afficher/Modifier le schéma]**

   ![Modification dʼun schéma](assets/actions.png)

   Sur la page [!UICONTROL Modifier le schéma], chaque ligne du schéma représente une colonne du fichier CSV chargé.

   ![Page Modifier le schéma dans CX Enterprise](assets/schema-edit.png)

**Actions**

* **[!UICONTROL Ajouter des données :]** permet de charger de nouvelles données d’attribut dans cette source de données.

* **[!UICONTROL Afficher/Modifier le schéma :]** mappez les noms d’affichage aux données d’attribut, comme décrit dans l’étape suivante.

* **[!UICONTROL Configuration FTP :]** créez votre compte FTP pour [charger vos données par FTP](t-upload-attributes-ftp.md) (facultatif).

* **[!UICONTROL Recherche d’ID :]** saisissez un ID de client (CID) issu de votre `.csv` pour rechercher les informations CX Enterprise relatives à cet ID. Cette fonction s’avère utile pour résoudre les problèmes de non-affichage des données d’attribut d’un visiteur :

   * **[!UICONTROL ECID (CX Enterprise ID) :]** s’affiche si vous utilisez le dernier service CX Enterprise ID. Si vous êtes sur le service MCID mais qu&#39;aucun ID n&#39;est répertorié ici, CX Enterprise n&#39;a pas reçu d&#39;alias pour cet ID de client. En d’autres termes, le visiteur n’a pas encore ouvert de session ou votre mise en œuvre ne transmet pas cet identifiant.

   * **[!UICONTROL CID (ID de client) :]** les attributs associés à cet CID. Si vous utilisez une prop ou une eVar pour charger les ID de client (AVID) et que les attributs sont affichés, mais pas les identifiants AVID, cela signifie que le visiteur n’a pas encore ouvert de session sur votre site.

   * **[!UICONTROL AVID (identifiant visiteur Analytics) :]** s’affiche si vous utilisez une prop ou eVar pour charger des CID. Si ces ID sont transmis à CX Enterprise, tous les ID de visiteur associés à l’ID de client que vous avez saisi s’affichent ici.
