---
title: Utilisation des attributs du client
description: Découvrez le service Attributs du client dans Adobe Experience Cloud. Découvrez comment télécharger des données d’attributs du client pour les utiliser dans Adobe Analytics et Adobe Target.
solution: Experience Cloud
feature: Attributs du client
role: Admin
topic: Administration
level: Experienced
exl-id: fe8ad013-76da-49f8-aa51-dc5f6c1b1d79
source-git-commit: 12b2758155885386cdc3e6fc7e1a77f2b8e74b6e
workflow-type: tm+mt
source-wordcount: '485'
ht-degree: 74%

---

# Attributs du client aperçu

Les attributs du client dans Experience Cloud vous permettent de télécharger vos données d’entreprise capturées à partir d’une base de données GRC. Vous pouvez charger les données dans une source de données Attribut client dans l’Experience Cloud, puis utiliser les données dans Adobe Analytics et Adobe Target.

Pour localiser cette fonctionnalité, accédez à **[!DNL Experience Platform]** > **[!UICONTROL Personnes]** > **[!UICONTROL Attributs du client]**

![](assets/custom_reports.png)

## Conditions requises pour le téléchargement des attributs du client {#section_BD38693AFBF34926BA28E964963B4EA0}

* **Activation de la solution :** [activez vos solutions pour les services Experience Platform](core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C).

* **Appartenance à un groupe :** pour télécharger les données d’attributs du client, les utilisateurs doivent appartenir au [groupe Attributs du client](admin-getting-started.md#task_3295A85536BF48899A1AB40D207E77E9). Vous devez également appartenir à un groupe d’Adobe Analytics ou d’Adobe Target.

   Pour savoir si votre société a accès aux attributs du client, votre administrateur [!DNL Experience Cloud] doit ouvrir une session dans [Experience Cloud](https://experience.adobe.com). Accédez à **[!UICONTROL Administration]** > **[!UICONTROL Admin Console]** > **[!UICONTROL Produits]**. Si les *Attributs du client* sont répertoriés comme l’un des [!UICONTROL profils de produits], vous êtes prêt à commencer.

   Les utilisateurs ajoutés aux attributs du client voient l’option de menu [!UICONTROL Attributs du client] sur le côté gauche de l’interface de l’Experience Cloud.

* **Adobe Target** `at.js` (toute version) ou `mbox.js` version 58 ou ultérieure est requis pour utiliser les attributs du client.

   Voir [Comment déployer at.js](https://experienceleague.adobe.com/docs/target/using/implement-target/client-side/deploy-at-js/how-to-deployatjs.html?lang=en) ou [Implémentation de mbox.js](https://experienceleague.adobe.com/docs/target/using/implement-target/client-side/mbox-implement/mbox-download.html?lang=en).

## Que sont les données des clients d’entreprise ?  {#section_6F34C29F11414842AA57D2B1248FA3C6}

Les données d’entreprise résident dans d’autres systèmes. Cela peut être complexe et les significations varient en fonction des utilisateurs. Ces données peuvent inclure des informations de type adhésions, niveau de fidélité, âge, sexe, produits détenus, intérêts et valeur de durée de vie.

L’image suivante est un exemple de fichier de données présentant les données sur les abonnés pour les produits, y compris les ID de membre, les produits autorisés, les produits les plus lancés, etc.

![](assets/01_crs_usecase.png)

Après avoir créé le fichier de données, vous pouvez le transférer vers la source d’attributs du client que vous créez dans **[!UICONTROL Experience Cloud]** > **[!UICONTROL Attributs du client]**.

Voir [Transfert des données d’attributs du client](t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78) pour en savoir plus sur ce processus.

## Exemples d’attributs du client dans Analytics et Target {#section_4E77650F6CEE4C4ABCD0B3221A5AE5D9}

Une fois que les données résident dans Experience Cloud, vous pouvez les personnaliser et les partager dans les solutions aux fins de création de rapports, de segmentation, d’activités et de campagnes.

Par exemple :

| Solution | Avantages et cas d’utilisation |
|--- |--- |
| Adobe Analytics | Les analystes et spécialistes du marketing peuvent comprendre :<ul><li>Les campagnes en ligne les plus efficaces sur vos clients de niveau Or.</li><li>Les produits recherchés par votre clientèle Or par rapport à votre clientèle Platine.</li><li>L’impact positif ou non de la refonte de votre site sur les taux de conversion liés à la tranche d’âge supérieure de votre clientèle.</li><li>Les produits que les clients avec une valeur de durée de vie faible tendent à rechercher sur mon site.</li></ul> |
| Adobe Target | Les données d’attribut permettent aux utilisateurs d’Adobe Target de :<ul><li>proposer des remises et des offres spéciales aux membres du club de fidélité .</li><li>recommander des produits plus coûteux à votre clientèle la plus aisée .</li><li>pour les clients recevant déjà des courriers électroniques, afficher une offre de mise à niveau dans l’espace normalement réservé aux inscriptions par courrier électronique.</li></ul> |

{style=&quot;table-layout:auto&quot;}
