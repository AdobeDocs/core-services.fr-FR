---
description: Créez la source d’attributs du client et transférez les données.
keywords: Customer Attributes;core services
seo-description: Créez la source d’attributs du client et transférez les données.
seo-title: Création d’une source d’attributs du client et transfert du fichier de données
solution: Experience Cloud
title: Création d’une source d’attributs du client et transfert du fichier de données
uuid: 53dca789-9a91-4385-839d-c9d1aa36b9be
translation-type: tm+mt
source-git-commit: ed423c20afaefe1bd0c463d8400e772916709ba7
workflow-type: tm+mt
source-wordcount: '1177'
ht-degree: 97%

---


# Création d’une source d’attributs du client et transfert du fichier de données

Création d’une source d’attributs du client (fichiers CSV et FIN) et transfert des données. Vous pouvez activer la source de données lorsque vous êtes prêt. Une fois que la source de données est active, partagez les données d’attributs avec Analytics et Target.

## Workflow Attributs du client {#concept_BF0AF88E9EF841219ED4D10754CD7154}

![](assets/crs.png)

1. [Création d’un fichier de données](../attributes/t-crs-usecase.md#task_B5FB8C0649374C7A94C45DCF2878EA1A)
1. [Création d’une source d’attributs et transfert du fichier de données](../attributes/t-crs-usecase.md#task_09DAC0F2B76141E491721C1E679AABC8)
1. [Validation du schéma](../attributes/t-crs-usecase.md#task_09DAC0F2B76141E491721C1E679AABC8)
1. [Configurez les abonnements et activez la source d’attributs](../attributes/t-crs-usecase.md#task_1ACA21198F0E46A897A320C244DFF6EA)

Une fois la source de données active, vous pouvez accomplir ce qui suit :

* [Utilisation des attributs du client dans Adobe Analytics](../attributes/t-crs-usecase.md#task_7EB0680540CE4B65911B2C779210915D)
* [Utilisation des attributs du client dans Adobe Target](../attributes/t-crs-usecase.md#task_FC5F9D9059114027B62DB9B1C7D9E257)

>[!IMPORTANT]
>
>Pour accéder à cette fonction, les utilisateurs doivent être affectés au profil de produits Attributs du client (Attributs du client – Accès par défaut). Accédez à **[!UICONTROL Administration]** > **[!UICONTROL Admin Console]** > **[!UICONTROL Produits]**. Si les *Attributs du client* sont répertoriés comme l’un des [!UICONTROL profils de produits], vous êtes prêt à commencer. Les utilisateurs membres du groupe Attributs du client ont accès au menu [!UICONTROL Attributs du client] sur le côté gauche de l’interface d’Experience Cloud.
>
>Pour utiliser la fonction Attributs du client, les utilisateurs doivent également appartenir à des groupes au niveau de la solution (Analytics ou [!DNL Target]).

Voir [Gestion des utilisateurs et des produits Experience Cloud](../admin-getting-started/admin-getting-started.md#task_3295A85536BF48899A1AB40D207E77E9).

## Création d’un fichier de données {#task_B5FB8C0649374C7A94C45DCF2878EA1A}

Ces données des clients de l’entreprise proviennent de votre système de gestion de la relation client. Elles peuvent inclure des données sur les abonnés pour les produits, y compris les ID des membres, les produits autorisés, les produits les plus souvent utilisés, etc.

1. Créez un `.csv`.

   >[!NOTE]
   >
   >Plus loin dans ce processus, vous allez faire glisser et déplacer le fichier `.csv` pour transférer le fichier. Cependant, si vous effectuez un [transfert par FTP](../attributes/t-upload-attributes-ftp.md#task_591C3B6733424718A62453D2F8ADF73B), vous devez également créer un fichier `.fin` du même nom que le fichier `.csv`.

   Exemple de fichier de données du client d’entreprise :

   ![](assets/01_crs_usecase.png)

1. Avant de poursuivre, passez en revue les informations importantes dans [Exigences liées aux fichiers de données](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) avant de télécharger le fichier.
1. [Créez une source d’attributs du client et transférez les données](../attributes/t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78), comme décrit ci-dessous.

## Création d’une source d’attributs et transfert du fichier de données {#task_09DAC0F2B76141E491721C1E679AABC8}

Effectuez les étapes ci-après sur la page Créer une source d’attributs cliente dans Experience Cloud.

>[!IMPORTANT]
>
>Lorsque vous créez, modifiez ou supprimez une source d’attributs du client, la synchronisation des identifiants avec la nouvelle source de données peut prendre jusqu’à une heure. Pour créer ou modifier des sources d’attributs du client, vous devez disposer des droits d’administration dans Audience Manager. Contactez le service à la clientèle ou le service d’assistance clientèle d’Audience Manager pour obtenir des droits d’administration.

1. Dans [!DNL Experience Cloud], cliquez sur l’icône ![](assets/menu-icon.png) Menu.
1. Sous **[!DNL Experience Platform]**, cliquez sur **[!UICONTROL Personnes]** > **[!UICONTROL Attributs du client]**.

   Sur la page [!UICONTROL Attributs du client], vous pouvez gérer et modifier les sources de données d’attributs existantes.

   ![Résultat de l’étape](assets/03_crs_usecase.png)
1. Cliquez sur **[!UICONTROL Nouveau]**.

   ![Résultat de l’étape](assets/04_crs_usecase.png)
1. Sur la page [!UICONTROL Modifier la source d’attributs cliente], configurez les champs suivants :

   * **[!UICONTROL Nom :]** nom convivial de la source d’attributs de données. Pour [!DNL Adobe Target], les noms d’attribut ne peuvent pas contenir d’espaces. Si un attribut comportant un espace est transmis, [!DNL Target] l’ignore. Les autres caractères non pris en charge sont les suivants :`< , >, ', "`.

   * **[!UICONTROL Description :]** (facultatif) description de la source d’attribut de données.

   * **[!UICONTROL ID d’alias :]** représente une source de données d’attributs du client, par exemple un système de gestion de la relation client spécifique. Identifiant unique utilisé dans le code de la source d’attributs du client. L’identifiant doit être unique, en minuscules, sans espace. La valeur entrée dans le champ ID d’alias pour une source d’attributs du client dans l’interface utilisateur d’Experience Cloud doit correspondre aux valeurs transmises à partir de la mise en œuvre (que ce soit par le biais de la gestion dynamique des balises ou du script JavaScript du SDK mobile).

      L’ID d’alias correspond à certaines zones où vous définissez les valeurs des identifiants de client supplémentaires. Par exemple :

      * **Dynamic Tag Management :** l’ID d’alias correspond à la valeur du *code d’intégration* sous [!UICONTROL Paramètres du client], dans l’outil [Service Experience Cloud ID](https://docs.adobe.com/content/help/fr-FR/dtm/using/tools/macid.html).

      * **API visiteur :** l’ID d’alias correspond aux [ID de client](https://docs.adobe.com/content/help/fr-FR/id-service/using/reference/authenticated-state.html) supplémentaires que vous pouvez associer à chaque visiteur.

         Par exemple, *&quot;crm_ id&quot;* dans :

         ```
         "crm_id":"67312378756723456"
         ```

      * **iOS :** l’ID d’alias correspond à *« idType »* dans [visitorSyncIdentifiers:identifiers](https://docs.adobe.com/content/help/fr-FR/mobile-services/ios/overview.html).

         Par exemple :

         `[ADBMobile visitorSyncIdentifiers:@{@<`**`"idType"`**`:@"idValue"}];`

      * **Android :** l’ID d’alias correspond à *« idType »* dans [syncIdentifiers](https://docs.adobe.com/content/help/fr-FR/mobile-services/android/overview.html).

         Par exemple :

         `identifiers.put(`**`"idType"`**`, "idValue");`

         Pour plus d’informations sur le traitement des données concernant le champ ID d’alias et les ID de client, voir [Utilisation de plusieurs sources de données](../attributes/crs-data-file.md#section_76DEB6001C614F4DB8BCC3E5D05088CB).
   * **[!UICONTROL Transfert de fichiers :]** faites glisser et déposez le fichier de données `.csv`, ou transférez les données par FTP. (en cas de transfert par FTP, un fichier `.fin` est également requis.) Voir [Transfert des données par FTP.](../attributes/t-upload-attributes-ftp.md#task_591C3B6733424718A62453D2F8ADF73B)

      >[!IMPORTANT]
      >
      >Il existe des exigences spécifiques liées aux fichiers de données. Voir [Exigences liées aux fichiers de données](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) pour en savoir plus.


      Après avoir transféré le fichier, les données du tableau s’affichent sous l’en-tête [!UICONTROL Téléchargement du fichier] sur cette page. Vous pouvez valider le schéma, configurer les abonnements ou configurer le FTP.

      **Graphique du téléchargement du fichier**

      ![](assets/file_upload_attributes.png)

   * **[!UICONTROL ID de client unique :]** indique combien d’ID uniques vous avez transférés vers cette source d’attributs.

   * **[!UICONTROL ID fournis par le client avec alias pour les ID de visiteurs Experience Cloud :]** affiche le nombre d’ID qui ont reçu un alias vers les ID de visiteurs Experience Cloud.

   * **[!UICONTROL ID fournis par le client avec un nombre élevé d’alias :]** affiche le nombre d’ID fournis par le client avec 500 identifiants visiteur Experience Cloud ou plus avec alias. Ces identifiants fournis par le client représentent probablement un certain type de connexion partagée plutôt que des individus. Le système distribue les attributs associés à ces identifiants aux 500 identifiants de visiteur Experience Cloud en alias les plus récents, jusqu’à ce qu’il y ait 10 000 alias. Pour l’instant, le système invalide l’identifiant fourni par le client et ne distribue plus les attributs associés.



## Validation du schéma {#task_404AAC411B0D4E129AB3AC8B7BE85859}

Le processus de validation permet de mapper les noms affichés et les descriptions aux attributs transférés (chaînes, nombres entiers, numéros, etc.). Vous pouvez également supprimer des attributs en mettant à jour le schéma.

Voir [Validation du schéma](../attributes/validate-schema.md#concept_B3A01A15D04E4F998118E09B3A9B5043).

Pour supprimer des attributs, voir [(Facultatif) Mise à jour du schéma (supprime les attributs)](../attributes/t-crs-usecase.md#task_6568898BB7C44A42ABFB86532B89063C).

## (Facultatif) Mise à jour du schéma (suppression des attributs) {#task_6568898BB7C44A42ABFB86532B89063C}.

Suppression des attributs et remplacement des attributs dans le schéma.

1. Sur la page [!UICONTROL Modifier la source d’attributs du client], supprimez l’abonnement **[!UICONTROL Target]** ou **[!UICONTROL Analytics]** (sous [!UICONTROL Configurer les abonnements]).
1. [Chargez un nouveau fichier de données avec les champs mis à jour](../attributes/t-crs-usecase.md#task_09DAC0F2B76141E491721C1E679AABC8).

## Configuration des abonnements et activation de la source d’attributs {#task_1ACA21198F0E46A897A320C244DFF6EA}

La configuration des abonnements configure le flux de données entre Experience Cloud et les solutions. Activez la source d’attributs pour que les données circulent vers les solutions abonnées. Les enregistrements de client que vous avez chargés sont mis en correspondance avec les signaux d’ID entrants provenant de votre site web ou de votre application.

Voir [Configuration des abonnements](../attributes/subscription.md#concept_ECA3C44FA6D540C89CC04BA3C49E63BF).

**Pour activer une source d’attributs, procédez comme suit :**

Sur la page [!UICONTROL Créer [ou Modifier] Source d’attributs du client], recherchez l’en-tête [!UICONTROL Activer], puis cliquez sur **[!UICONTROL Activer]**.

![Résultat de l’étape](assets/activate_attribute_source.png)

## Utilisation des attributs du client dans Adobe Analytics {#task_7EB0680540CE4B65911B2C779210915D}

Les données étant désormais disponibles dans des solutions comme Adobe Analytics, vous pouvez créer des rapports sur les données, les analyser et prendre les mesures appropriées dans vos campagnes marketing.

L’exemple suivant présente un segment [!DNL Analytics] d’après les attributs transférés. Ce segment présente les abonnés à [!DNL Photoshop Lightroom] dont le produit le plus souvent lancé est Photoshop.

![](assets/08_crs_usecase.png)

Lorsque vous publiez un segment dans Experience Cloud, il est accessible dans les audiences Experience Cloud et dans Audience Manager.

Pour plus d’informations, voir [Rapport Attributs du client](https://docs.adobe.com/content/help/fr-FR/core-services/interface/customer-attributes/attributes.html) dans l’aide d’Analytics.

## Utilisation des attributs du client dans Adobe Target {#task_FC5F9D9059114027B62DB9B1C7D9E257}

Dans [!DNL Target], vous pouvez sélectionner un attribut du client à partir de la section [!UICONTROL Profil du visiteur] lors de la création d’une audience. Tous les attributs du client auront le préfixe [!DNL crs.] dans la liste. Combinez ces attributs suivant les besoins avec d’autres attributs de données afin de créer des audiences.

![](assets/crs-add-attribute-target.png)

Voir [Création d’une audience](https://docs.adobe.com/content/help/fr-FR/target/using/audiences/create-audiences/audiences.html) dans l’aide de [!DNL Target].
