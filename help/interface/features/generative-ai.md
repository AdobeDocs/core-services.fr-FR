---
title: IA dans les applications Experience Cloud
description: Découvrez comment les applications Experience Cloud utilisent l’IA générative et l’assistant d’IA.
solution: Experience Cloud
feature: AI Assistant, Generative AI
topic: Administration
role: Admin
level: Intermediate
exl-id: bdc51956-82aa-4aae-b627-a2018f80b5f5
source-git-commit: 7060cc75e06a00dd06475958f94b03ceaf39ae62
workflow-type: tm+mt
source-wordcount: '1314'
ht-degree: 4%

---

# IA dans les applications Experience Cloud

Cette page vous aide à comprendre l’IA générative et comment l’utiliser dans les applications Experience Cloud. Découvrez les fonctionnalités de produit qui utilisent l’IA générative, l’assistant d’IA et si Adobe Firefly est pris en charge.

## À propos de l’IA générative et de l’assistant d’IA

L’IA générative est un type d’intelligence artificielle qui fait plus que simplement répondre aux questions. Il _crée_ du contenu et _répond_ à vos _invites_ (questions et instructions).

* **Créer :** fait référence à la capacité de l’IA à générer du nouveau contenu (texte, images, musique ou vidéos) à partir de zéro, en fonction de sa formation et des invites de saisie. Cette capacité est l’aspect _génératif_ de l’IA générative.

* **Répondre :** fait référence à l’IA qui fournit une réponse ou une réaction à une invite spécifique, en s’appuyant généralement sur ses connaissances ou ses capacités de raisonnement.

Si vous découvrez Experience Cloud, vous pouvez utiliser l’IA générative pour acquérir rapidement des connaissances sur les produits. En tant qu’utilisateur expérimenté, vous pouvez découvrir des informations opérationnelles en quelques secondes plutôt qu’en quelques heures.

### Assistant IA

[Assistant AI](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/landing) est un outil de conversation pris en charge dans Experience Platform et les applications associées. Utilisez-le pour accélérer vos workflows, améliorer votre connaissance des produits, résoudre les problèmes ou parcourir les informations. Dans certaines applications, l’assistant d’IA vous permet de découvrir immédiatement des informations opérationnelles.

Les réponses d’Experience League relatives à la connaissance des produits sont vérifiables et citées avec des liens. Découvrez les types d’[invites basées sur les objectifs](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) pour tirer le meilleur parti de l’assistant IA.

## Applications avec fonctionnalités prenant en charge l’IA

* [GenStudio for Performance Marketing](#gspm)
* [Générer des variations dans AEM Sites (Cloud Service)](#aem-sites)
* [Assistant IA dans Journey Optimizer](#journey-optimizer)
* [Adobe Journey Optimizer Prime et Ultimate](#ajo-prime-ultimate)
* [Journey Optimizer édition B2B](#ajo-b2b)
* [Assistant AI dans Journey Optimizer Prime et Ultimate](#ajo-prime-ultimate)
* [Assistant d’IA dans Journey Optimizer B2B edition](#ajo-b2b)
* [Assistant IA dans Campaign Managed Cloud Services](#campaign-cs)
* [Assistant AI dans Customer Journey Analytics](#cja)
* [Légendes intelligentes dans Customer Journey Analytics](#cja-captions)
* [Assistant AI dans Real-Time CDP](#rtcdp)
* [Dynamic Chat dans Marketo](#marketo)
* [Assistant AI dans Workfront](#workfront)

### GenStudio for Performance Marketing {#gspm}

[GenStudio for Performance Marketing](https://experienceleague.adobe.com/fr/docs/genstudio-for-performance-marketing/user-guide/home) n’est pas une fonctionnalité, mais une plateforme générée pilotée par l’IA. Ses fonctionnalités d’IA générative transforment la manière dont le contenu marketing est créé, révisé, partagé et analysé.

Sur la page d’accueil [Créer](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/create/overview), vous pouvez créer des expériences hautement performantes sur la marque. Générer le contenu pour :

* E-mails
* Métadonnées publicitaires
* Annonces LinkedIn
* Afficher les publicités
* Bannières

Vous pouvez également entraîner GenStudio for Performance Marketing sur votre marque à l’aide d’exemples, de descriptions des personnages et des produits des clients, ainsi que de directives de marque. [En savoir plus…](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/create/overview)

**Compatible avec Adobe Firefly :** Prévu

### Générer des variations dans Experience Manager Sites {#aem-sites}

[Générer des variations](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations) dans AEM Sites utilise l’IA générative pour créer des variations de contenu en fonction des invites. Ces invites sont fournies par [Adobe](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#get-started) ou créées et gérées par [utilisateurs](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#create-prompt).

Après avoir créé des variations, vous pouvez utiliser le contenu sur votre site web et mesurer son succès à l’aide de la fonctionnalité Expérimentation de Edge Delivery Services.

### Champs d’entrée et de sortie

Les champs de saisie sont les suivants :

* Nombre de variations à générer
* Audience Source
* Cible de l’audience
* Contexte supplémentaire
* Invites orientées client

La sortie est une copie de contenu ou de marché générée.

Vous avez également la possibilité de générer des images dans Adobe Express à l’aide des fonctionnalités d’IA générative de Firefly. [En savoir plus…](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#generate-image)

**Compatible avec Adobe Firefly :** Oui

## Assistant IA dans Journey Optimizer {#journey-optimizer}

Dans Journey Optimizer, l’assistant d’IA peut vous aider à acquérir des connaissances sur les produits et des informations opérationnelles.

**Connaissance des produits :** l’assistant AI interroge les entrepôts de données Adobe (tels que la documentation du produit Experience League) pour le produit insight. La sortie est indépendante du client ou de la cliente.

Exemple :

* _Combien d’activités en cours puis-je avoir dans un sandbox Adobe Journey Optimizer ?_

**Informations opérationnelles (Beta)** - L’assistant AI interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées sur les Parcours, partitionnées par le sandbox du client. Cette fonctionnalité extrait les métadonnées uniquement des objets métier et n’accède pas aux données du sandbox.

Exemple d’invite :

* _Combien de Parcours ont été créés au cours des sept derniers jours ?_

La sortie d’Operational Insights dépend des métadonnées extraites des objets commerciaux du client. Cette sortie est indépendante du client ou de la cliente.

_Parcours_ est le seul objet disponible pour l’assistant AI dans Journey Optimizer, et les métadonnées sont extraites du sandbox actuel. [En savoir plus...](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant).

**Compatible avec Adobe Firefly :** Non

## Assistant AI dans Journey Optimizer Prime et Ultimate {#ajo-prime-ultimate}

Journey Optimizer Prime et Ultimate utilisent [l’assistant AI pour l’accélérateur de contenu](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative) pour apporter des suggestions proactives de variation de contenu pour le texte et les images.

Cette fonctionnalité est disponible pour les canaux [e-mail](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-email), [notifications push](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-push), [page web](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-web), [contenu](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-experimentation) et [SMS](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-sms). Il permet de générer du texte et des images à partir d’invites.

**Remarque :** la sortie de l’accélérateur de contenu dans AJO Prime et Ultimate est indemnisée.

**Compatible avec Adobe Firefly :** Oui

## Assistant d’IA dans Journey Optimizer B2B edition {#ajo-b2b}

Journey Optimizer B2B edition utilise l’[assistant AI](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/ai-assistant/ai-assistant-overview) pour vous aider à acquérir des connaissances sur les produits, en fonction des invites relatives à ces connaissances.

**Connaissance du produit** - Interroge les entrepôts de données Adobe (tels que la documentation du produit Experience League) pour le produit insight. Cette sortie est indépendante du client ou de la cliente.

* **Input :** comment envoyer un e-mail dans un parcours de compte ?

* **Output :** extractions de la connaissance des produits d’Experience League (documentation publique). [En savoir plus…](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/ai-assistant/question-guidance)

**Compatible avec Adobe Firefly :** Non

## Assistant IA dans Campaign Managed Cloud Services {#campaign-cs}

Campaign Managed Cloud Services utilise [l’assistant AI pour l’accélérateur de contenu](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-gs). Cette fonctionnalité vous permet de générer automatiquement du contenu personnalisé, attrayant et efficace en fonction de votre objectif marketing, avec du contenu optimisé pour les styles de contour de marque, les mises en page, le ton, etc. Vous pouvez l’utiliser sur plusieurs canaux tels que [e-mail](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-content), [SMS](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-sms) et [push](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-push).

**Remarque :** la sortie de l’accélérateur de contenu dans Campaign Managed Cloud Services est indemnisée.

**Compatible avec Adobe Firefly :** Oui

## Assistant AI dans Customer Journey Analytics {#cja}

Customer Journey Analytics utilise l’[assistant AI](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/cja-b2c-overview/ai-assistant) pour vous aider à découvrir les connaissances et les informations sur les produits d’Experience League.

**Exemple d’invite :** Comment créer une mesure calculée ?

Les nouveaux utilisateurs peuvent l’utiliser pour apprendre les concepts de Customer Journey Analytics et s’intégrer à des produits et fonctionnalités que vous ne connaissez pas.

Les utilisateurs expérimentés peuvent utiliser l’assistant AI pour présenter des cas d’utilisation plus avancés ou des conseils et astuces et effectuer des tâches à un rythme rapide. comprendre les concepts, résoudre les problèmes ou rechercher des informations ; [En savoir plus…](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/ai-assistant#knowledge)

**Compatible avec Adobe Firefly :** Non

## Légendes intelligentes dans Customer Journey Analytics {#cja-captions}

[Légendes intelligentes](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions) dans Customer Journey Analytics fournit des informations en langage naturel pour les visualisations Workspace les plus utilisées.

**Compatible avec Adobe Firefly :** Non

## Assistant AI dans Real-Time CDP {#rtcdp}

Real-Time CDP utilise l’[assistant AI](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) pour vous aider à découvrir les connaissances et les informations sur les produits d’Experience League. [Obtenez des conseils](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/questions) pour poser des questions.

Il offre également des informations opérationnelles (en version bêta). L’assistant AI interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées, partitionnées par le sandbox AEP du client. Il extrait les métadonnées uniquement des attributs, des audiences, des flux de données, des jeux de données, des destinations, des schémas et des sources et n’accède pas aux données du sandbox.

Par exemple, pour une requête sur une audience, [!DNL AI Assistant] pouvez accéder au nom de l’audience et aux autres métadonnées associées, mais pas aux profils au sein de cette audience.

Par exemple :

* Entrée : _De combien de jeux de données dispose-t-on ?_

* Réponse : la sortie Operational Insights dépend des métadonnées extraites des objets métier du client (attributs, audiences, flux de données, jeux de données, destinations, schémas et sources) et inclut un lien vers une page d’interface utilisateur spécifique contenant des données interrogées.

Pour obtenir d’autres exemples, consultez les tableaux d’entrée _Connaissances du produit_ et _Informations opérationnelles_ dans l’assistant [IA d’Experience Platform](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home)

**Compatible avec Firefly :** Non

## Dynamic Chat dans Marketo {#marketo}

Les fonctionnalités d’IA générative de Adobe Dynamic Chat vous permettent d’optimiser la productivité de vos agents de vente, d’obtenir des informations sur les intentions des visiteurs de votre site web et de répondre aux questions des visiteurs en toute sécurité. Vous pouvez préapprouver les questions, les réponses et le résumé de la conversation. [En savoir plus…](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/overview)

**Compatible avec Firefly :** Non

## Assistant AI dans Workfront {#workfront}

L’assistant AI dans Workfront vous aide à accomplir votre travail en offrant des informations et des suggestions in-app. Vous pouvez effectuer les actions suivantes :

* Obtenez des résumés de certains objets, ce qui vous donne une vue d’ensemble de l’intention ou des détails de l’objet.
* Posez des questions et [!DNL AI Assistant] laisser trouver des réponses sur Experience League.
* Obtenez des formules générées en fonction de vos invites. Vous pouvez également résoudre des erreurs dans vos expressions personnalisées non valides dans les champs calculés.
* Localisez les projets, les tâches et les événements.

[En savoir plus…](https://experienceleague.adobe.com/en/docs/workfront/using/basics/ai-assistant/ai-assistant-overview)

**Compatible avec Firefly :** Non
