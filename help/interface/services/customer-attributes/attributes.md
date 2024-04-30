---
title: « [!DNL Customer Attributes] »
description: En savoir plus sur les  [!DNL Customer Attributes]  dans Experience Cloud. Découvrez comment charger des données d’attributs du client ou de la cliente pour les utiliser dans Adobe Analytics et Adobe Target.
solution: Experience Cloud,Target,Analytics
feature: Customer Attributes
role: Admin
topic: Administration
level: Experienced
exl-id: fe8ad013-76da-49f8-aa51-dc5f6c1b1d79
source-git-commit: c39672f0d8a0fd353b275b2ecd095ada1e2bf744
workflow-type: tm+mt
source-wordcount: '433'
ht-degree: 96%

---

# [!DNL Customer Attributes] dans Experience Cloud

Les [!DNL Customer Attributes] dans Experience Cloud vous permettent de charger vos données d’entreprise capturées à partir d’une base de données de gestion de la relation client (CRM). Vous pouvez charger les données dans une source de données d’attributs de clientes et clients dans Experience Cloud, puis utiliser ces données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

## Repérer l’emplacement de la fonctionnalité [!DNL Customer Attributes]

1. Connectez-vous à Experience Cloud.

1. Accédez à **[!DNL Experience Platform]** > **[!UICONTROL Personnes]** > **[!UICONTROL Attributs de clientes et clients]**.

![Vue d’ensemble des attributs du client ou de la cliente](assets/custom_reports.png)

## Conditions préalables au chargement des [!DNL Customer Attributes] {#section_BD38693AFBF34926BA28E964963B4EA0}

* **Appartenance à un groupe :** Pour charger des données Attribut client, les utilisateurs doivent appartenir au groupe Attributs du client . Vous devez également appartenir à un groupe d’Adobe Analytics ou d’Adobe Target.

  Pour savoir si votre société a accès aux attributs du client, votre administrateur [!DNL Experience Cloud] doit ouvrir une session dans [Experience Cloud](https://experience.adobe.com?lang=fr). Accédez à **[!UICONTROL Administration]** > **[!UICONTROL Admin Console]** > **[!UICONTROL Produits]**. Si les *[!DNL Customer Attributes]* s’affichent en tant qu’un des [!UICONTROL profils de produits], vous pouvez commencer.

  Les utilisateurs et utilisatrices ajoutés aux [!DNL Customer Attributes] peuvent voir les options du menu [!UICONTROL Attributs du client ou de la cliente] sur le côté gauche de l’interface d’Experience Cloud.

* **Adobe Target** `at.js` (toute version) ou `mbox.js` version 58 ou ultérieure est requis pour utiliser les attributs du client ou de la cliente.

  Voir [Comment déployer at.js](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/overview.html).

## Que sont les données des clients d’entreprise ? {#section_6F34C29F11414842AA57D2B1248FA3C6}

Les données d’entreprise résident dans d’autres systèmes. Cela peut être complexe et les significations varient en fonction des utilisateurs. Ces données peuvent inclure des informations de type adhésions, niveau de fidélité, âge, sexe, produits détenus, intérêts et valeur de durée de vie.

L’image suivante est un exemple de fichier de données présentant les données sur les abonnés pour les produits, y compris les ID de membre, les produits autorisés, les produits les plus lancés, etc.

![En quoi consistent les données client d’entreprise ?](assets/01_crs_usecase.png)

Après avoir créé le fichier de données, vous pouvez le charger vers la source d’attributs du client que vous créez dans **[!UICONTROL Experience Cloud]** > **[!UICONTROL Attributs du client]**.

Voir [Charger des données d’attributs du client](t-crs-usecase.md) pour en savoir plus sur ce workflow.

## Exemples d’attributs du client ou de la cliente dans Analytics et Target {#section_4E77650F6CEE4C4ABCD0B3221A5AE5D9}

Une fois que les données sont présentes dans Experience Cloud, vous pouvez les personnaliser et les partager dans des solutions à des fins de création de rapports, de segmentation, d’activités et de campagnes.

Par exemple :

| Solution | Avantages et cas d’utilisation |
|--- |--- |
| Adobe Analytics | Les analystes et spécialistes du marketing peuvent comprendre :<ul><li>Les campagnes en ligne les plus efficaces sur vos clients de niveau Or.</li><li>Les produits recherchés par votre clientèle Or par rapport à votre clientèle Platine.</li><li>L’impact positif ou non de la refonte de votre site sur les taux de conversion liés à la tranche d’âge supérieure de votre clientèle.</li><li>Produits que les clients dont la valeur de durée de vie est faible ont tendance à rechercher sur le site.</li></ul> |
| Adobe Target | Les données d’attribut permettent aux utilisateurs d’Adobe Target de :<ul><li>proposer des remises et des offres spéciales aux membres du club de fidélité.</li><li>recommander des produits plus coûteux à votre clientèle la plus aisée.</li><li>Pour les clients recevant déjà des e-mails, afficher une offre de mise à niveau dans l’espace normalement réservé aux inscriptions par courrier électronique</li></ul> |

{style="table-layout:auto"}
