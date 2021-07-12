---
description: Découvrez comment valider le schéma d’attributs du client dans Adobe Experience Cloud.
keywords: Attributs du client ; services Experience Cloud
solution: Experience Cloud
title: 'Validation du schéma d’attribut du client '
uuid: 163a4dbe-d60b-4089-8ff8-65f7461fbdf7
feature: Attributs du client
topic: Administration
role: Admin
level: Experienced
exl-id: 776d1fd3-c733-4970-a76b-4c3c0119ee77
source-git-commit: 1fb1abc7311573f976f7e6b6ae67f60ada10a3e7
workflow-type: tm+mt
source-wordcount: '453'
ht-degree: 82%

---

# Validation du schéma

Le processus de validation permet de mapper les noms affichés et les descriptions aux attributs transférés (chaînes, nombres entiers, numéros, etc.). Un schéma est créé d’après ces paramètres. Il permet de valider toutes les données transférées par la suite vers cette source de données. Le processus de mappage ne modifie pas les données d’origine.

>[!NOTE]
>
>La mise à jour du schéma après la validation supprime les attributs du client. Voir [Mise à jour du schéma (supprime également les attributs)](t-crs-usecase.md#task_6568898BB7C44A42ABFB86532B89063C).

**[!UICONTROL Source d’attributs du client]** > **[!UICONTROL Créer une source d’attributs du client]** > **[!UICONTROL Afficher/modifier le schéma]**

![](assets/view_edit_schema.png)

Sur la page [!UICONTROL Valider le schéma], chaque ligne du schéma représente une colonne du fichier CSV transféré.

![](assets/06_crs_usecase.png)

* **[!UICONTROL Ajouter des données :]** transférez de nouvelles données d’attribut vers cette source de données.

* **[!UICONTROL Afficher/modifier le schéma :]** mappez des noms d’affichage aux données d’attribut, comme décrit à l’étape suivante.

* **[!UICONTROL Configuration FTP :]**[ transférez les données par FTP](t-upload-attributes-ftp.md#task_591C3B6733424718A62453D2F8ADF73B).

* **[!UICONTROL Recherche d’ID :]** saisissez un ID de client (CID) issu du fichier `.csv` pour rechercher les informations Experience Cloud relatives à cet ID. Cette fonction s’avère utile pour résoudre les problèmes de non-affichage des données d’attribut d’un visiteur :

   * **[!UICONTROL ECID (Experience Cloud ID) :]** s’affiche si vous utilisez le dernier service Experience Cloud ID. Si vous avez souscrit au service MCID, mais qu’aucun identifiant n’est répertorié ici, cela signifie qu’Experience Cloud n’a reçu aucun alias pour cet ID de client. En d’autres termes, le visiteur n’a pas encore ouvert de session ou votre mise en œuvre ne transmet pas cet identifiant.

   * **[!UICONTROL ID de client (CID) :]** attributs associés à cet ID de client. Si vous utilisez une prop ou une eVar pour transférer les ID de client (AVID) et que les attributs sont affichés, mais pas les ID AVID, cela signifie que le visiteur n’a pas encore ouvert de session sur votre site.

   * **[!UICONTROL ID de visiteur Analytics (AVID) :]** s’affiche si vous utilisez une prop ou une eVar pour le transfert des ID de client. Si ces ID sont transmis à Experience Cloud, tous les ID de visiteur associés à l’ID de client que vous avez saisi s’affichent ici.

Vous pouvez également transférer des données par FTP après avoir créé une source d’attributs du client et un compte FTP dans l’Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers transférés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le transfert est terminé.

Les noms que vous appliquez aux chaînes, aux nombres entiers et aux numéros servent à créer des mesures [!DNL Analytics]. 

* **[!UICONTROL Attribut :]** données d’attribut lues à partir du fichier `.csv` transféré.

* **[!UICONTROL Type :]** type de données, par exemple :

   * **Chaîne :** séquence de caractères.

   * **Entiers :** nombres entiers.

   * **Nombres :** peuvent contenir jusqu’à deux décimales.

* **[!UICONTROL Nom d’affichage :]** nom convivial de l’attribut. Par exemple, vous pouvez remplacer un attribut *âge du client* par *Client depuis*.

* **[!UICONTROL Description :]** description conviviale de l’attribut.
