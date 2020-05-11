---
description: Si vous ne transférez pas le fichier par glisser-déplacer, vous pouvez transférer les données d’attributs du client vers Experience Cloud par FTP.
keywords: Customer Attributes;core services
seo-description: Si vous ne transférez pas le fichier par glisser-déplacer, vous pouvez transférer les données d’attributs du client vers Experience Cloud par FTP.
seo-title: Facultatif – Transfert du fichier de données par FTP
solution: Experience Cloud
title: Facultatif – Transfert du fichier de données par FTP
uuid: 5df565dd-b6f8-420e-981f-4b6fc6f7d0e4
translation-type: tm+mt
source-git-commit: 0bc7032d0052ba03beac1140dfbfd630e1802bfd
workflow-type: tm+mt
source-wordcount: '294'
ht-degree: 68%

---


# Facultatif – Transfert du fichier de données par FTP

Si vous ne transférez pas le fichier par glisser-déplacer, vous pouvez transférer les données d’attributs du client vers Experience Cloud par FTP.

Vous pouvez transférer les données après avoir créé une source d’attributs du client et un compte FTP dans Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers transférés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le transfert est terminé.

>[!IMPORTANT]
>
>Review [Data file requirements for uploading Customer Attributes](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) before uploading the file.

Les téléchargements de fichiers vers le site FTP Attributs du client peuvent être effectués par FTP ou SFTP.

* Vous avez besoin d’un client qui prend en charge les connexions SFTP.
* Vous pouvez vous connecter au protocole SFTP en utilisant soit le nom d’utilisateur/mot de passe, soit l’absence de mot de passe, comme décrit [ici](https://docs.adobe.com/help/en/analytics/export/ftp-and-sftp/secure-file-transfer-protocol/ftp-sftp-cert-auth.html).

**Transfert du fichier de données par FTP**

1. [Création d’une source d’attributs du client et transfert du fichier de données...](../attributes/t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78).

   Vérifiez que vous êtes connecté à votre site FTP à l’adresse [!DNL ftp.adobe.com/<sftpname>].

1. Click **[!UICONTROL Actions]** > **[!UICONTROL File Upload]**.

1. Transférez un fichier `.fin`, afin que le fichier puisse être récupéré.

   Le type de fichier `.fin` est créé par l’utilisateur et signale que le transfert est terminé. Il peut s’agir d’un fichier de bloc-notes vierge. Si, par exemple, vous transférez un fichier [!DNL crs123.csv], vous devez aussi transférer un fichier [!DNL crs123.fin].

   Si le téléchargement aboutit, les deux fichiers sont déplacés dans un dossier appelé **traité**.

   See [Data file requirements for uploading Customer Attributes](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) for important information about file names and structure.
