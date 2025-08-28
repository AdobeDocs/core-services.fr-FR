---
title: À propos d’ [!DNL Customer Attributes]
description: En savoir plus sur les  [!DNL Customer Attributes]  dans Experience Cloud. Découvrez comment charger des données d’attributs du client ou de la cliente pour les utiliser dans Adobe Analytics et Adobe Target.
solution: Experience Cloud,Target,Analytics
feature: Customer Attributes
role: Admin
topic: Administration
level: Experienced
exl-id: fe8ad013-76da-49f8-aa51-dc5f6c1b1d79
source-git-commit: 21120abb5ab0fcc8d556012851548f39f3875038
workflow-type: tm+mt
source-wordcount: '434'
ht-degree: 73%

---

# [!DNL Customer Attributes] dans Experience Cloud

Les [!DNL Customer Attributes] dans Experience Cloud vous permettent de charger vos données d’entreprise capturées à partir d’une base de données de gestion de la relation client (CRM). Vous pouvez charger les données dans une source de données d’attributs de clientes et clients dans Experience Cloud, puis utiliser ces données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

## Repérer l’emplacement de la fonctionnalité [!DNL Customer Attributes]

1. Connectez-vous à [!DNL Experience Cloud] et sélectionnez l’icône Menu ![menu](assets/menu-icon.png) .

1. Sélectionnez **[!DNL Customer Attributes]**.

![Présentation du service Attribut du client](assets/custom_reports.png)

## Conditions préalables pour le chargement des données d’attributs du client {#prerequisites}

* **Appartenance à un groupe :** pour charger des données d’attributs du client, les utilisateurs doivent être membres du groupe Attributs du client. Vous devez également appartenir à un groupe d’Adobe Analytics ou d’Adobe Target.

  Pour savoir si votre société a accès aux attributs du client, votre administrateur [!DNL Experience Cloud] doit se connecter à [Experience Cloud](https://experience.adobe.com?lang=fr). Accédez à **[!UICONTROL Admin Console]** > **[!UICONTROL Products]**. Si les *[!DNL Customer Attributes]* s’affichent en tant qu’un des [!UICONTROL profils de produits], vous pouvez commencer.

  Les utilisateurs ajoutés à [!DNL Customer Attributes] voient l’option de menu [!DNL Customer Attributes] sur le côté gauche de l’interface d’Experience Cloud.

* **Adobe Target** `at.js` (toute version) ou `mbox.js` version 58 ou ultérieure est requis pour utiliser les attributs du client.

  Voir [Comment déployer at.js](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/overview.html).

## Que sont les données des clients d’entreprise ? {#enterprise_data}

Les données d’entreprise résident dans d’autres systèmes. Cela peut être complexe et les significations varient en fonction des utilisateurs. Ces données peuvent inclure des informations telles que les abonnements, le niveau de fidélité, l’âge, le sexe, les produits détenus, les intérêts et la valeur de durée de vie.

L’image suivante est un exemple de fichier de données présentant les données sur les abonnés pour les produits, y compris les ID de membre, les produits autorisés, les produits les plus lancés, etc.

![En quoi consistent les données client d’entreprise ?](assets/01_crs_usecase.png)

Après avoir créé le fichier de données, vous pouvez le charger vers la source d’attributs du client que vous créez dans **[!UICONTROL Experience Cloud]** > **[!UICONTROL Attributs du client]**.

Voir [Charger des données d’attributs du client](t-crs-usecase.md) pour en savoir plus sur ce workflow.

## Exemples d’attributs du client dans Analytics et Target {#examples}

Une fois que les données sont présentes dans Experience Cloud, vous pouvez les personnaliser et les partager dans des solutions à des fins de création de rapports, de segmentation, d’activités et de campagnes.

Par exemple :

| Solution | Avantages et cas d’utilisation |
|--- |--- |
| Adobe Analytics | Les analystes et spécialistes du marketing peuvent comprendre :<ul><li>Les campagnes en ligne les plus efficaces sur vos clients de niveau Or.</li><li>Les produits recherchés par votre clientèle Or par rapport à votre clientèle Platine.</li><li>L’impact positif ou non de la refonte de votre site sur les taux de conversion liés à la tranche d’âge supérieure de votre clientèle.</li><li>Produits que les clients dont la valeur de durée de vie est faible ont tendance à rechercher sur le site.</li></ul> |
| Adobe Target | Les données d’attribut permettent aux utilisateurs d’Adobe Target de :<ul><li>proposer des remises et des offres spéciales aux membres du club de fidélité.</li><li>recommander des produits plus coûteux à votre clientèle la plus aisée.</li><li>Pour les clients recevant déjà des e-mails, afficher une offre de mise à niveau dans l’espace normalement réservé aux inscriptions par courrier électronique</li></ul> |

{style="table-layout:auto"}
