---
description: Découvrez comment valider le schéma d’attributs du client dans Adobe Experience Cloud.
solution: Experience Cloud
title: Validation du schéma d’attributs du client
uuid: 163a4dbe-d60b-4089-8ff8-65f7461fbdf7
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 776d1fd3-c733-4970-a76b-4c3c0119ee77
source-git-commit: c39672f0d8a0fd353b275b2ecd095ada1e2bf744
workflow-type: tm+mt
source-wordcount: '451'
ht-degree: 84%

---

# Validation du schéma

Le processus de validation permet de mapper les noms affichés et les descriptions aux attributs chargés (chaînes, nombres entiers, numéros, etc.). Un schéma est créé d’après ces paramètres. Il permet de valider toutes les données chargées par la suite vers cette source de données. Le processus de mappage ne modifie pas les données d’origine.

>[!NOTE]
>
>La mise à jour du schéma après la validation supprime les attributs du client. Voir [Mise à jour du schéma (supprime également les attributs)](t-crs-usecase.md).

**[!UICONTROL Source d’attributs du client]** > **[!UICONTROL Créer une source d’attributs du client]** > **[!UICONTROL Afficher/modifier le schéma]**

![Modification dʼun schéma](assets/view_edit_schema.png)

Sur la page [!UICONTROL Valider le schéma], chaque ligne du schéma représente une colonne du fichier CSV chargé.

![Page de validation du schéma dans Experience Cloud](assets/06_crs_usecase.png)

* **[!UICONTROL Ajouter des données :]** chargez de nouvelles données d’attribut vers cette source de données.

* **[!UICONTROL Afficher/modifier le schéma :]** mappez des noms d’affichage aux données d’attribut, comme décrit à l’étape suivante.

* **[!UICONTROL Configuration FTP :]** [Chargement des données par FTP](t-upload-attributes-ftp.md).

* **[!UICONTROL Recherche d’ID :]** saisissez un ID de client (CID) issu du fichier `.csv` pour rechercher les informations Experience Cloud relatives à cet ID. Cette fonction s’avère utile pour résoudre les problèmes de non-affichage des données d’attribut d’un visiteur :

   * **[!UICONTROL ECID (Experience Cloud ID) :]** s’affiche si vous utilisez le dernier service Experience Cloud ID. Si vous utilisez le service MCID mais qu’aucun ID n’est répertorié ici, l’Experience Cloud n’a reçu aucun alias pour cet ID de client. En d’autres termes, le visiteur n’a pas encore ouvert de session ou votre mise en œuvre ne transmet pas cet identifiant.

   * **[!UICONTROL ID de client (CID) :]** attributs associés à cet ID de client. Si vous utilisez une prop ou une eVar pour charger les ID de client (AVID) et que les attributs sont affichés, mais pas les identifiants AVID, cela signifie que le visiteur n’a pas encore ouvert de session sur votre site.

   * **[!UICONTROL ID de visiteur Analytics (AVID) :]** s’affiche si vous utilisez une prop ou une eVar pour le chargement des ID de client. Si ces identifiants sont transmis à l’Experience Cloud, tous les identifiants visiteur associés à l’ID de client que vous avez saisi s’affichent ici.

Vous pouvez également transférer des données par FTP après avoir créé une source d’attributs du client et un compte FTP dans Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers chargés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le chargement est terminé.

Les noms que vous appliquez aux chaînes, aux nombres entiers et aux numéros servent à créer des mesures [!DNL Analytics].

* **[!UICONTROL Attribut :]** données d’attribut lues à partir du fichier `.csv` chargé.

* **[!UICONTROL Type :]** type de données, par exemple :

   * **Chaîne :** séquence de caractères.

   * **Entiers :** nombres entiers.

   * **Nombres :** peuvent contenir jusqu’à deux décimales.

* **[!UICONTROL Nom d’affichage :]** nom convivial de l’attribut. Par exemple, vous pouvez modifier l’attribut *âge du client* en *Client depuis*.

* **[!UICONTROL Description :]** description conviviale de l’attribut.
