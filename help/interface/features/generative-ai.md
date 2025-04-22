---
title: IA dans les applications Experience Cloud
description: Découvrez l’IA générative et la manière dont les applications Experience Cloud utilisent genAI et  [!DNL AI Assistant].
solution: Experience Cloud
feature: AI Assistant, Generative AI
topic: Administration
role: Admin
level: Intermediate
exl-id: bdc51956-82aa-4aae-b627-a2018f80b5f5
source-git-commit: 4676c606f132ab835e0d1f8cdbc81d932e358028
workflow-type: tm+mt
source-wordcount: '1041'
ht-degree: 3%

---

# L’IA dans les produits Experience Cloud

Cette page vous aide à découvrir quels produits prennent en charge l’IA générative, la [!DNL AI Assistant] et si Adobe Firefly est compatible. Vous trouverez également des liens vers des ressources d’aide spécifiques à un produit sur l’utilisation de l’IA dans Experience Cloud.

**À propos de Generative AI**

L’IA générative est un type d’intelligence artificielle qui fait plus que simplement répondre aux questions. Il peut _créer_ du contenu et _répondre_ à vos questions ou instructions (appelées _invites_).

* **Créer :** la capacité de l’IA à générer du nouveau contenu (texte, images, musique ou vidéos) à partir de zéro, en fonction de son entraînement et des invites de saisie. Cette capacité est l’aspect _génératif_ de l’IA générative.

* **Répondre :** l’IA qui fournit une réponse ou une réaction à une invite, en s’appuyant généralement sur ses connaissances ou ses capacités de raisonnement.

Grâce à l’IA générative, vous pouvez acquérir rapidement des connaissances sur les produits si vous découvrez Experience Cloud. Les utilisateurs chevronnés peuvent découvrir des informations opérationnelles en quelques secondes plutôt qu’en quelques heures.

**En quoi consiste [!DNL AI Assistant] ?**

[!DNL AI Assistant] est un outil de conversation pris en charge dans Experience Platform et les applications associées. Ces applications l’utilisent de la même manière, mais avec des avantages spécifiques au produit. Utilisez-le pour accélérer vos workflows, améliorer votre connaissance des produits, résoudre les problèmes ou parcourir les informations. Dans certaines applications, [!DNL AI Assistant] permet de découvrir immédiatement des informations opérationnelles.

Les réponses d’Experience League relatives à la connaissance des produits sont vérifiables et citées avec des liens. Découvrez les types d’[invites basées sur les objectifs](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) pour tirer le meilleur parti de [!DNL AI Assistant].

[En savoir plus](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/landing)

<!-- **Your data remains yours**

In AI Assistant, security is the priority:

* Customer data is not used to train language models.
* AI Assistant looks at only the documents that you tell it to. You are in control.
* Your people can use AI Assistant only on documents they can access.
* It's audit-ready: Responses are attributable to source documents.
* Enterprise controls are in place to manage who has AI access in the company. -->

## Disponibilité de l’IA dans les produits Experience Cloud

Découvrez la prise en charge de l’IA générative ou de la [!DNL AI Assistant] dans les produits Experience Cloud et si Adobe Firefly est pris en charge.

* [[!DNL GenStudio for Performance Marketing]](#gspm)
* [Générer des variations dans  [!DNL Experience Manager Sites]](#aem-sites)
* [[!DNL AI Assistant] dans  [!DNL Journey Optimizer]](#journey-optimizer)
* [[!DNL AI Assistant] dans [!DNL Journey Optimizer] Prime et Ultimate](#ajo-prime-ultimate)
* [[!DNL AI Assistant] dans [!DNL Journey Optimizer] B2B edition](#ajo-b2b)
* [Interface utilisateur web d’[!DNL AI Assistant] in [!DNL Campaign] v8](#campaign-cs)
* [[!DNL AI Assistant] dans  [!DNL Customer Journey Analytics]](#cja)
* [Légendes intelligentes dans  [!DNL Customer Journey Analytics]](#cja-captions)
* [[!DNL AI Assistant] dans  [!DNL Real-Time CDP]](#rtcdp)
* [Dynamic Chat dans  [!DNL Marketo]](#marketo)
* [[!DNL AI Assistant] dans  [!DNL Workfront]](#workfront)

## GenStudio for Performance Marketing {#gspm}

[!DNL GenStudio for Performance Marketing] est une plateforme gérée par l’IA qui vous permet de générer et de gérer du contenu marketing conforme aux normes de votre marque et aux politiques de votre entreprise. Générez du contenu pour les e-mails, les méta-annonces, les annonces LinkedIn, les annonces d’affichage et les bannières.

Vous pouvez également entraîner GenStudio for Performance Marketing sur votre marque à l’aide d’exemples, de descriptions des personnages et des produits des clients, ainsi que de directives de marque.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/genstudio-for-performance-marketing/user-guide/home)

Compatibilité avec Adobe Firefly : **Prévu**

## Générer des variations dans les [!DNL Experience Manager Sites] {#aem-sites}

[!UICONTROL Générer des variations] dans AEM Sites utilise l’IA générative pour créer des variations de contenu en fonction des invites. Ces invites sont fournies par Adobe ou créées et gérées par vous.

Après avoir créé des variations, vous pouvez utiliser le contenu sur votre site web et mesurer son succès à l’aide de la fonctionnalité Expérimentation de Edge Delivery Services. Vous avez également la possibilité de générer des images dans Adobe Express à l’aide des fonctionnalités d’IA générative de Firefly.

[En savoir plus](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations)

Compatibilité avec Adobe Firefly : **Oui**

## Assistant AI dans [!DNL Journey Optimizer] {#journey-optimizer}

En [!DNL Journey Optimizer], utilisez [!DNL AI Assistant] pour acquérir des connaissances sur les produits et des informations opérationnelles. Par exemple, demandez _Combien d’activités en direct puis-je avoir dans un sandbox Journey Optimizer ?_ Vous obtiendrez immédiatement votre réponse d’Experience League et d’autres entrepôts de données Adobe.

[!DNL AI Assistant] fournit également des informations opérationnelles (version bêta). Par exemple, vous pouvez rapidement savoir combien de Parcours ont été créés au cours des sept derniers jours.

Pour obtenir des informations opérationnelles, [!DNL AI Assistant] interroge un magasin de données spécifique au client. Le magasin de données contient des données opérationnelles centralisées sur [!UICONTROL Parcours ]. Cette fonctionnalité est indépendante du client et extrait les métadonnées uniquement des objets métier. Il n’accède pas aux données de votre sandbox.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant).

Compatibilité avec Adobe Firefly : **Non**

## Assistant AI dans [!DNL Journey Optimizer] Prime et Ultimate {#ajo-prime-ultimate}

[!DNL Journey Optimizer] Prime et Ultimate utilisent [!DNL AI Assistant] pour l’accélérateur de contenu afin d’apporter des suggestions proactives de variation de contenu pour le texte et les images.

Cette fonctionnalité est disponible pour les canaux e-mail, notification push, page web, contenu et SMS. Il permet de générer du texte et des images à partir d’invites. La sortie de l’accélérateur de contenu dans AJO Prime et Ultimate est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative)

Compatibilité avec Adobe Firefly : **Oui**

## Assistant AI dans [!DNL Journey Optimizer B2B Edition] {#ajo-b2b}

Journey Optimizer B2B edition utilise [!DNL AI Assistant] pour vous aider à mieux connaître les produits.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/ai-assistant/ai-assistant-overview)

Compatibilité avec Adobe Firefly : **Non**

## Assistant AI dans l’interface utilisateur web d’[!DNL Campaign] v8 {#campaign-cs}

Campaign Managed Cloud Services utilise [!DNL AI Assistant] pour l’accélérateur de contenu. Cette fonctionnalité vous permet de générer automatiquement du contenu personnalisé, attrayant et efficace en fonction de votre objectif marketing, avec du contenu optimisé pour les styles de contour de marque, les mises en page, le ton, etc. Vous pouvez l’utiliser sur plusieurs canaux tels que les e-mails, les SMS et les notifications push.

**Remarque :** la sortie de l’accélérateur de contenu dans Campaign Managed Cloud Services est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-gs)

Compatibilité avec Adobe Firefly : **Oui**

## Assistant AI dans [!DNL Customer Journey Analytics] {#cja}

Customer Journey Analytics utilise [!DNL AI Assistant] pour vous aider à découvrir les connaissances et les informations sur les produits d’Experience League. Si vous êtes un nouvel utilisateur, apprenez rapidement les concepts de Customer Journey Analytics et intégrez-vous aux produits et fonctionnalités.

Les utilisateurs expérimentés bénéficient de cas d’utilisation avancés ou apprennent des stratégies pour effectuer des tâches à un rythme rapide. comprendre les concepts, résoudre les problèmes ou rechercher des informations ;

[En savoir plus](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/cja-b2c-overview/ai-assistant)

Compatibilité avec Adobe Firefly : **Non**

## Légendes intelligentes dans [!DNL Customer Journey Analytics] {#cja-captions}

Les Légendes intelligentes dans [!DNL Customer Journey Analytics] fournissent des informations en langage naturel pour les visualisations Workspace les plus utilisées. Les légendes intelligentes sont idéales pour les analystes qui ont besoin de récits et de contexte à partager avec d’autres utilisateurs. Les utilisateurs professionnels peuvent l’utiliser pour découvrir rapidement des points à retenir de haut niveau.

[En savoir plus](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions)

Compatibilité avec Adobe Firefly : **Non**

## Assistant AI dans [!DNL Real-Time CDP] {#rtcdp}

Real-Time CDP utilise [!DNL AI Assistant] pour vous aider à acquérir des connaissances sur les produits Experience League. Il offre également des informations opérationnelles (en version bêta). [!DNL AI Assistant] interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées, partitionnées dans votre sandbox AEP. Le système extrait les métadonnées uniquement à partir des attributs, des audiences, des flux de données, des jeux de données, des destinations, des schémas et des sources et n’accède pas aux données dans le sandbox.

Par exemple, si vous effectuez une requête sur une audience, [!DNL AI Assistant] pouvez accéder au nom de l’audience et aux autres métadonnées associées, mais pas aux profils au sein de cette audience.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home)

Compatibilité avec Adobe Firefly : **Non**

## Dynamic Chat dans [!DNL Marketo] {#marketo}

Les fonctionnalités d’IA générative de Adobe Dynamic Chat vous permettent d’optimiser la productivité de vos agents de vente, d’obtenir des informations sur les intentions des visiteurs de votre site web et de répondre aux questions des visiteurs en toute sécurité. Vous pouvez préapprouver les questions, les réponses et le résumé de la conversation.

[En savoir plus](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/overview)

Compatibilité avec Adobe Firefly : **Non**

## [!DNL AI Assistant] dans [!DNL Workfront] {#workfront}

[!DNL AI Assistant] dans [!DNL Workfront] vous aide à accomplir votre travail en offrant des informations et des suggestions in-app. Vous pouvez effectuer les actions suivantes :

* Obtenez des résumés de certains objets, ce qui vous donne une vue d’ensemble de l’intention ou des détails de l’objet.
* Posez des questions et [!DNL AI Assistant] laisser trouver des réponses sur Experience League.
* Obtenez des formules générées en fonction de vos invites. Vous pouvez également résoudre des erreurs dans vos expressions personnalisées non valides dans les champs calculés.
* Localisez les projets, les tâches et les événements.

[En savoir plus](https://experienceleague.adobe.com/en/docs/workfront/using/basics/ai-assistant/ai-assistant-overview)

Compatibilité avec Adobe Firefly : **Non**
