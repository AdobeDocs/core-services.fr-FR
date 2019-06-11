---
description: Créer la source d’attribut client et télécharger les données.
keywords: attributs du client ; services principaux
seo-description: Créer la source d’attribut client et télécharger les données.
seo-title: Création d’une source d’attributs du client et transfert du fichier de données
solution: Experience Cloud
title: Création d’une source d’attributs du client et transfert du fichier de données
uuid: 53 dca 789-9 a 91-4385-839 d-c 9 d 1 aa 36 b 9 be
translation-type: tm+mt
source-git-commit: b6058194725c3ad50d280a3daad737cd53416204

---


# Création d’une source d’attributs du client et transfert du fichier de données

Créer la source d’attribut client et télécharger les données. Vous pouvez activer la source de données lorsque vous êtes prêt. Une fois que la source de données est active, partagez les données d’attributs avec Analytics et Target.

## Processus des attributs du client {#concept_BF0AF88E9EF841219ED4D10754CD7154}

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
>Pour accéder à cette fonctionnalité, les utilisateurs doivent être affectés au profil du produit Attributs du client (Attributs du client - Accès par défaut). ( **[!UICONTROL Administration]** &gt; Console **[!UICONTROL d&#39;administration]** &gt; **[!UICONTROL Utilisateurs]** &gt;). Les utilisateurs ajoutés au groupe Attributs du client voient l’entrée de menu [!UICONTROL Attributs du client] apparaître dans [!UICONTROL Audiences], sur la partie gauche de l’interface d’Experience Cloud.
>
>L’appartenance à un groupe de solutions est également requise.

Pour utiliser la fonction Attributs du client, les utilisateurs doivent appartenir au groupe Attributs du client Adobe dans la gestion des utilisateurs, ainsi qu’aux groupes au niveau de la solution (Analytics ou Target).

Voir [Utilisateurs et groupes](../admin-getting-started/admin-getting-started.md#task_3295A85536BF48899A1AB40D207E77E9).

## Création d’un fichier de données {#task_B5FB8C0649374C7A94C45DCF2878EA1A}

Ces données des clients de l’entreprise proviennent de votre système de gestion de la relation client. Elles peuvent inclure des données sur les abonnés pour les produits, y compris les identifiants des membres, les produits habilités, les produits les plus souvent utilisés, etc.


1. Créez un [!DNL .csv].


   >[!NOTE]
   >
   >Plus loin dans ce processus, vous allez faire glisser le [!DNL .csv] fichier pour le transférer. Toutefois, si vous transférez le [fichier via FTP](../attributes/t-upload-attributes-ftp.md#task_591C3B6733424718A62453D2F8ADF73B), vous avez également besoin d&#39; [!DNL .fin] un fichier portant le même nom que [!DNL .csv]le fichier.



   Exemple de fichier de données du client d’entreprise :

   ![](assets/01_crs_usecase.png)

1. Avant de poursuivre, passez en revue les informations importantes dans [les exigences](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19)liées aux fichiers de données avant de télécharger le fichier.
1. [Créez une source d&#39;attributs du client et téléchargez les données](../attributes/t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78), décrites ci-dessous.

## Création d’une source d’attributs et transfert du fichier de données {#task_09DAC0F2B76141E491721C1E679AABC8}

Effectuez les étapes ci-après sur la page Créer une source d’attributs cliente dans Experience Cloud.


>[!IMPORTANT]
>
>Lors de la création, de la modification ou de la suppression de sources d&#39;attributs clientes, un délai allant jusqu&#39;à une heure est nécessaire avant que les identifiants commencent à synchroniser avec la nouvelle source de données. Pour créer ou modifier des sources d&#39;attributs clientes, vous devez disposer des droits d&#39;administration dans Audience Manager. Contactez le service à la clientèle ou le service d&#39;assistance clientèle d&#39;Audience Manager pour obtenir des droits d&#39;administration.


1. Dans [!DNL Experience Cloud]la, cliquez sur l&#39;icône Menu ![](assets/menu-icon.png) .
1. Cliquez **[!UICONTROL sur Personnes]**, puis sur **[!UICONTROL Attributs du client]**.

   Sur la page [!UICONTROL Attributs du client], vous pouvez gérer et modifier les sources de données d’attributs existantes.

   ![Résultat de l&#39;étape](assets/03_crs_usecase.png)
1. Cliquez sur **[!UICONTROL Nouveau]**.

   ![Résultat de l&#39;étape](assets/04_crs_usecase.png)
1. Sur la page [!UICONTROL Modifier la source d’attributs cliente], configurez les champs suivants : 


   * **[!UICONTROL Nom :]** Nom convivial de la source d&#39;attributs de données. Pour [!DNL Adobe Target]les noms d&#39;attribut, les noms d&#39;attribut ne peuvent pas inclure d&#39;espaces. Si un attribut avec un espace est transmis, [!DNL Target] l&#39;ignore. Les autres caractères non pris en charge sont les suivants : `< , >, ', "`.

   * **[!UICONTROL Description :]** (Facultatif) Description de la source d&#39;attributs de données.

   * **[!UICONTROL ID d&#39;alias :]** Représente une source de données d&#39;attributs du client, telles qu&#39;un système de gestion de la relation client spécifique. Identifiant unique utilisé dans le code de la source d’attributs du client. L’identifiant doit être unique, en minuscules, sans espace. La valeur entrée dans le champ ID d’alias pour une source d’attributs du client dans l’interface utilisateur d’Experience Cloud doit correspondre aux valeurs que vous transmettez à partir de la mise en œuvre (par le biais de Dynamic Tag Management ou du script JavaScript du kit de développement logiciel mobile).

      L’ID d’alias correspond à certaines zones où vous définissez les valeurs des identifiants de client supplémentaires. Par exemple :

      * **Gestion dynamique des balises :** L&#39;ID d&#39;alias correspond à la valeur Code *d&#39;intégration* sous Paramètres [!UICONTROL ]client, dans l&#39;outil Service [d&#39;identification d&#39;Experience](https://marketing.adobe.com/resources/help/en_US/dtm/?f=macid) Cloud.

      * **API visiteur :** l’ID d’alias correspond aux [identifiants de client](https://marketing.adobe.com/resources/help/en_US/mcvid/?f=mcvid_customer_ids) supplémentaires que vous pouvez associer à chaque visiteur.

         Par exemple, *&quot;crm_ id&quot;* dans :


         ```
         "crm_id":"67312378756723456"
         ```


      * **Ios :** L&#39;ID d&#39;alias correspond à *« idtype »* dans [visitorsyncidentifiers : identifiants](https://marketing.adobe.com/resources/help/en_US/mobile/ios/?f=methods).

         Par exemple :

         `[ADBMobile visitorSyncIdentifiers:@{@<`**`"idType"`**`:@"idValue"}];`


      * **Android :** l’ID d’alias correspond à *« Idtype »* dans [syncidentifiers](https://marketing.adobe.com/resources/help/en_US/mobile/android/?f=methods).

         Par exemple :

         `identifiers.put(`**`"idType"`**`, "idValue");`

         Voir [Utilisation de plusieurs sources](../attributes/crs-data-file.md#section_76DEB6001C614F4DB8BCC3E5D05088CB) de données pour plus d&#39;informations sur les données - Traitement concernant le champ ID d&#39;alias et les ID de client.
   * **[!UICONTROL Télécharger le fichier :]** Vous pouvez faire glisser le fichier [!DNL .csv] de données ou télécharger les données par FTP. (L&#39;utilisation du protocole FTP requiert également [!DNL .fin] un fichier.) Voir [Téléchargement des données par FTP](../attributes/t-upload-attributes-ftp.md#task_591C3B6733424718A62453D2F8ADF73B).


      >[!IMPORTANT]
      >
      >Des exigences spécifiques en matière de fichier de données sont requises. Pour [plus d&#39;informations, voir Exigences](../attributes/crs-data-file.md#concept_DE908F362DF24172BFEF48E1797DAF19) liées aux fichiers de données.


      Après avoir transféré le fichier, les données du tableau s’affichent sous l’en-tête [!UICONTROL Téléchargement du fichier] sur cette page. Vous pouvez valider le schéma, configurer les abonnements ou configurer le FTP.



      **Graphique du téléchargement de fichier**

      ![](assets/file_upload_attributes.png)

   * **[!UICONTROL ID client unique :]** Affiche le nombre d&#39;ID uniques que vous avez transférés vers cette source d&#39;attributs.

   * **[!UICONTROL Identifiants fournis par le client avec alias pour les identifiants visiteur Experience Cloud :]** Affiche le nombre d&#39;identifiants d&#39;un alias d&#39;identifiants visiteur Experience Cloud.

   * **[!UICONTROL Identifiants fournis par le client avec un nombre élevé d&#39;alias :]** Affiche le nombre d&#39;identifiants fournis par le client avec 500 identifiants visiteur avec alias ou plus. Ces identifiants fournis par le client représentent probablement un certain type de connexion partagée plutôt que des individus. Le système distribue les attributs associés à ces identifiants aux 500 identifiants de visiteur Experience Cloud en alias les plus récents, jusqu’à ce qu’il y ait 10 000 alias. Pour l’instant, le système invalide l’identifiant fourni par le client et ne distribue plus les attributs associés.










## Validation du schéma {#task_404AAC411B0D4E129AB3AC8B7BE85859}

Le processus de validation permet de mapper les noms d’affichage et les descriptions aux attributs transférés (chaînes, nombres entiers, numéros, etc.). Vous pouvez également supprimer des attributs en mettant à jour le schéma.

Voir [Validation du schéma](../attributes/validate-schema.md#concept_B3A01A15D04E4F998118E09B3A9B5043).

Pour supprimer des attributs, voir [(Facultatif) Mettez à jour le schéma (supprime les attributs)](../attributes/t-crs-usecase.md#task_6568898BB7C44A42ABFB86532B89063C).

## (Facultatif) Mettre à jour le schéma (supprimer les attributs) {#task_6568898BB7C44A42ABFB86532B89063C}

Suppression des attributs et remplacement des attributs dans le schéma.


1. Sur la page [!UICONTROL Modifier la source] d&#39;attributs cliente, supprimez l&#39;abonnement **[!UICONTROL Target]** ou **[!UICONTROL Analytics]** (sous [!UICONTROL Configurer les abonnements]).
1. [Téléchargez un nouveau fichier de données avec les champs mis à jour](../attributes/t-crs-usecase.md#task_09DAC0F2B76141E491721C1E679AABC8).

## Configuration des abonnements et activation de la source d’attributs {#task_1ACA21198F0E46A897A320C244DFF6EA}

La configuration des abonnements configure le flux de données entre Experience Cloud et les solutions. Activez la source d’attributs pour que les données circulent vers les solutions abonnées. Les dossiers de client que vous avez transférés sont mis en correspondance avec les signaux d’identifiants entrants issus de votre site web ou de votre application.

Voir [Configuration des abonnements](../attributes/subscription.md#concept_ECA3C44FA6D540C89CC04BA3C49E63BF).

**Pour activer une source d’attributs, procédez comme suit :**

Dans le [! UICONTROL Create New [ou Edit] Client Attribute Source], localisez l&#39;en-tête [!UICONTROL Activer] , puis cliquez **[!UICONTROL sur Actif]**.

![Résultat de l&#39;étape](assets/activate_attribute_source.png)

## Utilisation des attributs du client dans Adobe Analytics {#task_7EB0680540CE4B65911B2C779210915D}

Les données sont désormais disponibles dans les solutions telles que
<keyword>
Adobe Analytics
</keyword>, vous pouvez créer des rapports sur les données, les analyser et prendre les mesures appropriées dans vos campagnes marketing.

L’exemple suivant présente un segment [!DNL Analytics] d’après les attributs transférés. Ce segment présente les abonnés à Photoshop Lightroom dont le produit le plus souvent lancé est Photoshop.

![](assets/08_crs_usecase.png)

Lorsque vous publiez un segment dans Experience Cloud, il devient disponible dans les audiences Experience Cloud et dans Audience Manager.

Voir [Rapport Attributs du client](https://marketing.adobe.com/resources/help/en_US/reference/?f=reports_customer_attributes) dans l’aide d’Analytics pour en savoir plus.

## Utilisation des attributs du client dans Adobe Target {#task_FC5F9D9059114027B62DB9B1C7D9E257}

Dans Target, vous pouvez sélectionner un attribut de client à partir de la section de profil du visiteur lors de la création d’une audience. Tous les attributs du client auront le préfixe [!DNL crs.] dans la liste. Combinez ces attributs suivant les besoins avec d’autres attributs de données afin de créer des audiences.

![](assets/crs-add-attribute-target.png)

Voir [Création d’une audience](https://marketing.adobe.com/resources/help/en_US/target/target/?f=t_creating_a_new_audience) dans l’aide de Target.
