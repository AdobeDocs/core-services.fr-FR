---
title: IA dans les applications Experience Cloud
description: Découvrez l’IA générative (GenAI) et comment les applications Experience Cloud utilisent GenAI et  [!DNL AI Assistant].
solution: Experience Cloud
feature: AI Assistant, Generative AI
topic: Administration
role: Admin
level: Intermediate
exl-id: bdc51956-82aa-4aae-b627-a2018f80b5f5
source-git-commit: 47d3a948511714ea0ce682c205eb29118d36ce62
workflow-type: tm+mt
source-wordcount: '1421'
ht-degree: 3%

---

# IA générative dans les produits Experience Cloud

Cette page vous aide à découvrir quels produits prennent en charge l’IA générative (GenAI), la [!DNL AI Assistant] et si Adobe Firefly est compatible. Vous trouverez également des liens vers des informations sur les différentes manières d’utiliser l’IA dans les applications Experience Cloud.

**À propos de Generative AI**

L’IA générative est un type d’intelligence artificielle qui fait plus que simplement répondre aux questions. Il peut _créer_ du contenu et _générer une réponse_ à vos questions ou instructions (appelées _invites_).

* **Créer :** la possibilité de générer entièrement du contenu (texte, images, musique ou vidéos), en fonction de son entraînement et des invites de saisie. Cette capacité est l’aspect _génératif_ de l’IA générative.

* **Générer une réponse :**’IA fournit une réponse ou une réaction à une invite, en s’appuyant généralement sur ses données et référentiels de connaissances disponibles.

**En quoi consiste [!DNL AI Assistant] ?**

[!DNL AI Assistant] est un outil de conversation pris en charge dans Experience Platform et les applications associées. Utilisez-le pour acquérir rapidement des _connaissances sur les produits_ et, dans le cas des produits pris en charge, des _informations opérationnelles_ presque immédiatement.

* **Connaissance du produit :** la connaissance du produit fait référence à des concepts et des sujets fondés sur la documentation Experience League. Apprenez à créer des invites efficaces [et basées sur des objectifs pour tirer le meilleur parti de [!DNL AI Assistant].](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) Toutes les réponses d’Experience League sont vérifiables et citées avec des liens.

* **Informations opérationnelles :** [les informations](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/questions#objects-questions) opérationnelles font référence aux réponses générées concernant vos objets de métadonnées (attributs, audiences, flux de données, jeux de données, etc.). Avec l’assistant d’IA, vous pouvez accomplir en quelques secondes ce qui, autrement, pourrait prendre des heures ou des jours.

[En savoir plus sur l’assistant AI](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/landing)

<!-- **Your data remains yours**

In AI Assistant, security is the priority:

* Customer data is not used to train language models.
* AI Assistant looks at only the documents that you tell it to. You are in control.
* Your people can use AI Assistant only on documents they can access.
* It's audit-ready: Responses are attributable to source documents.
* Enterprise controls are in place to manage who has AI access in the company.
 -->

## Disponibilité de l’IA dans les produits Experience Cloud

Découvrez comment les applications Experience Cloud suivantes prennent en charge l’IA ou la [!DNL AI Assistant] générative. La prise en charge d’Adobe Firefly est également indiquée.

* [[!DNL GenStudio for Performance Marketing]](#gspm)
* [[!DNL Experience Manager]](#aem)
* [[!DNL Journey Optimizer]](#journey-optimizer)
* [[!DNL Journey Optimizer] B2B edition](#ajo-b2b)
* [[!DNL Campaign] Gestion Cloud Services](#campaign-cs)
* [[!DNL Customer Journey Analytics]](#cja)
* [[!DNL Real-Time CDP]](#rtcdp)
* [[!DNL Marketo]](#marketo)
* [[!DNL Workfront]](#workfront)

## Adobe GenStudio pour le marketing à la performance {#gspm}

[!DNL GenStudio for Performance Marketing] est une plate-forme basée sur l’IA qui vous permet de générer et de gérer du contenu marketing conforme aux normes de votre marque et aux politiques de votre entreprise. Générez du contenu pour les e-mails, les méta-annonces, les publicités LinkedIn, les publicités d’affichage et les bannières.

Vous pouvez également entraîner GenStudio for Performance Marketing sur votre marque à l’aide d’exemples, de descriptions des personnages et des produits des clients, ainsi que de directives de marque.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/genstudio-for-performance-marketing/user-guide/home)

Compatibilité Adobe Firefly : **Oui**

## Adobe [!DNL Experience Manager] {#aem}

Les sections suivantes décrivent brièvement l’IA générative dans les applications AEM.

### Experience Manager Sites

Dans AEM Sites, vous pouvez utiliser _[!UICONTROL l’option Générer des variations]_. Cette fonctionnalité utilise l’intelligence artificielle générative pour créer des variations de contenu en fonction de vos invites de saisie. Les invites sont fournies par Adobe ou créées et gérées par vous.

Après avoir créé des variantes, vous pouvez utiliser le contenu de votre site web et mesurer sa réussite à l’aide de la [fonctionnalité Expérimentation](https://www.aem.live/docs/experimentation) des services de remise Edge. Vous avez également la possibilité de générer des images dans Adobe Express à l’aide des fonctionnalités d’IA générative de Firefly.

**Exemples d’entrée et de sortie**

Les champs de saisie sont les suivants :

* Nombre de variations à générer
* Audience Source
* Cible de l’audience
* Contexte supplémentaire
* Invites créées par le client

La sortie est une copie de contenu ou de marché générée.

Compatibilité Adobe Firefly : **Oui**

[En savoir plus sur Générer des variations](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/generative-ai/generate-variations-integrated-editor)

### Experience Manager Assets

[!UICONTROL Content Hub] est disponible dans le cadre d’[!DNL Experience Manager Assets as a Cloud Service] pour démocratiser l’accès au contenu de marque pour les organisations et leurs partenaires commerciaux. Il se concentre sur la distribution de ressources pour l’activation à grande échelle et la création de variantes de contenu sur la marque pour une meilleure agilité marketing.

Dans Content Hub, vous pouvez créer du contenu avec Adobe Express (si vous disposez de droits Adobe Express). Vous pouvez modifier du contenu existant à l’aide d’outils simples, produire des variations sur la marque avec des modèles et des éléments de marque et créer du contenu avec les dernières fonctionnalités GenAI de [!DNL Adobe Firefly].

[En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/assets/content-hub/product-overview)

Compatibilité Adobe Firefly : **Oui**

## Adobe [!DNL Journey Optimizer] {#journey-optimizer}

Dans [!DNL Journey Optimizer] (AJO), vous pouvez utiliser [Assistant IA](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/get-started/ai-assistant) pour acquérir des _connaissances sur les produits_ et _informations opérationnelles_ (version bêta).

### Exemples d’utilisation de l’assistant AI dans AJO

Voici un exemple d’entrée pour la connaissance des produits :

* _Combien d’activités en cours puis-je avoir dans un sandbox Journey Optimizer ?_

  La sortie est générée à partir d’Experience League et d’autres entrepôts de données Adobe.

Voici un exemple d’entrée pour les informations opérationnelles :

* _Combien de Parcours ont été créés au cours des sept derniers jours ?_

  Pour la sortie, l’assistant AI interroge un magasin de données spécifique au client. Le magasin de données contient des données opérationnelles centralisées sur [!UICONTROL Parcours &#x200B;]. Cette fonctionnalité est indépendante du client et extrait les métadonnées uniquement des objets métier. Il n’accède pas aux données de votre sandbox.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/get-started/ai-assistant).

Compatibilité Adobe Firefly : **Non**

### Assistant d’IA pour la génération de contenu (AJO Prime et Ultimate) {#ajo-prime}

Dans AJO _Prime_ et _Ultimate_, vous pouvez utiliser [génération de contenu](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative) pour la génération de contenu afin d’apporter des suggestions proactives de variation de contenu pour le texte et les images.

Cette fonctionnalité est disponible pour les canaux e-mail, notification push, page web, contenu et SMS. Il permet de générer du texte et des images à partir d’invites. La sortie de la génération de contenu dans AJO Prime et Ultimate est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative)

Compatibilité Adobe Firefly : **Oui**

## [!DNL Journey Optimizer B2B Edition] {#ajo-b2b}

Journey Optimizer B2B edition utilise [!DNL AI Assistant] pour vous aider à mieux connaître les produits.

Exemple d’entrée :

* _Comment envoyer un e-mail dans un parcours de compte ?_

  La sortie de connaissance des produits est extraite d’Experience League.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/journey-optimizer-b2b/user/ai-assistant/ai-assistant-overview)

Adobe Compatibilité Firefly : **Non**

## [!DNL Campaign] Gestion Cloud Services {#campaign-cs}

Campaign Managed Cloud Services permet [!DNL AI Assistant] la génération de contenu. Cette fonctionnalité vous permet de générer automatiquement du contenu personnalisé, attrayant et efficace en fonction de votre objectif marketing, avec du contenu optimisé pour les styles de contour de marque, les mises en page, le ton, etc. Vous pouvez l’utiliser sur des canaux tels que le courrier électronique, les SMS et les notifications push.

**Remarque :** la sortie de la génération de contenu dans Campaign Managed Cloud Services est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/campaign-web/v8/content/ai-assistant/generative-gs)

Compatibilité Adobe Firefly : **Oui**

## [!DNL Customer Journey Analytics] {#cja}

Customer Journey Analytics permet d’utiliser l’IA générative des manières suivantes :

* [!DNL AI Assistant] de connaissances et d’informations sur les produits
* [!UICONTROL Légendes intelligentes] dans les visualisations Workspace
* L’IA et GenAI pour affecter automatiquement chaque métadonnée de ressource dans [!DNL Content Analytics]

**Assistant IA**

Découvrez les connaissances et les informations sur les produits Experience League. Si vous êtes un nouvel utilisateur, apprenez rapidement les concepts de Customer Journey Analytics et intégrez-vous aux produits et fonctionnalités. Par exemple :

* _Comment envoyer un e-mail dans un parcours de compte ?_

Les utilisateurs expérimentés bénéficient de cas d’utilisation avancés ou apprennent des stratégies pour effectuer des tâches à un rythme rapide. Vous pouvez rapidement comprendre les concepts, résoudre les problèmes ou rechercher des informations.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-overview/cja-b2c-overview/ai-assistant)

**Sous-titres intelligents**

Vous pouvez utiliser _des sous-titres_ intelligents pour [!DNL Customer Journey Analytics] obtenir des informations en langage naturel pour les visualisations de Workspace les plus fréquemment utilisées. Les légendes intelligentes sont idéales pour les analystes qui ont besoin de récits et de contexte à partager avec d’autres utilisateurs. Les utilisateurs professionnels peuvent l’utiliser pour découvrir rapidement des plats à emporter de haut niveau.

Par exemple :

* **Entrée :** dans CJA, exécutez une visualisation prise en charge (avec une ligne, une zone, un graphique à barres, un flux ou un abandon), puis cliquez sur **[!UICONTROL Légendes intelligentes]**.

* **Output :** afficher les légendes générées automatiquement en langage naturel qui présentent le contexte et les principaux points à retenir. Vous pouvez ensuite agir sur les données générées, par exemple les examiner, les copier et les partager avec votre organisation. [Voir comment ](https://video.tv.adobe.com/v/3443140/?quality=12&learn=on#_blank&captions=fre_fr)

[En savoir plus](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions)

**Content Analytics**

Le Analytics de contenu utilise l’IA et GenAI pour affecter automatiquement toutes les métadonnées de la ressource, telles que les sujets, les scènes, les couleurs de premier plan, etc. Un attribut est une balise de métadonnées attribuée par l’IA décrivant le contenu d’une ressource ou d’une expérience.

Par exemple : le `color: red` de premier plan est un attribut attribué automatiquement. Les visualisations vous aident à identifier les attributs de vos ressources qui contribuent le plus à la conversion. [En savoir plus](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/content-analytics/report/report#template)

Compatibilité Adobe Firefly : **Non**

## [!DNL Real-Time CDP] {#rtcdp}

Real-Time CDP utilise [!DNL AI Assistant] pour vous aider à acquérir des connaissances sur les produits Experience League. Il offre également des informations opérationnelles (en version bêta). [!DNL AI Assistant] interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées, partitionnées dans votre sandbox AEP. Le système extrait les métadonnées uniquement à partir des attributs, des audiences, des flux de données, des jeux de données, des destinations, des schémas et des sources et n’accède pas aux données dans le sandbox.

Par exemple, si vous effectuez une requête sur une audience, [!DNL AI Assistant] pouvez accéder au nom de l’audience et aux autres métadonnées associées, mais pas aux profils au sein de cette audience.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home)

Compatibilité Adobe Firefly : **Non**

## [!DNL Marketo] {#marketo}

Dans Marketo, l’IA générative est disponible dans les webinaires interactifs et dans Dynamic Chat.

**Webinaires interactifs**

Générez automatiquement des chapitres et des résumés pour vos webinaires enregistrés, ce qui les rend plus accessibles et plus faciles à parcourir pour votre audience. Les fonctionnalités incluent :

* Génération automatique de chapitres
* Résumé du texte généré par l’IA
* Contenu modifiable - Modification des chapitres et des résumés générés
* Intégration facile : ajoutez des chapitres et des résumés à vos pages de destination en copiant le code HTML dans l’éditeur de page web de votre choix

[En savoir plus](https://experienceleague.adobe.com/fr/docs/marketo/using/product-docs/demand-generation/events/interactive-webinars/gen-ai)

**Dynamic Chat**

Les fonctionnalités d’IA générative de Adobe Dynamic Chat vous permettent d’optimiser la productivité de vos agents de vente, d’obtenir des informations sur les intentions des visiteurs de votre site web et de répondre aux questions des visiteurs en toute sécurité. Vous pouvez préapprouver les questions, les réponses et le résumé de la conversation.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/overview)

Compatibilité Adobe Firefly : **Non**

## [!DNL Workfront] {#workfront}

[!DNL AI Assistant] dans [!DNL Workfront] vous aide à accomplir votre travail en offrant des informations et des suggestions in-app. Vous pouvez effectuer les actions suivantes :

* Obtenez des résumés de certains objets, ce qui vous donne une vue d’ensemble de l’intention ou des détails de l’objet.
* Posez des questions et [!DNL AI Assistant] laisser trouver des réponses sur Experience League.
* Obtenez des formules générées en fonction de vos invites. Vous pouvez également résoudre des erreurs dans vos expressions personnalisées non valides dans les champs calculés.
* Localisez les projets, les tâches et les événements.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/workfront/using/basics/ai-assistant/ai-assistant-overview)

Compatibilité Adobe Firefly : **Non**
