---
description: Découvrez comment transférer les données dʼattributs du client vers Experience Cloud via FTP.
solution: Experience Cloud
title: Transfert du fichier de données d’attributs du client via FTP
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: ed9e4a8f-493a-4a0f-a87e-674c7da95b99
source-git-commit: eb2ad8a8255915be47b6002a78cc810b522170d2
workflow-type: tm+mt
source-wordcount: '264'
ht-degree: 100%

---

# Facultatif – Transfert du fichier de données par FTP

Si vous ne transférez pas le fichier par glisser-déposer, vous pouvez transférer les données d’attributs du client vers Experience Cloud via FTP.

Vous pouvez transférer les données après avoir créé une source d’attributs du client et un compte FTP dans Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers transférés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le transfert est terminé.

>[!IMPORTANT]
>
>Consultez [Exigences liées aux fichiers de données pour le transfert des attributs du client](crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) avant de transférer le fichier.

Les fichiers peuvent être transférés sur le site FTP des attributs du client selon le protocole FTP ou SFTP :

* Vous avez besoin d’un client qui prend en charge les connexions SFTP.
* Pour utiliser le protocole SFTP, vous pouvez vous connecter en utilisant un nom d’utilisateur/mot de passe ou aucun mot de passe, comme décrit [ici](https://experienceleague.adobe.com/docs/analytics/export/ftp-and-sftp/secure-file-transfer-protocol/ftp-sftp-cert-auth.html?lang=fr).

**Transfert du fichier de données par FTP**

1. [Création d’une source d’attributs du client et transfert du fichier de données...](t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78).

   Vérifiez que vous êtes connecté à votre site FTP à l’adresse `ftp.adobe.com/<sftpname>`.

1. Sélectionnez **[!UICONTROL Actions]** > **[!UICONTROL Chargement du fichier]**.

1. Transférez un fichier `.fin`, afin que le fichier puisse être récupéré.

   Le type de fichier `.fin` est créé par l’utilisateur et signale que le transfert est terminé. Il peut s’agir d’un fichier de bloc-notes vierge. Si, par exemple, vous transférez un fichier [!DNL crs123.csv], vous devez aussi transférer un fichier [!DNL crs123.fin].

   Si le transfert est réussi, les deux fichiers sont déplacés dans un dossier appelé **processed** (traité).

   Reportez-vous à la section [Exigences liées aux fichiers de données pour le transfert des attributs du client](crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) pour consulter des informations importantes sur les noms et la structure des fichiers.
