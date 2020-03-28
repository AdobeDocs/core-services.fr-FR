---
description: Configuration d’Experience Cloud Triggers.
keywords: integrations;Triggers
seo-description: Configuration d’Experience Cloud Triggers.
seo-title: Triggers
solution: Marketing Cloud
title: Triggers
uuid: dab536e3-1969-4661-919e-5b15f423fecd
translation-type: tm+mt
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e

---


# Triggers

## Présentation de Triggers {#topic_4F21FCE9A64E46E8B6D51F494FA652A7}

*Les déclencheurs* vous permettent d’identifier, de définir et de surveiller les comportements clés des consommateurs, puis de générer une communication inter-solutions pour réengager les. Vous pouvez utiliser des déclencheurs dans les décisions et la personnalisation en temps réel.

* Configuration d’un marketing de relance rapide pour les abandons de panier ou les abandons de panier avec suppression des produits
* Formulaires et demandes incomplets
* Actions ou séquence d’actions sur le site

![](assets/trigger-abandonment-2.png)

### Types de Triggers

En règle générale, un trigger peut prendre 15 à 90 minutes pour lancer une campagne marketing. Cela varie selon l’implémentation de la collecte de données, la charge sur le pipeline, la configuration personnalisée du trigger défini et le workflow dans Adobe Campaign.

* **Abandon :** Vous pouvez créer un trigger qui se déclenche lorsqu’un visiteur consulte un produit mais ne l’ajoute pas au panier. Configurez le [score de propension](../activation/triggers.md#concept_A506150674AD45DB98D3CC07E560D334) pour déterminer la tendance des clients à ne pas retourner sur un site après l’abandon d’un panier.
* **Action :** Vous pouvez créer des déclencheurs, par exemple, pour qu’ils se déclenchent après les abonnements au bulletin d’information, les de  par courrier électronique ou les demandes de cartes de crédit (confirmations). Si vous êtes un détaillant, vous pouvez créer un trigger pour un visiteur qui s’inscrit à un programme de fidélité. Dans les médias et le divertissement, créez des déclencheurs pour les qui regardent un certain programme, et peut-être souhaitez-vous répondre avec un .
* **de session et fin de session :** Créez un déclencheur pour les  de session et les  de fin de session.

## Création d’un trigger Experience Cloud {#task_821F37183AC045E5AC8EED20317598FE}

Créez un trigger d’abandon et configurez les conditions du trigger et du score de propension. Vous pouvez par exemple indiquer les critères des règles d’un trigger pendant une visite, comme des mesures telles que Abandon du panier ou des dimensions telles que le nom du produit. Lorsque les règles sont satisfaites, le déclencheur s’exécute.

>[!NOTE]
>
>Pour des raisons techniques, le nombre de triggers est actuellement limité à 100.

1. Dans Experience Cloud, cliquez sur ![](assets/menu-icon.png), puis sur **[!UICONTROL Activation]**.
1. Accédez à la carte [!UICONTROL Triggers], puis cliquez sur **[!UICONTROL Lancer]**.

   ![Résultat de l’étape](assets/activation-triggers.png)

1. Cliquez sur **[!UICONTROL Nouveau trigger]**, puis spécifiez le type de trigger :

   ![Résultat de l’étape](assets/add-trigger.png)

1. Configurez le trigger en renseignant les champs suivants et en faisant glisser les éléments de mesure et de dimension vers les conteneurs de la règle :

   | Elément | Description |
   |--- |--- |
   | Nom | Nom convivial de ce déclencheur. |
   | Description | Description de ce déclencheur, de son utilisation, etc. |
   | Suite de rapports | Suite [de](https://docs.adobe.com/content/help/en/analytics/implementation/analytics-basics/ref-reports-report-suites.html) rapports Analytics utilisée pour ce déclencheur. Ce paramètre identifie les données  du à utiliser. |
   | Visit must include<br>Visit must not include<br>Trigger after no action<br>Include meta data | Vous pouvez définir des critères ou des comportements de visiteur qui doivent se produire ou ne pas se produire.  Par exemple, des règles pour un trigger d’abandon de panier simple peuvent ressembler à celles-ci :<ul><li>Visite doit inclure : Ajout au panier (mesure) et Existe. (Vous pouvez affiner davantage la règle avec une consultation de produit spécifique ou des dimensions telles que Types de navigateur.)</li><li>Visite ne doit pas inclure : passage en caisse</li><li>Trigger après aucune action pendant : 10 minutes</li><li>Inclure les métadonnées : permet d’ajouter une dimension spécifique de Campaign ou des variables qui sont pertinentes pour le comportement d’un visiteur. Ce champ peut s’avérer utile pour la création d’un e-mail de remarketing correct par Adobe Campaign.</li></ul><br>Vous pouvez spécifier une logique Quelconque, Et ou Ou dans ou entre des conteneurs, selon les critères que vous déterminez importants pour la règle. |
   | Conteneur | Vous définissez et stockez des règles, des conditions ou des filtres qui définissent un trigger dans les conteneurs. Si vous souhaitez que des événements se produisent en même temps, placez-les dans un même conteneur. En effet, chaque conteneur procède indépendamment au traitement au niveau de l’accès.  Par exemple, si deux conteneurs sont associés par l’opérateur Et, vous pouvez vous attendre à ce que les règles remplissent les critères lorsque deux accès répondent aux exigences. |
   |  nouvelle session après | Créez un déclencheur pour les  de session et les  de fin de session. |

1. (Optional) In [!UICONTROL Abandonment triggers], you can apply [Propensity Scoring](../activation/triggers.md#concept_A506150674AD45DB98D3CC07E560D334).

   ![Résultat de l’étape](assets/propensity-scoring.png)

1. Cliquez sur **[!UICONTROL Enregistrer]**.
1. Use triggers for [real-time remarketing](https://docs.campaign.adobe.com/doc/standard/en/EMA_Transactional_messaging_Marketing_Cloud_Triggers.html) in [!DNL Adobe Campaign].

### Exemples de triggers

Exemples de déclencheurs Experience Cloud :

#### Déclencheur d&#39;abandon de panier

Par exemple, la page suivante présente les règles que vous pouvez utiliser pour un trigger d’abandon de panier, en fonction des produits consultés au cours d’une visite.

![](assets/abandonment-trigger.png)

#### Déclencheur de 

Le trigger suivant se déclenche lorqu’un accès est associé au produit Men’s Boots et au référent Facebook. Pour que les deux critères ( *produits* et *référents*) soient évalués dans le même accès, ils doivent être ajoutés au même conteneur.

![](assets/fb-boots-promo.png)

## Score de propension {#concept_A506150674AD45DB98D3CC07E560D334}

Déterminez la tendance des clients à retourner sur un site après l’abandon d’un panier. Le score de propension est intégré à Experience Cloud Triggers. Il est disponible pour les triggers d’abandon.

![Résultat de l’étape](assets/propensity-scoring.png)

Par exemple, certains clients abandonnent leurs paniers d’achat pour profiter des encouragements par courriel pour retourner dans le panier. Pour réduire la perte de recettes, l’algorithme Score de propension permet d’identifier les abandons de panier concernés qui ne reviendraient probablement pas sans l’incitation.

Vous pouvez :

* Evitez de surexposer vos clients au marketing de relance.
* Identifiez les bons clients qui abandonnent leur panier et mappez leurs   au bon message.
* Augmentez les recettes en sachant quels clients reviendront ou non.

### Avantages du score de propension  {#section_CA99874A25434CC0BF01D0DA61608889}

Vous pouvez effectuer une découverte de données pour identifier les comportements ou modèles masqués qui existent dans vos données. Le score de propension permet tout particulièrement d’identifier des groupes de clients similaires à l’aide de méthodes plus objectives et ciblées que la segmentation ou le filtrage. En outre, le score de propension vous permet de configurer des fonctionnalités de prévision pour identifier le comportement de votre  client à forte valeur.

Une fois que vous avez identifié le  à forte valeur , vous pouvez alors l&#39;interagir le plus efficacement possible. Par exemple, si vous êtes une entreprise B2B, vous pouvez disposer de prospects pour des appels commerciaux qui peuvent être comptabilisés et pour lesquels vous pouvez déterminer la probabilité de conversion hors ligne. Chaque prospect augmentant les coûts, la création d&#39;une incitation pour identifier les clients potentiels ayant la plus forte probabilité de conversion d&#39;une vente est la méthode la plus efficace et la moins coûteuse pour concentrer vos ressources.

Le score de propension permet d&#39;identifier les facteurs qui sont les plus prédictifs d&#39;un score particulier ou d&#39;augmenter la probabilité qu&#39;un ait lieu, mais il peut aussi être appliqué pour répondre à des questions spécifiques :

* Le client va-t-il effectuer une conversion ?
* Le client répondra-t-il à un courriel ?
* Le client rachètera-t-il ?

Le score de propension vous permet de répondre à ces questions et d’identifier les ayant une tendance à l’action qui peut ensuite être configurée et notée.
