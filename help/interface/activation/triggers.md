---
description: Configuration des triggers Experience Cloud.
keywords: intégrations ; Déclencheurs
seo-description: Configuration des triggers Experience Cloud.
seo-title: Triggers
solution: Marketing Cloud
title: Triggers
uuid: dab 536 e 3-1969-4661-919 e -5 b 15 f 423 fecd
translation-type: tm+mt
source-git-commit: 8ec57774743e8c32a17f18ae6dfe98c0767297a6

---


# Triggers

## Présentation des déclencheurs {#topic_4F21FCE9A64E46E8B6D51F494FA652A7}

*Les déclencheurs* permettent d&#39;identifier, de définir et de surveiller les comportements clés des consommateurs, puis de générer une communication inter-solutions pour attirer de nouveau les visiteurs. Vous pouvez utiliser des triggers pour la personnalisation et les décisions en temps réel.

* Configurez un remarketing rapide pour les abandons de panier ou les abandons de panier sans suppression de produits.
* Formulaires et demandes incomplets
* Actions ou séquence d’actions sur site

![](assets/trigger-abandonment-2.png)

**Types de trigger**

En règle générale, un trigger peut prendre 15 à 90 minutes pour lancer une campagne marketing. Cela varie selon l&#39;implémentation de la collecte de données, la charge sur le canal, la configuration personnalisée du trigger défini et le flux de travaux dans Adobe Campaign.

* **Abandon :** Vous pouvez créer un trigger qui se déclenche lorsqu’un visiteur consulte un produit mais ne l’ajoute pas au panier. Configurez [le score de propension](../activation/triggers.md#concept_A506150674AD45DB98D3CC07E560D334) pour comprendre la tendance des clients à ne pas avoir abandonné un panier.
* **Action :** Vous pouvez créer des triggers, par exemple, pour qu’ils se déclenchent après des inscriptions à une newsletter, des abonnements par e-mail ou des demandes de cartes de crédit (confirmations). Si vous êtes un détaillant, vous pouvez créer un trigger pour un visiteur qui s’inscrit à un programme de fidélité. Dans le secteur des médias et du divertissement, créez des triggers pour les visiteurs qui regardent un programme en particulier et qui doivent répondre à une enquête.
* **Début et de fin de session :** Créez un trigger pour les événements de début et de fin de session.

## Création d&#39;un trigger Experience Cloud {#task_821F37183AC045E5AC8EED20317598FE}

Créez un trigger d’abandon et configurez les conditions du trigger et du score de propension. Vous pouvez par exemple indiquer les critères des règles d’un trigger pendant une visite, comme des mesures telles que Abandon du panier ou des dimensions telles que le nom du produit. Lorsque les règles sont satisfaites, le trigger s’exécute.

<!-- t_create-trigger.xml -->

>[!NOTE]
>
>Il existe actuellement une limite technique de 100 déclencheurs.

1. Dans Experience Cloud, cliquez sur ![](assets/menu-icon.png), puis **[!UICONTROL sur Activation]**.
1. Accédez à la carte [!UICONTROL Triggers]**, puis cliquez sur[!UICONTROL Lancer]**.

   ![Résultat de l&#39;étape](assets/activation-triggers.png)

1. Cliquez sur **[!UICONTROL Nouveau déclencheur]**, puis spécifiez le type de trigger :

   ![Résultat de l&#39;étape](assets/add-trigger.png)

1. Configurez le trigger en renseignant les champs suivants et en faisant glisser les éléments de mesure et de dimension vers les conteneurs de la règle : 

   | Élément | Description |
   |--- |--- |
   | Nom | Nom convivial du trigger. |
   | Description | Description du trigger, de sa fonction, etc. |
   | Suite de rapports | La [suite de rapports](https://marketing.adobe.com/resources/help/en_US/analytics/getting-started/report-suites.html) Analytics utilisée pour ce trigger. Ce paramètre identifie les données de rapport à utiliser. |
   | Visite doit inclure<br>Visite ne doit pas inclure le déclencheur<br>après la virgule actioninclude<br>- data | Vous pouvez définir des critères ou des comportements de visiteur qui doivent se produire ou ne pas se produire.  Par exemple, des règles pour un trigger d’abandon de panier simple peuvent ressembler à celles-ci :<ul><li>Visite doit inclure : Ajout au panier (mesure) et Existe. (Vous pouvez affiner davantage la règle avec une consultation de produit spécifique ou des dimensions telles que Types de navigateur.)</li><li>Visite ne doit pas inclure : Paiement.</li><li>Déclencheur après aucune action pour : 10 minutes.</li><li>Inclure les métadonnées : permet d’ajouter une dimension spécifique de Campaign ou des variables qui sont pertinentes pour le comportement d’un visiteur. Ce champ peut s’avérer utile pour la création d’un e-mail de remarketing correct par Adobe Campaign.</li></ul><br>Vous pouvez spécifier une logique Quelconque, et Ou Ou dans ou entre des conteneurs, selon les critères que vous déterminez importants pour la règle. |
   | Conteneur | Vous définissez et stockez des règles, des conditions ou des filtres qui définissent un trigger dans les conteneurs. Si vous souhaitez que des événements se produisent en même temps, placez-les dans un même conteneur. En effet, chaque conteneur procède indépendamment au traitement au niveau de l’accès.  Par exemple, si vous avez deux conteneurs connectés par l&#39;opérateur ET, vous pouvez vous attendre à ce que les règles remplissent les critères lorsque deux accès répondent aux exigences. |
   | Démarrer une nouvelle session après | Créez un trigger pour les événements de début et de fin de session. |

1. (Facultatif) Dans les triggers d&#39;abandon, vous pouvez appliquer [le score de propension](../activation/triggers.md#concept_A506150674AD45DB98D3CC07E560D334).

   ![Résultat de l&#39;étape](assets/propensity-scoring.png)

1. Cliquez sur **[!UICONTROL Enregistrer]**.
1. Utilisez des triggers pour le [remarketing en temps réel](https://docs.campaign.adobe.com/doc/standard/en/EMA_Transactional_messaging_Marketing_Cloud_Triggers.html) dans [!DNL Adobe Campaign].

### Exemples de déclencheurs

**Trigger d’abandon de panier**

Par exemple, la page suivante montre les règles que vous pouvez utiliser pour un trigger d’abandon de panier, selon les produits consultés lors d’une visite.

![](assets/abandonment-trigger.png)

**Trigger de référent**

Le trigger suivant se déclenche lorqu’un accès est associé au produit Men’s Boots et au référent Facebook. Pour que les deux critères ( *produits* et *référents*) soient évalués dans le même accès, ils doivent être ajoutés au même conteneur.

![](assets/fb-boots-promo.png)

## Score de propension {#concept_A506150674AD45DB98D3CC07E560D334}

<!-- propensity-scoring.xml -->

Déterminez la tendance des clients à retourner sur un site après l’abandon d’un panier. Le score de propension est intégré à Experience Cloud Triggers. Il est disponible pour les triggers d’abandon.

![Résultat de l&#39;étape](assets/propensity-scoring.png)

Par exemple, certains clients abandonnent leur panier pour bénéficier d’avantages proposés afin de retourner sur le site. Pour limiter la baisse du chiffre d’affaires, l’algorithme du score de propension permet d’identifier les visiteurs ayant abandonné leur panier qui ne retourneront pas sur le site sans offres spéciales.

Vous pouvez :

* Éviter de surexposer les clients au remarketing.
* Identifier les bons clients ayant abandonné leur panier et mapper leur activité au bon message.
* Accroître le chiffre d’affaires en sachant quels clients reviendront ou non sur le site.

## Avantages du score de propension {#section_CA99874A25434CC0BF01D0DA61608889}

Vous pouvez effectuer une découverte de données pour identifier les comportements masqués ou les modèles qui existent dans les données. Le score de propension permet tout particulièrement d’identifier des groupes de clients similaires à l’aide de méthodes plus objectives et ciblées que la segmentation ou le filtrage. En outre, le score de propension permet de configurer des fonctionnalités de prédiction pour identifier le comportement des clients à forte valeur ajoutée de votre entreprise.

Une fois l’audience à forte valeur ajoutée identifiée, vous pouvez entrer en contact avec elle. Par exemple, si vous êtes une entreprise B2B, vous pouvez disposer de prospects pour des appels commerciaux qui peuvent être comptabilisés et pour lesquels vous pouvez déterminer la probabilité de conversion hors ligne. Dans la mesure où chaque prospect augmente les coûts, la création d’une offre spéciale qui permet d’identifier les clients pour lesquels la probabilité de conversion est la plus élevée est plus efficace et plus rentable en ce qui concerne l’attribution de vos ressources.

Le score de propension aide à identifier les facteurs qui permettent le plus de prévoir un score spécifique ou d’augmenter la probabilité qu’un événement ait lieu. Il permet aussi de répondre à des questions spécifiques :

* Le client fera-t-il l’objet d’une conversion ?
* Le client répondra-t-il à un e-mail ?
* Le client effectuera-t-il un nouvel achat ?

Le score de propension vous permet de répondre à ces questions et d’identifier les visiteurs ayant tendance à passer à l’action qui peuvent être configurés et comptabilisés.
