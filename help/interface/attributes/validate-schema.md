---
description: Le processus de validation permet de mapper les noms affichés et les descriptions aux attributs transférés (chaînes, nombres entiers, numéros, etc.). Un schéma est créé d’après ces paramètres. Il permet de valider toutes les données transférées par la suite vers cette source de données. Ce processus de mappage n’altère pas les données originales.
keywords: attributs du client ; services principaux
seo-description: Le processus de validation permet de mapper les noms affichés et les descriptions aux attributs transférés (chaînes, nombres entiers, numéros, etc.). Un schéma est créé d’après ces paramètres. Il permet de valider toutes les données transférées par la suite vers cette source de données. Ce processus de mappage n’altère pas les données originales.
seo-title: Validation du schéma
solution: Experience Cloud
title: Validation du schéma
uuid: 163 a 4 dbe-d 60 b -4089-8 ff 8-65 f 7461 fbdf 7
translation-type: tm+mt
source-git-commit: 979b2202a70e2a5362aa86a65a17d7c4279b3a1a

---


# Validation du schéma

Le processus de validation permet de mapper les noms affichés et les descriptions aux attributs transférés (chaînes, nombres entiers, numéros, etc.). Un schéma est créé d’après ces paramètres. Il permet de valider toutes les données transférées par la suite vers cette source de données. Ce processus de mappage n’altère pas les données originales.


>[!NOTE]
>
>La mise à jour du schéma après la validation supprime les attributs du client. Voir [Mise à jour du schéma (supprime également les attributs)](../attributes/t-crs-usecase.md#task_6568898BB7C44A42ABFB86532B89063C).


**[!UICONTROL Source d&#39;attributs cliente]** &gt; **[!UICONTROL Créer une source d&#39;attributs cliente]** &gt; **[!UICONTROL Afficher/modifier le schéma]**

![](assets/view_edit_schema.png)

Sur la page [!UICONTROL Valider le schéma], chaque ligne du schéma représente une colonne du fichier CSV transféré.

![](assets/06_crs_usecase.png)

* **[!UICONTROL Ajouter des données :]** Téléchargez de nouvelles données d&#39;attribut vers cette source de données.

* **[!UICONTROL Afficher/modifier le schéma :]** Mappez les noms d&#39;affichage aux données d&#39;attribut, comme décrit à l&#39;étape suivante.

* **[!UICONTROL Configuration FTP :]**[Téléchargez les données par FTP](../attributes/t-upload-attributes-ftp.md#task_591C3B6733424718A62453D2F8ADF73B).

* **[!UICONTROL Recherche d&#39;ID :]** Saisissez un ID de client (CID) de votre [!DNL .csv] part pour rechercher les informations d&#39;Experience Cloud pour l&#39;ID. Cette fonction s’avère utile pour résoudre les problèmes de non-affichage des données d’attribut d’un visiteur :

   * **[!UICONTROL MCID (Experience Cloud ID) :]** S&#39;affiche si vous utilisez le dernier service d&#39;Experience Cloud ID. Si vous avez souscrit au service MCID, mais qu’aucun identifiant n’est répertorié ici, cela signifie qu’Experience Cloud n’a reçu aucun alias pour cet ID de client. En d’autres termes, le visiteur n’a pas encore ouvert de session ou votre mise en œuvre ne transmet pas cet identifiant.

   * **[!UICONTROL CID (ID client) :]** Attributs associés à cet CID. Si vous utilisez une prop ou une eVar pour transférer les ID de client (AVID) et que les attributs sont affichés, mais pas les identifiants AVID, cela signifie que le visiteur n’a pas encore ouvert de session sur votre site.

   * **[!UICONTROL AVID (identifiant visiteur Analytics) :]** S&#39;affiche si vous utilisez une prop ou une evar pour télécharger des ID de client. Si ces identifiants sont transmis à Experience Cloud, tous les identifiants de visiteur associés à l’ID de client que vous avez saisi s’affichent ici.






Vous pouvez également transférer les données par FTP après avoir créé une source d’attributs du client et un compte FTP dans Experience Cloud. Créez un compte FTP par source d’attributs. Les fichiers transférés sont stockés dans le dossier racine de ce compte. Les données doivent être au format .csv, avec un second fichier .fin pour indiquer que le transfert est terminé.

Les noms que vous appliquez aux chaînes, entiers et numéros sont utilisés pour créer [!DNL Analytics] des mesures. Pour [plus d&#39;informations, reportez-vous à la](https://marketing.adobe.com/resources/help/en_US/reference/?f=reports_customer_attributes) [!DNL Analytics] rubrique Rapport Attributs du client.

* **[!UICONTROL Attribut :]** Données d&#39;attribut lues à partir [!DNL .csv] du fichier téléchargé.

* **[!UICONTROL Type :]** Type de données, par exemple :

   * **Chaîne :** suite de caractères.

   * **Entiers :** nombres entiers.

   * **Nombres :** peuvent contenir jusqu’à deux décimales.




* **[!UICONTROL Nom d&#39;affichage :]** Nom convivial de l&#39;attribut. Par exemple, vous pouvez changer d&#39;âge d&#39;attribut *client* en *Client depuis*.

* **[!UICONTROL Description :]** Description conviviale de l&#39;attribut.



