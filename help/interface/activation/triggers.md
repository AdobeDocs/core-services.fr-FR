---
description: Configuration d’Experience Cloud Triggers.
keywords: integrations;Triggers
seo-description: Configuration d’Experience Cloud Triggers.
seo-title: Triggers
solution: Marketing Cloud
title: Triggers
uuid: dab536e3-1969-4661-919e-5b15f423fecd
translation-type: tm+mt
source-git-commit: fb03bf89bcc6ed4438daf18c8415de3052ba8fa4
workflow-type: tm+mt
source-wordcount: '669'
ht-degree: 62%

---


# Triggers

## Présentation de Triggers {#topic_4F21FCE9A64E46E8B6D51F494FA652A7}

Les déclencheurs vous permettent d&#39;identifier, de définir et de surveiller les comportements clés des consommateurs, puis de générer des communications inter-solutions pour réengager les visiteurs. Vous pouvez utiliser des déclencheurs dans les décisions et la personnalisation en temps réel.

* Configurez un marketing de relance rapide pour les abandons de panier ou les abandons de panier lorsque les produits sont supprimés
* Formulaires et applications incomplets
* Actions ou séquence d’actions sur le site

![](assets/trigger-abandonment-2.png)

### Types de Triggers

En règle générale, un trigger peut prendre 15 à 90 minutes pour lancer une campagne marketing. Cela varie selon l’implémentation de la collecte de données, la charge sur le pipeline, la configuration personnalisée du trigger défini et le workflow dans Adobe Campaign.

* **Abandon :** Vous pouvez créer un trigger qui se déclenche lorsqu’un visiteur consulte un produit mais ne l’ajoute pas au panier.
* **Action :** Vous pouvez créer des déclencheurs, par exemple, pour qu’ils se déclenchent après les abonnements au bulletin d’information, les abonnements électroniques ou les demandes de cartes de crédit (confirmations). Si vous êtes un détaillant, vous pouvez créer un trigger pour un visiteur qui s’inscrit à un programme de fidélité. Dans les médias et le divertissement, créez des déclencheurs pour les visiteurs qui regardent un certain programme, et peut-être souhaitez-vous répondre avec un questionnaire.
* **Début de session et fin de session :** Créez un déclencheur pour le début de session et les événements de fin de session.

## Création d’un trigger Experience Cloud {#task_821F37183AC045E5AC8EED20317598FE}

Créez un trigger et configurez les conditions correspondantes. Vous pouvez par exemple indiquer les critères des règles d’un trigger pendant une visite, comme des mesures telles que Abandon du panier ou des dimensions telles que le nom du produit. Lorsque les règles sont satisfaites, le déclencheur s’exécute.

>[!NOTE]
>
>Pour des raisons techniques, le nombre de triggers est actuellement limité à 100.

1. In the Experience Cloud, click ![](assets/menu-icon.png), then click **[!UICONTROL Launch]**.
2. Locate the [!UICONTROL Triggers] card, then click **[!UICONTROL Manage Triggers]**.
3. Cliquez sur **[!UICONTROL Nouveau trigger]**, puis spécifiez le type de trigger :

   ![Résultat de l’étape](assets/add-trigger.png)

4. Configurez le trigger en renseignant les champs suivants et en faisant glisser les éléments de mesure et de dimension vers les conteneurs de la règle :

   | Élément | Description |
   |--- |--- |
   | Nom | Nom convivial de ce trigger. |
   | Description | Description de ce trigger, de son utilisation, etc. |
   | Suite de rapports | Suite [de](https://docs.adobe.com/content/help/fr-FR/analytics/implementation/analytics-basics/ref-reports-report-suites.html) rapports Analytics utilisée pour ce déclencheur. Ce paramètre identifie les données de rapports à utiliser. |
   | Visit must include<br>Visit must not include<br>Trigger after no action<br>Include meta data | Vous pouvez définir des critères ou des comportements de visiteur qui doivent se produire ou ne pas se produire.  Par exemple, des règles pour un trigger d’abandon de panier simple peuvent ressembler à celles-ci :<ul><li>Visite doit inclure : Ajout au panier (mesure) et Existe. (Vous pouvez affiner davantage la règle avec une consultation de produit spécifique ou des dimensions telles que Types de navigateur.)</li><li>Visite ne doit pas inclure : passage en caisse</li><li>Trigger après aucune action pendant : 10 minutes</li><li>Inclure les métadonnées : permet d’ajouter une dimension spécifique de Campaign ou des variables qui sont pertinentes pour le comportement d’un visiteur. Ce champ peut s’avérer utile pour la création d’un e-mail de remarketing correct par Adobe Campaign.</li></ul><br>Vous pouvez spécifier une logique Quelconque, Et ou Ou dans ou entre des conteneurs, selon les critères que vous déterminez importants pour la règle. |
   | Conteneur | Vous définissez et stockez des règles, des conditions ou des filtres qui définissent un trigger dans les conteneurs. Si vous souhaitez que des événements se produisent en même temps, placez-les dans un même conteneur. En effet, chaque conteneur procède indépendamment au traitement au niveau de l’accès.  Par exemple, si deux conteneurs sont associés par l’opérateur Et, vous pouvez vous attendre à ce que les règles remplissent les critères lorsque deux accès répondent aux exigences. |
   | Début de nouvelle session après | Créez un déclencheur pour le début de session et les événements de fin de session. |

5. Cliquez sur **[!UICONTROL Enregistrer]**.
6. Use triggers for [real-time remarketing](https://docs.campaign.adobe.com/doc/standard/en/EMA_Transactional_messaging_Marketing_Cloud_Triggers.html) in [!DNL Adobe Campaign].

### Exemples de triggers

Exemples de déclencheurs Experience Cloud :

#### Déclencheur d&#39;abandon de panier

Par exemple, la page suivante présente les règles que vous pouvez utiliser pour un trigger d’abandon de panier, en fonction des produits consultés au cours d’une visite.

![](assets/abandonment-trigger.png)

#### Déclencheur de Parrain

Le trigger suivant se déclenche lorqu’un accès est associé au produit Men’s Boots et au référent Facebook. Pour que les deux critères ( *produits* et *référents*) soient évalués dans le même accès, ils doivent être ajoutés au même conteneur.

![](assets/fb-boots-promo.png)
