---
description: Découvrez comment télécharger des données d’attributs du client vers Experience Cloud par FTP.
solution: Experience Cloud
title: Chargement du fichier de données d’attributs du client via FTP
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: ed9e4a8f-493a-4a0f-a87e-674c7da95b99
source-git-commit: 2f126877f6a5f090884ebe093f35e4f6d90b4df6
workflow-type: tm+mt
source-wordcount: '252'
ht-degree: 71%

---

# Facultatif – Chargement du fichier de données par FTP

Si vous ne chargez pas le fichier par glisser-déposer, vous pouvez charger les données d’attributs du client vers Experience Cloud par FTP.

Vous pouvez charger les données après avoir créé une source d’attributs du client et un compte FTP dans Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers chargés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le chargement est terminé.

>[!IMPORTANT]
>
>Consultez [Exigences liées aux fichiers de données pour le chargement des attributs du client](crs-data-file.md) avant de charger le fichier.

Les chargements de fichiers vers le site FTP des attributs du client peuvent être effectués par FTP ou SFTP :

* Vous avez besoin d’un client qui prend en charge les connexions SFTP.
* Pour utiliser le protocole SFTP, vous pouvez vous connecter en utilisant un nom d’utilisateur/mot de passe ou aucun mot de passe, comme décrit [ici](https://experienceleague.adobe.com/docs/analytics/export/ftp-and-sftp/secure-file-transfer-protocol/ftp-sftp-cert-auth.html).

**Chargement du fichier de données par FTP**

1. [Création d’une source d’attributs du client et chargement du fichier de données...](t-crs-usecase.md).

   Vérifiez que vous êtes connecté à votre site FTP à l’adresse `ftp.adobe.com/<sftpname>`.

1. Cliquez sur **[!UICONTROL Actions]** > **[!UICONTROL Chargement du fichier]**.

1. Chargez un fichier `.fin`, afin que le fichier puisse être récupéré.

   Le type de fichier `.fin` est créé par l’utilisateur et signale que le chargement est terminé. Il peut s’agir d’un fichier de bloc-notes vierge. Si, par exemple, vous chargez un fichier `crs123.csv`, vous devez aussi charger un fichier `crs123.fin`.

   Si le chargement est réussi, les deux fichiers sont déplacés dans un dossier appelé **processed** (traité).

   Reportez-vous à la section [Exigences liées aux fichiers de données pour le chargement des attributs du client](crs-data-file.md) pour consulter des informations importantes sur les noms et la structure des fichiers.
