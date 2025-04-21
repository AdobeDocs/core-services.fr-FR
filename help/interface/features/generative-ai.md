---
title: IA dans les applications Experience Cloud
description: Découvrez comment les applications Experience Cloud utilisent l’IA générative et l’assistant d’IA.
solution: Experience Cloud
feature: AI Assistant, Generative AI
topic: Administration
role: Admin
level: Intermediate
hide: false
hidefromtoc: true
index: n
exl-id: bdc51956-82aa-4aae-b627-a2018f80b5f5
source-git-commit: 4c0e9ef974ab31a7d82a61c3a69f7d76389774f9
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

<!-- ## Experience Cloud applications that use AI

Learn how Experience Cloud applications use generative AI or AI Assistant, and whether Adobe Firefly is supported. 

| Application | How Generative AI Is Used | Examples | Adobe Firefly? |
|----------|------------|-----------|----------------|
| GenStudio for Performance Marketing | [GenStudio for Performance Marketing](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/home) is a generative AI-driven platform. It infuses the content creation lifecycle with generative AI capabilities that transform how marketing content is created, reviewed, shared, and analyzed.<br>You can train GenStudio for Performance Marketing on your brand using examples, descriptions of customer personas and products, and brand guidelines. |_GenStudio for Performance Marketing Create_ lets you generate content for emails, Meta ads, LinkedIn ads, display ads, and banners. <br>**Inputs:** <ul><li>Use templates to start the content creation process. </li><li>Add parameters like Brands, Products, and Personas (guidelines) and Content (assets) to shape the generated experience. </li><li>Enter descriptive prompts that describe the context or experience you intend to generate. [Learn more...](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/create/overview)</li></ul> |Yes |
|Adobe Experience Manager Sites (Cloud Service)  | AEM Sites uses [Generate Variations](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations). <br>Generate Variations uses generative AI to create content variations based on prompts. These prompts are either provided by Adobe or created and managed by users. |After creating variations, you can use the content on your website and measure its success using the Experimentation functionality of Edge Delivery Services. <br>**Input:** Input fields include Number of Variations to generate; Audience Source / Audience Target; Additional Context, and customer-driven prompts. <ul><li>[Adobe prompt template](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#get-started) </li><li>[User generated prompt](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#create-prompt)</li></ul> **Output:** Generated Content / Market Copy. You also have the option to generate images in Adobe Express using the generative AI capabilities of Firefly. See [Generate Image](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#generate-image). | Yes|
| Adobe Journey Optimizer |Journey Optimizer uses [AI Assistant](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/home) with two classes of questions:<ul><li>**Product knowledge** - Queries Adobe data stores (such as Experience League product documentation) for product insight. This output is customer agnostic. </li><li>**Operational Insights (Beta)** - queries a customer-specific operational insights data store that contains centralized operational data about Journeys, partitioned by the customer's sandbox. Pulls metadata only from business objects and does not access data within the sandbox.</li></ul>|<ul><li>**Product Knowledge Input:** How many live activities can I have in one Adobe Journey Optimizer sandbox?</li><li>**Product Knowledge Output:** Product Knowledge pulls from Experience League (public documentation). </li><li>**Operational Insights Input:** How many Journeys have been created in the last seven days? </li><li>**Operational Insights Output:** Operational Insights output depends on metadata pulled from customer's business objects. Journeys is the only object available in AJO, and metadata is pulled from the current sandbox. </li></ul> See [Work with the AI Assistant](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant) and [Field Readiness](https://fieldreadiness-adobe.highspot.com/items/6661f1c132683fd5e6a8adf4?lfrm=srp.1#11) | No |
| Journey Optimizer: _Prime_ and _Ultimate_  | [AI Assistant for Content Accelerator](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative) brings proactive content variation suggestions for text and images. It is available for email, push, web and SMS channels. This new capability provides prompt-based text and image generation. |<ul><li> **Email** - generate a full email, text only or image only. [Learn more...](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-email) </li><li> **Push Notification** - Generate a full push notification, text only or image only. [Learn more...](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-push) </li><li> **SMS** - Generate a full SMS, or text only. [Learn more](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-sms) </li><li> **Webpage** - Generate web page images or web page text. [Learn more...](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-web) </li><li> **Content** - Generate content for various messaging campaigns. [Learn more...](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-experimentation)</li></ul> **Note:** Output from Content Accelerator in AJO Prime and Ultimate is indemnified. | Yes   |
| Journey Optimizer B2B Edition  | Uses [AI Assistant](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/get-started/ai-assistant) with one class of questions: <br> **Product knowledge** - Queries Adobe data stores (such as Experience League product documentation) for product insight. This output is customer agnostic. | <ul><li>**Input:** How do I send an email in an account journey?</li><li>**Output:** Product Knowledge pulls from Experience League (public documentation). [Learn more...](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/get-started/ai-assistant)</li></ul>   | No   |
| Campaign Managed Cloud Services | [AI Assistant for Content Accelerator](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-gs) auto-generates personalized, engaging, and effective content based on the marketing objective with content optimized for brand outlined styles, layouts, tone, and more across channels like Email, SMS, Push. |<ul><li> **Email** - Generate a full email, text only or image only. [Learn more](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-content) </li><li> **SMS** - Generate full SMS or text only. [Learn more...](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-sms) </li><li> **Push** - Craft compelling messaging and generate content. [Learn more...](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-push) </li></ul> **Note:** Output from Content Accelerator in Campaign Managed Cloud Services is indemnified. | Yes  |
| Customer Journey Analytics   | CJA uses [AI Assistant](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/ai-assistant) to help you discover product knowledge and insights from Experience League. <br>For example, new users can use it to learn Customer Journey Analytics concepts and onboard yourself to products and features that you are unfamiliar with. <br>Experienced users can use AI Assistant to present more advanced use cases or tips and tricks and perform tasks at a fast pace. Understand concepts, troubleshoot problems, or search for information. [Learn more...](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/ai-assistant#knowledge) | <ul><li>**Product Knowledge Input:** How do I build a calculated metric? </li><li> **Product Knowledge Output:** Product Knowledge pulls from Experience League (public documentation). </li></ul> | No |
| Customer Journey Analytics    | [Intelligent Captions](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions) provides natural-language insights for line visualizations in Workspace visualizations.| <ul><li>**Input:** Line visualizations. Captions are auto-generated based on such line visualizations when you click **Intelligent captions**. </li><li> **Output:** Auto-generated natural-language captions.</li></ul>  | No             |
| Real-Time CDP |Uses [AI Assistant](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/home) to help you discover product knowledge and insights from Experience League. It queries a database and translates data from the database into a human-readable answer. Two classes of questions: <br> **Product knowledge** - Queries Adobe data stores (such as Experience League product documentation) for product insight. This output is customer agnostic. <br> **Operational Insights (Beta)** - Queries a customer-specific operational insights data store that contains centralized operational data, partitioned by the customer's AEP sandbox. Pulls metadata only from Attributes, Audiences, Dataflows, Datasets, Destinations, Schemas, and Sources, and does not access data within the sandbox. <br>For example, for a query about an audience [!DNL AI Assistant] can access the name of the audience and other associated metadata but cannot access the profiles within that audience. | <ul><li>**Product Knowledge Input:** How is profile richness calculated? </li><li>**Product Knowledge Output:** Product Knowledge pulls from Experience League (public documentation). </li><li> **Operational Insights Input:** How many datasets do I have? </li><li> **Operational Insights Output:** Operational Insights output depends on metadata pulled from Customer's business objects (Attributes, Audiences, Dataflows, Datasets, Destinations, Schemas, and Sources), and includes a link to specific UI page containing queried data. </li></ul>For examples, see the _Product Knowledge_ and _Operational Insights_ input tables in [AI Assistant in Experience Platform](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/home)  | No |
| Marketo  | [Dynamic Chat](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/dynamic-chat-overview) creates AI-assisted conversations with customized and pre-approved questions and answers, as well as conversation summary |<ul><li> **Generate Questions:** Provide URLs from which content is extracted and used to generate questions / responses. </li><li> **Conversation Summary:** Generates a summary of a chat conversation. </li></ul> [Learn more...](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/response-library)  | No |
| Workfront | [AI Assistant](https://experienceleague.adobe.com/en/docs/workfront/using/basics/ai-assistant/ai-assistant-overview) in Workfront helps you accomplish your work by offering in-app information and suggestions in a natural-language conversation. AI Assistant offers the following functionality: Summarizes projects/tasks/issues/documents, provides instructions or reference information pulled from the Workfront documentation on Experience League, generates or refines formulas for calculated custom fields.  | <ul><li>**Summarize Project Input:** Summarize this project </li><li> **Summarize Project Output:** Returns brief descriptions of the project's purpose and status, gives examples of tasks that are completed and that are still pending, and provides some additional details and notes.</li><li> **Generate/Refine Formula Input:** "Rewrite this formula to remove the invalid expression error." </li><li> **Generate/Refine Formula Output:** Generated or refined formula. </li></ul>**Note:** AI Assistant may take a few moments to generate the revised formula, depending on the size and complexity of the formula. | No  | -->
