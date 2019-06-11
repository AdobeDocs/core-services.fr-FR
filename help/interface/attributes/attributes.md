---
description: Aperçu et conditions requises pour le transfert des attributs du client dans Experience Cloud.
keywords: services principaux ; attributs du client
seo-description: Aperçu et conditions requises pour le transfert des attributs du client dans Experience Cloud.
seo-title: Attributs du client
solution: Experience Cloud
title: Attributs du client
uuid: 1621402 d -990 f -46 f 9-981 a -473280559069
translation-type: tm+mt
source-git-commit: 979b2202a70e2a5362aa86a65a17d7c4279b3a1a

---


# Attributs du client

## Aperçu

La [!UICONTROL fonction Attributs] du client dans Experience Cloud est disponible ici.

**[!UICONTROL Personnes]** &gt; **[!UICONTROL Attributs du client]**

Si vous capturez les données clients d’entreprise dans une base de données de gestion de la relation client, vous pouvez les transférer dans une source de données d’attributs du client dans Experience Cloud. Une fois le téléchargement effectué, utilisez les données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

![](assets/custom_reports.png)

## Conditions préalables au transfert des attributs du client {#section_BD38693AFBF34926BA28E964963B4EA0}


* **Activation de la solution :**[Activez vos solutions pour les services principaux](../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C).

* **Appartenance au groupe :** pour transférer les données d’attributs du client, les utilisateurs doivent appartenir au   [groupe Attributs du client](../admin-getting-started/admin-getting-started.md#task_3295A85536BF48899A1AB40D207E77E9). Vous devez également appartenir à un groupe Adobe Analytics ou Adobe Target.

   Pour savoir si votre société a accès aux attributs du client, votre [!DNL Experience Cloud] administrateur doit se connecter à [!DNL Experience Cloud]. Accédez **[!UICONTROL à Administration]** &gt; **[!UICONTROL Lancer Console d&#39;administration]** &gt; **[!UICONTROL Groupes]**. Si *les Attributs du client* s&#39;affichent comme l&#39;un des groupes, vous êtes prêt à commencer.

   Les utilisateurs membres du groupe Attributs du client ont accès aux options du menu [!UICONTROL Attributs du client] sur le côté gauche de l’interface d’Experience Cloud.

* **Mbox Target :** mbox.js version 58 ou supérieure est requis pour les attributs du client.


   Voir [Mise en œuvre de mbox.js](https://marketing.adobe.com/resources/help/en_US/target/ov/t_mbox_download.html).

* **at.js :** n’importe quelle version.




## Qu&#39;est-ce que les données clients d&#39;entreprise ? {#section_6F34C29F11414842AA57D2B1248FA3C6}

Les données d’entreprise résident dans d’autres systèmes. Cela peut être complexe et les significations varient en fonction des utilisateurs. Ces données peuvent inclure des informations de type adhésions, niveau de fidélité, âge, sexe, produits détenus, intérêts et valeur de durée de vie.

L’image suivante est un exemple de fichier de données présentant les données sur les abonnés pour les produits, y compris les identifiants de membre, les produits autorisés, les produits les plus lancés, etc.

![](assets/01_crs_usecase.png)

Après avoir créé le fichier de données, vous pouvez le télécharger vers la source d&#39;attributs du client que vous créez dans **[!UICONTROL Experience Cloud]** &gt; **[!UICONTROL Attributs du client]**.

Voir [Téléchargement des données d&#39;attributs du client](../attributes/t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78) pour en savoir plus sur ce flux de travaux.

## Cas d&#39;utilisation des solutions {#section_4E77650F6CEE4C4ABCD0B3221A5AE5D9}

Une fois que les données résident dans Experience Cloud, vous pouvez les personnaliser et les partager dans les solutions à des fins de reporting, de segmentation, d’activités et de campagnes.

Par exemple :

| Solution | Avantages et cas d’utilisation |
|--- |--- |
| Adobe Analytics | Les analystes et spécialistes du marketing peuvent comprendre :<ul><li>Les campagnes en ligne les plus efficaces sur vos clients de niveau Or.</li><li>Les produits recherchés par votre clientèle Or par rapport à votre clientèle Platine.</li><li>L’impact positif ou non de la refonte de votre site sur les taux de conversion liés à la tranche d’âge supérieure de votre clientèle.</li><li>Les produits que les clients pour lesquels la durée de vie est faible tendent à rechercher sur le site.</li></ul> |
| Adobe Target | Les données d’attribut permettent aux utilisateurs de Target de :<ul><li>Proposer des remises et des offres spéciales aux membres du club de fidélité.</li><li>Recommander des produits plus coûteux à votre clientèle la plus aisée.</li><li>Pour les clients recevant déjà des courriers électroniques, afficher une offre de mise à niveau dans l’espace normalement réservé aux inscriptions par courrier électronique.</li></ul> |
