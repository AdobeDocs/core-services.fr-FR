---
description: Découvrez comment télécharger des données d’attributs du client via FTP vers l’Experience Cloud.
solution: Experience Cloud
title: Chargement du fichier de données d’attributs du client via FTP
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: ed9e4a8f-493a-4a0f-a87e-674c7da95b99
source-git-commit: f229ec33ff721527e6a4c920ea63eabb4102935a
workflow-type: tm+mt
source-wordcount: '252'
ht-degree: 77%

---

# Facultatif – Chargement du fichier de données par FTP

Si vous ne chargez pas à l’aide du glisser-déposer, vous pouvez charger les données d’attributs du client via FTP vers l’Experience Cloud.

Vous pouvez charger les données après avoir créé une source d’attributs du client et un compte FTP dans Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers chargés sont stockés dans le dossier racine de ce compte. Les données doivent être au format `.csv`, avec un second fichier `.fin` pour indiquer que le chargement est terminé.

>[!IMPORTANT]
>
>Consultez [Exigences liées aux fichiers de données pour le chargement des attributs du client](crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) avant de charger le fichier.

Les fichiers peuvent être chargés sur le site FTP des attributs du client selon le protocole FTP ou SFTP :

* Vous avez besoin d’un client qui prend en charge les connexions SFTP.
* Pour utiliser le protocole SFTP, vous pouvez vous connecter en utilisant un nom d’utilisateur/mot de passe ou aucun mot de passe, comme décrit [ici](https://experienceleague.adobe.com/docs/analytics/export/ftp-and-sftp/secure-file-transfer-protocol/ftp-sftp-cert-auth.html?lang=fr).

**Chargement du fichier de données par FTP**

1. [Création d’une source d’attributs du client et chargement du fichier de données...](t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78).

   Vérifiez que vous êtes connecté à votre site FTP à l’adresse `ftp.adobe.com/<sftpname>`.

1. Sélectionnez **[!UICONTROL Actions]** > **[!UICONTROL Chargement du fichier]**.

1. Chargez un fichier `.fin`, afin que le fichier puisse être récupéré.

   Le type de fichier `.fin` est créé par l’utilisateur et signale que le chargement est terminé. Il peut s’agir d’un fichier de bloc-notes vierge. Si, par exemple, vous chargez un fichier [!DNL crs123.csv], vous devez aussi charger un fichier [!DNL crs123.fin].

   Si le chargement est réussi, les deux fichiers sont déplacés dans un dossier appelé **processed** (traité).

   Reportez-vous à la section [Exigences liées aux fichiers de données pour le chargement des attributs du client](crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) pour consulter des informations importantes sur les noms et la structure des fichiers.
