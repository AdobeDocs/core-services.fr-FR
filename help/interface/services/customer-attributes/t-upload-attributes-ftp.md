---
description: Découvrez comment télécharger des données d’attributs du client via FTP vers CX Enterprise.
solution: Experience Cloud
title: Chargement du fichier de données d’attributs du client via FTP
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: ed9e4a8f-493a-4a0f-a87e-674c7da95b99
TQID: https://experienceleague.adobe.com/jI2dWXMmrrWxceVi-sZtzF5cTF11iy4d7QKkx71vF-I
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
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 50012e2564e88e1a6e16578e3331136c7df0cb21
workflow-type: tm+mt
source-wordcount: 394
ht-degree: 51%

---

# Chargement du fichier de données par FTP (facultatif)

Si vous ne chargez pas le fichier par glisser-déposer, vous pouvez charger les données d’attributs du client vers l’entreprise CX par FTP.

Vous pouvez charger les données après avoir créé une source d’attributs du client et un compte FTP dans CX Enterprise. Créez un compte FTP par source d’attributs. Les fichiers chargés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le chargement est terminé.

>[!IMPORTANT]
>
>Consultez [Fichiers et sources de données d’attributs du client](crs-data-file.md) avant de télécharger le fichier.

Les chargements de fichiers vers le site FTP des attributs du client peuvent être effectués par FTP ou SFTP :

* Vous avez besoin d’un client qui prend en charge les connexions SFTP.
* Pour utiliser le protocole SFTP, vous pouvez vous connecter en utilisant un nom d’utilisateur/mot de passe ou aucun mot de passe, comme décrit [ici](https://experienceleague.adobe.com/docs/analytics/export/ftp-and-sftp/secure-file-transfer-protocol/ftp-sftp-cert-auth.html?lang=fr).

**Chargement du fichier de données par FTP**

1. [Création d’une source d’attributs du client et chargement du fichier de données...](t-crs-usecase.md).

   Vérifiez que vous êtes connecté à votre site FTP à l’adresse `ftp.adobe.com/<sftpname>`.

1. Cliquez sur **[!UICONTROL Actions]** > **[!UICONTROL Chargement de fichier]**.

1. Chargez un fichier `.fin`, afin que le fichier puisse être récupéré.

   Le type de fichier `.fin` est créé par l’utilisateur et signale que le chargement est terminé. Il peut s’agir d’un fichier de bloc-notes vierge. Si, par exemple, vous chargez un fichier `crs123.csv`, vous devez aussi charger un fichier `crs123.fin`.

   Si le chargement est réussi, les deux fichiers sont déplacés dans un dossier appelé **processed** (traité).

   Voir [Fichiers et sources de données d’attributs du client](crs-data-file.md) pour obtenir des informations importantes sur les noms et la structure des fichiers.

## Configuration d’un compte FTP

Configurez un compte FTP par source d’attributs.

Sur la page [!UICONTROL &#x200B; Chargement de fichier et validation de schéma &#x200B;], cliquez sur **[!UICONTROL Configuration FTP]**.

![Modification dʼun schéma](assets/ftp-account.png)

Les fichiers chargés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le chargement est terminé.

Les noms que vous appliquez aux chaînes, aux nombres entiers et aux numéros servent à créer des mesures [!DNL Analytics].

* **[!UICONTROL attribute:]** données d’attribut lues à partir du fichier `.csv` chargé.

* **[!UICONTROL Type :]** type de données, par exemple :

   * **Chaîne :** séquence de caractères.

   * **Entiers :** nombres entiers.

   * **Nombres :** peuvent contenir jusqu’à deux décimales.

* **[!UICONTROL Nom d’affichage :]** nom convivial de l’attribut. Par exemple, vous pouvez modifier l’attribut *âge du client* en *client depuis*.

* **[!UICONTROL Description :]** description conviviale de l’attribut.

