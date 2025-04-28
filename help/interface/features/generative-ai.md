---
title: IA dans les applications Experience Cloud
description: Découvrez l’IA générative et la manière dont les applications Experience Cloud utilisent genAI et  [!DNL AI Assistant].
solution: Experience Cloud
feature: AI Assistant, Generative AI
topic: Administration
role: Admin
level: Intermediate
exl-id: bdc51956-82aa-4aae-b627-a2018f80b5f5
source-git-commit: 0e9f35807a856e87923b2ba48f37365870cbd339
workflow-type: tm+mt
source-wordcount: '1174'
ht-degree: 3%

---

# L’IA dans les produits Experience Cloud

Cette page vous aide à découvrir quels produits prennent en charge l’IA générative, la [!DNL AI Assistant] et si Adobe Firefly est compatible. Vous trouverez également des liens vers des ressources d’aide spécifiques à un produit sur l’utilisation de l’IA dans Experience Cloud.

**À propos de Generative AI**

L’IA générative est un type d’intelligence artificielle qui fait plus que simplement répondre aux questions. Il peut _créer_ du contenu et _générer une réponse_ à vos questions ou instructions (appelées _invites_).

* **Créer :** la possibilité de générer entièrement du contenu (texte, images, musique ou vidéos), en fonction de son entraînement et des invites de saisie. Cette capacité est l’aspect _génératif_ de l’IA générative.

* **Générer une réponse :**’IA fournit une réponse ou une réaction à une invite, en s’appuyant généralement sur ses données et référentiels de connaissances disponibles.

**En quoi consiste [!DNL AI Assistant] ?**

[!DNL AI Assistant] est un outil de conversation pris en charge dans Experience Platform et les applications associées. Utilisez-le pour acquérir rapidement des _connaissances sur les produits_ et, dans les applications prises en charge, obtenir _informations opérationnelles_ presque immédiatement.

* **Connaissance des produits :** la connaissance des produits fait référence à des concepts et à des sujets reposant sur la documentation d’Experience League. Les réponses d’Experience League sont vérifiables et citées avec des liens. Découvrez les types d’[invites basées sur les objectifs](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) pour tirer le meilleur parti de [!DNL AI Assistant].

* **Informations opérationnelles** les informations opérationnelles se rapportent aux réponses que l’assistant IA génère sur vos objets de métadonnées (attributs, audiences, flux de données, jeux de données, destinations, parcours, schémas et sources), y compris les nombres, les recherches et l’impact de la parenté. Grâce à l’assistant d’IA, vous pouvez découvrir des informations opérationnelles en quelques secondes plutôt qu’en quelques heures.

[En savoir plus](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/landing)

<!-- **Your data remains yours**

In AI Assistant, security is the priority:

* Customer data is not used to train language models.
* AI Assistant looks at only the documents that you tell it to. You are in control.
* Your people can use AI Assistant only on documents they can access.
* It's audit-ready: Responses are attributable to source documents.
* Enterprise controls are in place to manage who has AI access in the company.
 -->

## Disponibilité de l’IA dans les produits Experience Cloud

Découvrez la prise en charge de l’IA générative ou des [!DNL AI Assistant] dans les produits Experience Cloud. La prise en charge d’Adobe Firefly est également indiquée.

* [[!DNL GenStudio for Performance Marketing]](#gspm)
* [[!DNL Experience Manager Sites]](#aem-sites)
* [[!DNL Journey Optimizer]](#journey-optimizer)
* [[!DNL Journey Optimizer] B2B edition](#ajo-b2b)
* [[!DNL Campaign] Managed Services (Campaign v8 Web)](#campaign-cs)
* [[!DNL Customer Journey Analytics]](#cja)
* [[!DNL Customer Journey Analytics]](#cja-captions)
* [[!DNL Real-Time CDP]](#rtcdp)
* [[!DNL Marketo]](#marketo)
* [[!DNL Workfront]](#workfront)

## Adobe GenStudio for Performance Marketing {#gspm}

[!DNL GenStudio for Performance Marketing] est une plateforme gérée par l’IA qui vous permet de générer et de gérer du contenu marketing conforme aux normes de votre marque et aux politiques de votre entreprise. Générez du contenu pour les e-mails, les méta-annonces, les annonces LinkedIn, les annonces d’affichage et les bannières.

Vous pouvez également entraîner GenStudio for Performance Marketing sur votre marque à l’aide d’exemples, de descriptions des personnages et des produits des clients, ainsi que de directives de marque.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/genstudio-for-performance-marketing/user-guide/home)

Compatibilité avec Adobe Firefly : **Oui**

## Adobe [!DNL Experience Manager Sites] {#aem-sites}

Dans AEM Sites, vous pouvez utiliser _[!UICONTROL Générer des variations]_. Cette fonctionnalité utilise l’intelligence artificielle générative pour créer des variations de contenu en fonction de vos invites de saisie. Les invites sont fournies par Adobe ou créées et gérées par vous.

Après avoir créé des variations, vous pouvez utiliser le contenu sur votre site web et mesurer son succès à l’aide de la fonctionnalité [Expérimentation](https://www.aem.live/docs/experimentation) de Edge Delivery Services. Vous avez également la possibilité de générer des images dans Adobe Express à l’aide des fonctionnalités d’IA générative de Firefly.

**Exemples d’entrée et de sortie**

Les champs de saisie sont les suivants :

* Nombre de variations à générer
* Audience Source
* Cible de l’audience
* Contexte supplémentaire
* Invites orientées client

La sortie est une copie de contenu ou de marché générée.

[En savoir plus sur Générer des variations](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations-integrated-editor)

Compatibilité avec Adobe Firefly : **Oui**

## Adobe [!DNL Journey Optimizer] {#journey-optimizer}

Dans [!DNL Journey Optimizer] (AJO), vous pouvez utiliser [Assistant IA](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant) pour acquérir des _connaissances sur les produits_ et _informations opérationnelles_ (version bêta).

### Exemples d’utilisation de l’assistant AI dans AJO

Voici un exemple d’entrée pour la connaissance des produits :

* _Combien d’activités en cours puis-je avoir dans un sandbox Journey Optimizer ?_

  La sortie est générée à partir d’Experience League et d’autres entrepôts de données Adobe.

Voici un exemple d’entrée pour les informations opérationnelles :

* _Combien de Parcours ont été créés au cours des sept derniers jours ?_

  Pour la sortie, l’assistant AI interroge un magasin de données spécifique au client. Le magasin de données contient des données opérationnelles centralisées sur [!UICONTROL Parcours ]. Cette fonctionnalité est indépendante du client et extrait les métadonnées uniquement des objets métier. Il n’accède pas aux données de votre sandbox.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant).

Compatibilité avec Adobe Firefly : **Non**

### Assistant d’IA pour la génération de contenu (AJO Prime et Ultimate) {#ajo-prime}

Dans AJO _Prime_ et _Ultimate_, vous pouvez utiliser [génération de contenu](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative) pour la génération de contenu afin d’apporter des suggestions proactives de variation de contenu pour le texte et les images.

Cette fonctionnalité est disponible pour les canaux e-mail, notification push, page web, contenu et SMS. Il permet de générer du texte et des images à partir d’invites. La sortie de la génération de contenu dans AJO Prime et Ultimate est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative)

Compatibilité avec Adobe Firefly : **Oui**

## [!DNL Journey Optimizer B2B Edition] {#ajo-b2b}

Journey Optimizer B2B edition utilise [!DNL AI Assistant] pour vous aider à mieux connaître les produits.

Exemple d’entrée :

* _Comment envoyer un e-mail dans un parcours de compte ?_

  La sortie de connaissance des produits est extraite d’Experience League.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/ai-assistant/ai-assistant-overview)

Compatibilité avec Adobe Firefly : **Non**

## [!DNL Campaign] Managed Services (Campaign v8 Web) {#campaign-cs}

Campaign v8 (Campaign Managed Cloud Services) utilise des [!DNL AI Assistant] pour la génération de contenu. Cette fonctionnalité vous permet de générer automatiquement du contenu personnalisé, attrayant et efficace en fonction de votre objectif marketing, avec du contenu optimisé pour les styles de contour de marque, les mises en page, le ton, etc. Vous pouvez l’utiliser sur plusieurs canaux tels que les e-mails, les SMS et les notifications push.

**Remarque :** la sortie de la génération de contenu dans Campaign Managed Cloud Services est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-gs)

Compatibilité avec Adobe Firefly : **Oui**

## [!DNL Customer Journey Analytics] {#cja}

Customer Journey Analytics utilise [!DNL AI Assistant] pour vous aider à découvrir les connaissances et les informations sur les produits d’Experience League.

Si vous êtes un nouvel utilisateur, apprenez rapidement les concepts de Customer Journey Analytics et intégrez-vous aux produits et fonctionnalités. Par exemple :

* _Comment envoyer un e-mail dans un parcours de compte ?_

Les utilisateurs expérimentés bénéficient de cas d’utilisation avancés ou apprennent des stratégies pour effectuer des tâches à un rythme rapide. Vous pouvez rapidement comprendre les concepts, résoudre les problèmes ou rechercher des informations.

[En savoir plus](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/cja-b2c-overview/ai-assistant)

Compatibilité avec Adobe Firefly : **Non**

## [!DNL Customer Journey Analytics] {#cja-captions}

Vous pouvez utiliser les _Légendes intelligentes_ dans les [!DNL Customer Journey Analytics] afin d’obtenir des informations en langage naturel pour les visualisations Workspace les plus utilisées. Les légendes intelligentes sont idéales pour les analystes qui ont besoin de récits et de contexte à partager avec d’autres utilisateurs. Les utilisateurs professionnels peuvent l’utiliser pour découvrir rapidement des points à retenir de haut niveau.

Par exemple :

* **Entrée :** dans CJA, exécutez une visualisation prise en charge (avec une ligne, une zone, un graphique à barres, un flux ou un abandon), puis cliquez sur **[!UICONTROL Légendes intelligentes]**.

* **Output :** afficher les légendes générées automatiquement en langage naturel qui présentent le contexte et les principaux points à retenir. Vous pouvez ensuite agir sur les données générées, par exemple les examiner, les copier et les partager avec votre organisation. [Voir comment ](https://video.tv.adobe.com/v/3420131/?quality=12&learn=on#_blank)

[En savoir plus](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions)

Compatibilité avec Adobe Firefly : **Non**

## [!DNL Real-Time CDP] {#rtcdp}

Real-Time CDP utilise [!DNL AI Assistant] pour vous aider à acquérir des connaissances sur les produits Experience League. Il offre également des informations opérationnelles (en version bêta). [!DNL AI Assistant] interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées, partitionnées dans votre sandbox AEP. Le système extrait les métadonnées uniquement à partir des attributs, des audiences, des flux de données, des jeux de données, des destinations, des schémas et des sources et n’accède pas aux données dans le sandbox.

Par exemple, si vous effectuez une requête sur une audience, [!DNL AI Assistant] pouvez accéder au nom de l’audience et aux autres métadonnées associées, mais pas aux profils au sein de cette audience.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home)

Compatibilité avec Adobe Firefly : **Non**

## [!DNL Marketo] {#marketo}

Les fonctionnalités d’IA générative de Adobe Dynamic Chat vous permettent d’optimiser la productivité de vos agents de vente, d’obtenir des informations sur les intentions des visiteurs de votre site web et de répondre aux questions des visiteurs en toute sécurité. Vous pouvez préapprouver les questions, les réponses et le résumé de la conversation.

[En savoir plus](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/overview)

Compatibilité avec Adobe Firefly : **Non**

## [!DNL Workfront] {#workfront}

[!DNL AI Assistant] dans [!DNL Workfront] vous aide à accomplir votre travail en offrant des informations et des suggestions in-app. Vous pouvez effectuer les actions suivantes :

* Obtenez des résumés de certains objets, ce qui vous donne une vue d’ensemble de l’intention ou des détails de l’objet.
* Posez des questions et [!DNL AI Assistant] laisser trouver des réponses sur Experience League.
* Obtenez des formules générées en fonction de vos invites. Vous pouvez également résoudre des erreurs dans vos expressions personnalisées non valides dans les champs calculés.
* Localisez les projets, les tâches et les événements.

[En savoir plus](https://experienceleague.adobe.com/en/docs/workfront/using/basics/ai-assistant/ai-assistant-overview)

Compatibilité avec Adobe Firefly : **Non**
