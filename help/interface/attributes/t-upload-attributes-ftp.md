---
description: Si vous ne transférez pas le fichier par glisser-déplacer, vous pouvez transférer les données d’attributs du client vers Experience Cloud par FTP.
keywords: attributs du client ; services principaux
seo-description: Si vous ne transférez pas le fichier par glisser-déplacer, vous pouvez transférer les données d’attributs du client vers Experience Cloud par FTP.
seo-title: Facultatif – Transfert du fichier de données par FTP
solution: Experience Cloud
title: Facultatif – Transfert du fichier de données par FTP
uuid: 5 df 565 dd-b 6 f 8-420 e -981 f -4 b 6 fc 6 f 7 d 0 e 4
translation-type: tm+mt
source-git-commit: 979b2202a70e2a5362aa86a65a17d7c4279b3a1a

---


# Facultatif – Transfert du fichier de données par FTP

Si vous ne transférez pas le fichier par glisser-déplacer, vous pouvez transférer les données d’attributs du client vers Experience Cloud par FTP.

Vous pouvez transférer les données après avoir créé une source d’attributs du client et un compte FTP dans Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers transférés sont stockés dans le dossier racine de ce compte. Les données doivent être au [!DNL .csv] format, avec un second [!DNL .fin] fichier pour indiquer que le transfert est terminé.

>[!IMPORTANT]
>
>Examinez [les exigences liées aux fichiers de données pour télécharger les attributs du client](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) avant de télécharger le fichier.


Les fichiers peuvent être transférés sur le site FTP des attributs du client selon le protocole FTP ou SFTP.

* Votre client de transfert doit prendre en charge les connexions SFTP.
* Pour utiliser le protocole SFTP, vous pouvez vous connecter en utilisant un nom d’utilisateur/mot de passe ou aucun mot de passe, comme décrit [ici](https://marketing.adobe.com/resources/help/en_US/whitepapers/ftp/?f=ftp_sftp_cert_auth).



<!-- <p>Error states - get with Matt and Dave </p> 
<p>What are the most common reasons for doing this? Retail? Do a use case example, then show an AN example. </p> 
<p>You create one FTP per attribute source. Files go to the root folder in that account. The file type .fin is user-created. (For example, upload a .csv then a .fin of the same name, which signals you have completed the upload. https://wiki.corp.adobe.com/display/marketingcloud/Customer+Record+Services#CustomerRecordServices-FileFormats (leverage for doc). Possibly link from FTP File Reqs page to a help file about naming conventions. Need a new file type page for this. Similar content here: https://marketing.adobe.com/resources/help/en_US/reference/c_general_file_structure.html and here: https://marketing.adobe.com/resources/help/en_US/whitepapers/ftp/ftp_datasources.html </p> 
<p>Drag-n-drop and zip functionality for uploads - 1/21/2015. S/b less than 100 megs for drag and drop zip file. Fin file not required for drag/drop. </p> 
<p>Preview Data - shows the last upload (?) </p> 
<p>Need a link to the "instructions" on that information icon with the image. </p> 
<p>Workflow: Drag and drop, validate schema, configure subscription, save/activate. </p> -->
**Transfert du fichier de données par FTP**

1. [Création d’une source d’attributs du client et transfert du fichier de données...](../attributes/t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78).

   Vérifiez que vous êtes connecté à votre site FTP à l&#39;adresse [!DNL ftp. adobe. com/<sftpname>].

1. Cliquez **[!UICONTROL sur Actions]** &gt; **[!UICONTROL Télécharger le fichier]**.

1. Téléchargez un [!DNL .fin] fichier, de telle sorte que votre fichier puisse être récupéré.

   Le type de fichier [!DNL .fin] est créé par l&#39;utilisateur et signale que le transfert est terminé. Il peut s’agir d’un fichier de bloc-notes vierge. Par exemple, si vous téléchargez [!DNL crs123.csv], vous téléchargez [!DNL crs123.fin]également.

   Si le transfert est réussi, les deux fichiers sont déplacés dans un dossier appelé **processed** (traité).


   Voir [Exigences liées aux fichiers de données pour le transfert des attributs du client](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) pour consulter des informations importantes sur les noms et la structure des fichiers.
