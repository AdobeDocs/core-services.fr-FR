---
title: IA générative dans les applications Experience Cloud
description: Découvrez l’IA générative (GenAI) et comment les applications Experience Cloud utilisent GenAI et  [!DNL AI Assistant].
solution: Experience Cloud
feature: AI Assistant, Generative AI
topic: Administration
role: Admin
level: Intermediate
exl-id: bdc51956-82aa-4aae-b627-a2018f80b5f5
source-git-commit: c7cea04619bdf74c4037bef0de9a1c22596e41cb
workflow-type: tm+mt
source-wordcount: '1640'
ht-degree: 3%

---

# IA générative dans les produits Experience Cloud

L’IA générative (genAI) dans Experience Cloud vous permet d’automatiser les tâches créatives et cognitives et d’améliorer la productivité. Cette page décrit où les applications Experience Cloud prennent en charge genAI et l’assistant AI, et fournit des liens pour en savoir plus sur ces fonctionnalités.

**Qu’est-ce que genAI ?**

L’IA générative est un type d’IA qui peut créer du contenu original. Par exemple, il peut créer du texte, des images, de la vidéo, de l’audio ou du code logiciel en réponse à l’invite ou à la demande d’un utilisateur.

* **Créer :** la possibilité de générer entièrement du contenu (texte, images, musique ou vidéos), en fonction de son entraînement et des invites de saisie. Cette capacité est l’aspect _génératif_ de l’IA générative.

* **Générer une réponse :**’IA fournit une réponse ou une réaction à une invite, en s’appuyant généralement sur ses données et référentiels de connaissances disponibles.

**En quoi consiste [!DNL AI Assistant] ?**

[!DNL AI Assistant] est un outil de conversation pris en charge dans Experience Platform et les applications associées. Utilisez-le pour acquérir rapidement des _connaissances sur les produits_ et _informations opérationnelles_ dans les produits pris en charge.

* **Connaissances des produits :** les connaissances des produits font référence à des concepts et à des sujets reposant sur la documentation d’Experience League. Découvrez comment créer des invites efficaces [basées sur des objectifs](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) pour tirer le meilleur parti de [!DNL AI Assistant]. Toutes les réponses d’Experience League sont vérifiables et citées avec des liens.

* **Informations opérationnelles :** [Informations opérationnelles](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/questions#objects-questions) se rapportent aux réponses générées sur vos objets de métadonnées (attributs, audiences, flux de données, jeux de données, etc.). Avec [!DNL AI Assistant], vous pouvez accomplir en quelques secondes ce qui, autrement, pourrait prendre des heures ou des jours.

* **Service clientèle** : l’[agent de support produit](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/new-features/customer-support) est une fonctionnalité de débogage et de dépannage en libre-service de [!DNL AI Assistant] que vous pouvez utiliser pour les fonctionnalités et applications Experience Platform. Résolvez les problèmes d’assistance sans quitter vos workflows, créez des tickets d’assistance clientèle et suivez la progression des cas à l’aide de l’assistant AI.

  **Remarque :** cette fonctionnalité est disponible dans Alpha et peut ne pas être disponible pour votre organisation. Pour participer au programme Alpha et accéder à cette fonctionnalité, contactez l’équipe chargée de votre compte Adobe.

[En savoir plus sur l’assistant AI](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/landing)

## Disponibilité de GenAI dans les produits Experience Cloud {#products}

Les applications Experience Cloud ci-après prennent en charge l’IA ou la [!DNL AI Assistant] générative. La prise en charge d’Adobe Firefly est également indiquée par produit.

Mise à jour : **4 juin 2025**

* [[!DNL GenStudio for Performance Marketing]](#gspm)
* [[!DNL Experience Manager]](#aem)
* [[!DNL Journey Optimizer]](#journey-optimizer)
* [[!DNL Journey Optimizer] B2B edition](#ajo-b2b)
* [[!DNL Campaign] Managed Cloud Services](#campaign-cs)
* [[!DNL Customer Journey Analytics]](#cja)
* [[!DNL Real-Time CDP]](#rtcdp)
* [[!DNL Marketo]](#marketo)
* [[!DNL Workfront]](#workfront)

## GenStudio for Performance Marketing {#gspm}

[!DNL GenStudio for Performance Marketing] est une application d’IA générative conçue pour aider les équipes marketing d’entreprise à créer, activer et optimiser le contenu des campagnes sur la marque sur des canaux tels que les médias achetés, les e-mails et les publicités display.

Les spécialistes du marketing de performance peuvent utiliser des invites en langage naturel pour générer des ressources personnalisées et conformes à la marque. GenStudio for Performance Marketing accélère l’exécution des campagnes, adapte la production de contenu sans compromettre l’intégrité de la marque et fournit des analyses de performances pour améliorer le retour sur investissement global.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/genstudio-for-performance-marketing/user-guide/home)

Compatibilité Adobe Firefly : **Oui**

## [!DNL Experience Manager] {#aem}

Les sections suivantes décrivent brièvement l’IA générative dans les applications AEM.

### Experience Manager Sites

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

Compatibilité Adobe Firefly : **Oui**

[En savoir plus](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations-integrated-editor)

### Experience Manager Assets

Dans AEM Assets, vous pouvez utiliser l’IA générative dans les balises intelligentes générées par **Content Hub** et **AI**.

Compatibilité Adobe Firefly : **Oui**

**Content Hub**

[!UICONTROL Content Hub] est disponible dans le cadre d’[!DNL Experience Manager Assets as a Cloud Service] pour démocratiser l’accès au contenu de marque pour les organisations et leurs partenaires commerciaux. Il se concentre sur la distribution de ressources pour l’activation à grande échelle et la création de variantes de contenu sur la marque pour une meilleure agilité marketing.

Dans Content Hub, vous pouvez créer du contenu avec Adobe Express (si vous disposez de droits Adobe Express). Vous pouvez modifier du contenu existant à l’aide d’outils simples, produire des variations sur la marque avec des modèles et des éléments de marque et créer du contenu avec les dernières fonctionnalités GenAI de [!DNL Adobe Firefly]. [En savoir plus](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/assets/content-hub/product-overview)

**Balises intelligentes**

Au lieu de recourir à une entrée manuelle, l’IA peut attribuer automatiquement des balises descriptives aux ressources numériques. Ces balises générées par l’IA améliorent la qualité des métadonnées, ce qui facilite la recherche, la classification et la recommandation des ressources.

Par exemple, si la ressource est une image, l’IA peut identifier des objets, des scènes, des émotions ou même les logos de la marque. Il peut générer des balises pertinentes telles que _coucher du soleil_, _plage_, _vacances_ ou _sourire_. [En savoir plus](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/assets/manage/smart-tags#ai-smart-tags)

## Adobe [!DNL Journey Optimizer] {#journey-optimizer}

Dans [!DNL Journey Optimizer] (AJO), vous pouvez utiliser [Assistant IA](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant) pour acquérir des _connaissances sur les produits_ et _informations opérationnelles_ (version bêta).

### Exemples d’utilisation de l’assistant AI dans AJO

Voici un exemple d’entrée pour la connaissance des produits :

* _Combien d’activités en cours puis-je avoir dans un sandbox Journey Optimizer ?_

  La sortie est générée à partir d’Experience League et d’autres entrepôts de données Adobe.

Voici un exemple d’entrée pour les informations opérationnelles :

* _Combien de Parcours ont été créés au cours des sept derniers jours ?_

  Pour la sortie, l’assistant AI interroge un magasin de données spécifique au client. Le magasin de données contient des données opérationnelles centralisées sur [!UICONTROL Parcours ]. Cette fonctionnalité est indépendante du client et extrait les métadonnées uniquement des objets métier. Il n’accède pas aux données de votre sandbox.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant)

Compatibilité Adobe Firefly : **Non**

### Assistant d’IA pour la génération de contenu (AJO Prime et Ultimate) {#ajo-prime}

Dans AJO _Prime_ et _Ultimate_, vous pouvez utiliser [génération de contenu](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative) pour la génération de contenu afin d’apporter des suggestions proactives de variation de contenu pour le texte et les images.

Cette fonctionnalité est disponible pour les canaux e-mail, notification push, page web, contenu et SMS. Il permet de générer du texte et des images à partir d’invites. La sortie de la génération de contenu dans AJO Prime et Ultimate est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative)

Compatibilité Adobe Firefly : **Oui**

## [!DNL Journey Optimizer B2B Edition] {#ajo-b2b}

Journey Optimizer B2B edition utilise [!DNL AI Assistant] pour vous aider à mieux connaître les produits.

Exemple d’entrée :

* _Comment envoyer un e-mail dans un parcours de compte ?_

  La sortie de connaissance des produits est extraite d’Experience League.

[En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/ai-assistant/ai-assistant-overview)

Compatibilité Adobe Firefly : **Non**

## [!DNL Campaign] Managed Cloud Services {#campaign-cs}

Campaign Managed Cloud Services utilise des [!DNL AI Assistant] pour la génération de contenu. Cette fonctionnalité vous permet de générer automatiquement du contenu personnalisé, attrayant et efficace en fonction de votre objectif marketing, avec du contenu optimisé pour les styles de contour de marque, les mises en page, le ton, etc. Vous pouvez l’utiliser sur plusieurs canaux tels que les e-mails, les SMS et les notifications push.

**Remarque :** la sortie de la génération de contenu dans Campaign Managed Cloud Services est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-gs)

Compatibilité Adobe Firefly : **Oui**

## [!DNL Customer Journey Analytics] {#cja}

Customer Journey Analytics permet d’utiliser l’IA générative des manières suivantes :

* [!DNL AI Assistant] pour la connaissance des produits
* [!DNL Product Support Agent] dans l’assistant AI (actuellement dans Alpha)
* [!UICONTROL Légendes intelligentes] dans les visualisations Workspace
* L’IA et GenAI pour affecter automatiquement chaque métadonnée de ressource dans [!DNL Content Analytics]

Compatibilité Adobe Firefly : **Non**

**Assistant IA**

Découvrez les connaissances sur les produits Experience League. Si vous êtes un nouvel utilisateur, apprenez rapidement les concepts de Customer Journey Analytics et intégrez-vous aux produits et fonctionnalités. Par exemple :

* _Comment envoyer un e-mail dans un parcours de compte ?_

Les utilisateurs expérimentés bénéficient de cas d’utilisation avancés ou apprennent des stratégies pour effectuer des tâches à un rythme rapide. Vous pouvez rapidement comprendre les concepts, résoudre les problèmes ou rechercher des informations.

[En savoir plus](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/cja-b2c-overview/ai-assistant)

**Légendes intelligentes**

Vous pouvez utiliser les _Légendes intelligentes_ dans les [!DNL Customer Journey Analytics] afin d’obtenir des informations en langage naturel pour les visualisations Workspace les plus utilisées. Les légendes intelligentes sont idéales pour les analystes qui ont besoin de récits et de contexte à partager avec d’autres utilisateurs. Les utilisateurs professionnels peuvent l’utiliser pour découvrir rapidement des points à retenir de haut niveau.

Par exemple :

* **Entrée :** dans CJA, exécutez une visualisation prise en charge (avec une ligne, une zone, un graphique à barres, un flux ou un abandon), puis cliquez sur **[!UICONTROL Légendes intelligentes]**.

* **Output :** afficher les légendes générées automatiquement en langage naturel qui présentent le contexte et les principaux points à retenir. Vous pouvez ensuite agir sur les données générées, par exemple les examiner, les copier et les partager avec votre organisation. [Voir comment ](https://video.tv.adobe.com/v/3420131/?quality=12&learn=on#_blank)

[En savoir plus](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions)

**Content Analytics**

Content Analytics utilise l’IA et GenAI pour affecter automatiquement chaque métadonnée de ressource, telle que les sujets, les scènes, les couleurs de premier plan, etc. Un attribut est une balise de métadonnées affectée par l’IA décrivant le contenu d’une ressource ou d’une expérience.

Par exemple : le `color: red` de premier plan est un attribut attribué automatiquement. Les visualisations vous aident à identifier les attributs de vos ressources qui contribuent le plus à la conversion. [En savoir plus](https://experienceleague.adobe.com/en/docs/analytics-platform/using/content-analytics/report/report#template)

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

[En savoir plus](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/events/interactive-webinars/gen-ai)

**Dynamic Chat**

Les fonctionnalités d’IA générative de Adobe Dynamic Chat vous permettent d’optimiser la productivité de vos agents de vente, d’obtenir des informations sur les intentions des visiteurs de votre site web et de répondre aux questions des visiteurs en toute sécurité. Vous pouvez préapprouver les questions, les réponses et le résumé de la conversation.

[En savoir plus](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/overview)

Compatibilité Adobe Firefly : **Non**

## [!DNL Workfront] {#workfront}

[!DNL AI Assistant] dans [!DNL Workfront] vous aide à accomplir votre travail en offrant des informations et des suggestions in-app. Vous pouvez effectuer les actions suivantes :

* Obtenez des résumés de certains objets, ce qui vous donne une vue d’ensemble de l’intention ou des détails de l’objet.
* Posez des questions et [!DNL AI Assistant] laisser trouver des réponses sur Experience League.
* Obtenez des formules générées en fonction de vos invites. Vous pouvez également résoudre des erreurs dans vos expressions personnalisées non valides dans les champs calculés.
* Localisez les projets, les tâches et les événements.

[En savoir plus](https://experienceleague.adobe.com/en/docs/workfront/using/basics/ai-assistant/ai-assistant-overview)

Compatibilité Adobe Firefly : **Non**

## Ressources supplémentaires

* [Ressources d’IA responsables sur le Centre de gestion de la confidentialité](https://www.adobe.com/trust/responsible-ai.html)<!-- * [Customer AI Propensity Scoring Model Card](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/model-cards/ai-model-cards/customer-ai) -->

**Clause de non-responsabilité :** les informations de cette page sont fournies à titre d’information uniquement. Nous visons à le garder précis et à jour, mais les logiciels et les fonctionnalités d&#39;IA peuvent changer fréquemment. Nous ne garantissons pas l&#39;exhaustivité ou la fiabilité des informations à tout moment. Veuillez vérifier tous les détails importants avant de prendre des décisions basées sur ce contenu.
