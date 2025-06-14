---
title: IA générative dans les applications Experience Cloud
description: Découvrez l’IA générative (GenAI) et comment les applications Experience Cloud utilisent GenAI et l’assistant [!UICONTROL AI].
solution: Experience Cloud
feature: AI Assistant, Generative AI
topic: Administration
role: Admin
level: Intermediate
exl-id: bdc51956-82aa-4aae-b627-a2018f80b5f5
source-git-commit: 2e8ce339aaf3d90b7ee6da2cdec1565c88513e3d
workflow-type: tm+mt
source-wordcount: '1788'
ht-degree: 3%

---

# IA générative dans les produits Experience Cloud

L’IA générative (genAI) dans Experience Cloud vous permet d’automatiser les tâches créatives et cognitives et d’améliorer la productivité. Cette page décrit où les applications Experience Cloud prennent en charge genAI et l’assistant AI, et fournit des liens pour en savoir plus sur ces fonctionnalités.

**Qu’est-ce que genAI ?**

L’IA générative est un type d’IA qui peut créer du contenu original. Par exemple, il peut créer du texte, des images, de la vidéo, de l’audio ou du code logiciel en réponse à l’invite ou à la demande d’un utilisateur.

* **Créer :** la possibilité de générer entièrement du contenu (texte, images, musique ou vidéos), en fonction de son entraînement et des invites de saisie. Cette capacité est l’aspect _génératif_ de l’IA générative.

* **Générer une réponse :**’IA fournit une réponse ou une réaction à une invite, en s’appuyant généralement sur ses données et référentiels de connaissances disponibles.

**Qu’est-ce que l’[!UICONTROL assistant IA] ?**

[!UICONTROL Assistant AI] est un outil de conversation pris en charge dans Experience Platform et les applications associées. Utilisez-le pour acquérir rapidement des _connaissances sur les produits_ et _informations opérationnelles_ dans les produits pris en charge.

* **Connaissances des produits :** les connaissances des produits font référence à des concepts et à des sujets reposant sur la documentation d’Experience League. Découvrez comment créer des invites efficaces [basées sur des objectifs](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) pour tirer le meilleur parti de l’assistant [!UICONTROL AI]. Toutes les réponses d’Experience League sont vérifiables et citées avec des liens.

* **Informations opérationnelles :** [Informations opérationnelles](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/questions#objects-questions) se rapportent aux réponses générées sur vos objets de métadonnées (attributs, audiences, flux de données, jeux de données, etc.). Avec l’[!UICONTROL assistant AI], vous pouvez accomplir en quelques secondes ce qui, autrement, pourrait prendre des heures ou des jours.

L’assistant AI inclut également des fonctionnalités d’IA pour agent de conversation (connues sous le nom d’_IA agentique_) dans les applications prises en charge :

* **Prise en charge des produits :** la [Agent de prise en charge des produits](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/new-features/customer-support) est une fonctionnalité de débogage et de dépannage en libre-service de l’assistant [!UICONTROL AI] que vous pouvez utiliser pour les fonctionnalités et applications Experience Platform. Résolvez les problèmes d’assistance sans quitter vos workflows, créez des tickets d’assistance clientèle et suivez la progression des cas à l’aide de l’assistant AI.

[En savoir plus sur l’assistant AI](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/landing)

## Disponibilité de GenAI dans les produits Experience Cloud {#products}

Les applications Experience Cloud ci-après prennent en charge l’IA générative ou [!UICONTROL l’assistant IA]. La prise en charge d’Adobe Firefly est également indiquée par produit.

Mise à jour : **9 juin 2025**

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

[En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/generative-ai/generate-variations-integrated-editor)

### Sites Optimizer {#sites-optimizer}

AEM Sites Optimizer utilise l’IA générative pour analyser et améliorer les performances et l’efficacité des expériences web. Ces informations sont regroupées en domaines d’opportunités clés : engagement, acquisition du trafic, posture de sécurité et intégrité du site. Chaque catégorie met en évidence des moyens spécifiques d’améliorer votre site, que ce soit en augmentant l’interaction des visiteurs, en améliorant la visibilité, en renforçant la sécurité ou en maintenant la stabilité du site. [En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-manager-sites-optimizer/content/opportunity-types/overview)

### Experience Manager Assets {#aem-assets}

Dans AEM Assets, vous pouvez utiliser l’IA générative dans les balises intelligentes générées par **Content Hub** et **AI**.

Compatibilité Adobe Firefly : **Oui**

**Content Hub**

[!UICONTROL Content Hub] est disponible dans le cadre d’[!DNL Experience Manager Assets as a Cloud Service] pour démocratiser l’accès au contenu de marque pour les organisations et leurs partenaires commerciaux. Il se concentre sur la distribution de ressources pour l’activation à grande échelle et la création de variantes de contenu sur la marque pour une meilleure agilité marketing.

Dans Content Hub, vous pouvez créer du contenu avec Adobe Express (si vous disposez de droits Adobe Express). Vous pouvez modifier du contenu existant à l’aide d’outils simples, produire des variations sur la marque avec des modèles et des éléments de marque et créer du contenu avec les dernières fonctionnalités GenAI de [!DNL Adobe Firefly]. [En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/assets/content-hub/product-overview)

**Balises intelligentes**

Au lieu de recourir à une entrée manuelle, l’IA peut attribuer automatiquement des balises descriptives aux ressources numériques. Ces balises générées par l’IA améliorent la qualité des métadonnées, ce qui facilite la recherche, la classification et la recommandation des ressources.

Par exemple, si la ressource est une image, l’IA peut identifier des objets, des scènes, des émotions ou même les logos de la marque. Il peut générer des balises pertinentes telles que _coucher du soleil_, _plage_, _vacances_ ou _sourire_. [En savoir plus](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/assets/manage/smart-tags#ai-smart-tags)

## Adobe [!DNL Journey Optimizer] {#journey-optimizer}

Dans [!DNL Journey Optimizer] (AJO), vous pouvez utiliser [Assistant IA](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/get-started/ai-assistant) pour acquérir des _connaissances sur les produits_ et _informations opérationnelles_ (version bêta).

### Exemples d’utilisation de l’assistant AI dans AJO

Voici un exemple d’entrée pour la connaissance des produits :

* _Combien d’activités en cours puis-je avoir dans un sandbox Journey Optimizer ?_

  La sortie est générée à partir d’Experience League et d’autres entrepôts de données Adobe.

Voici un exemple d’entrée pour les informations opérationnelles :

* _Combien de Parcours ont été créés au cours des sept derniers jours ?_

  Pour la sortie, l’assistant AI interroge un magasin de données spécifique au client. Le magasin de données contient des données opérationnelles centralisées sur [!UICONTROL Parcours &#x200B;]. Cette fonctionnalité est indépendante du client et extrait les métadonnées uniquement des objets métier. Il n’accède pas aux données de votre sandbox.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/get-started/ai-assistant)

Compatibilité Adobe Firefly : **Non**

### Assistant d’IA pour la génération de contenu (AJO Prime et Ultimate) {#ajo-prime}

Dans AJO _Prime_ et _Ultimate_, vous pouvez utiliser [génération de contenu](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative) pour la génération de contenu afin d’apporter des suggestions proactives de variation de contenu pour le texte et les images.

Cette fonctionnalité est disponible pour les canaux e-mail, notification push, page web, contenu et SMS. Il permet de générer du texte et des images à partir d’invites. La sortie de la génération de contenu dans AJO Prime et Ultimate est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative)

Compatibilité Adobe Firefly : **Oui**

## [!DNL Journey Optimizer B2B Edition] {#ajo-b2b}

Journey Optimizer B2B edition utilise l’[!UICONTROL assistant AI] pour vous aider à mieux connaître les produits.

Exemple d’entrée :

* _Comment envoyer un e-mail dans un parcours de compte ?_

  La sortie de connaissance des produits est extraite d’Experience League.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/journey-optimizer-b2b/user/ai-assistant/ai-assistant-overview)

Compatibilité Adobe Firefly : **Non**

## [!DNL Campaign] Managed Cloud Services {#campaign-cs}

Campaign Managed Cloud Services utilise l’[!UICONTROL assistant IA] pour la génération de contenu. Cette fonctionnalité vous permet de générer automatiquement du contenu personnalisé, attrayant et efficace en fonction de votre objectif marketing, avec du contenu optimisé pour les styles de contour de marque, les mises en page, le ton, etc. Vous pouvez l’utiliser sur plusieurs canaux tels que les e-mails, les SMS et les notifications push.

**Remarque :** la sortie de la génération de contenu dans Campaign Managed Cloud Services est indemnisée.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/campaign-web/v8/content/ai-assistant/generative-gs)

Compatibilité Adobe Firefly : **Oui**

## [!DNL Customer Journey Analytics] {#cja}

Customer Journey Analytics permet d’utiliser l’IA générative ou l’assistant d’IA comme suit :

* [Assistant IA](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-overview/cja-b2c-overview/ai-assistant) pour la connaissance des produits.
* [Agent du support produit](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/new-features/customer-support) pour créer des tickets de support client, avec le contexte et les détails de session de vos interactions avec l’assistant AI.
* [Data Insights Agent](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-overview/cja-b2c-overview/data-analysis-ai) pour obtenir des réponses aux questions sur vos données. Il crée des visualisations pertinentes dans Analysis Workspace à l’aide de composants de votre vue de données et en utilisant vos données réelles.
* [Légendes intelligentes](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions) pour fournir des informations essentielles sur les visualisations Workspace les plus utilisées en langage naturel.
* [Content Analytics](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/content-analytics/report/report#template) pour affecter automatiquement chaque métadonnée de ressource.

Compatibilité Adobe Firefly : **Non**

**Assistant IA**

Découvrez les connaissances sur les produits Experience League. Si vous êtes un nouvel utilisateur, apprenez rapidement les concepts de Customer Journey Analytics et intégrez-vous aux produits et fonctionnalités. Par exemple :

* _Comment envoyer un e-mail dans un parcours de compte ?_

Les utilisateurs expérimentés bénéficient de cas d’utilisation avancés ou apprennent des stratégies pour effectuer des tâches à un rythme rapide. Vous pouvez rapidement comprendre les concepts, résoudre les problèmes ou rechercher des informations.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-overview/cja-b2c-overview/ai-assistant)

**Légendes intelligentes**

Vous pouvez utiliser les _Légendes intelligentes_ dans les [!DNL Customer Journey Analytics] afin d’obtenir des informations en langage naturel pour les visualisations Workspace les plus utilisées. Les légendes intelligentes sont idéales pour les analystes qui ont besoin de récits et de contexte à partager avec d’autres utilisateurs. Les utilisateurs professionnels peuvent l’utiliser pour découvrir rapidement des points à retenir de haut niveau.

Par exemple :

* **Entrée :** dans CJA, exécutez une visualisation prise en charge (avec une ligne, une zone, un graphique à barres, un flux ou un abandon), puis cliquez sur **[!UICONTROL Légendes intelligentes]**.

* **Output :** afficher les légendes générées automatiquement en langage naturel qui présentent le contexte et les principaux points à retenir. Vous pouvez ensuite agir sur les données générées, par exemple les examiner, les copier et les partager avec votre organisation. [Voir comment ](https://video.tv.adobe.com/v/3443140/?quality=12&learn=on#_blank&captions=fre_fr)

[En savoir plus](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions)

**Content Analytics**

Content Analytics utilise l’IA et GenAI pour affecter automatiquement chaque métadonnée de ressource, telle que les sujets, les scènes, les couleurs de premier plan, etc. Un attribut est une balise de métadonnées affectée par l’IA décrivant le contenu d’une ressource ou d’une expérience.

Par exemple : le `color: red` de premier plan est un attribut attribué automatiquement. Les visualisations vous aident à identifier les attributs de vos ressources qui contribuent le plus à la conversion. [En savoir plus](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/content-analytics/report/report#template)

## [!DNL Real-Time CDP] {#rtcdp}

Real-Time CDP utilise l’[!UICONTROL assistant AI] pour vous aider à acquérir des connaissances sur les produits Experience League. Il offre également des informations opérationnelles (en version bêta). [!UICONTROL Assistant AI] interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées, partitionnées dans votre sandbox AEP. Le système extrait les métadonnées uniquement à partir des attributs, des audiences, des flux de données, des jeux de données, des destinations, des schémas et des sources et n’accède pas aux données dans le sandbox.

Par exemple, si vous effectuez une requête sur une audience, l’[!UICONTROL assistant AI] peut accéder au nom de l’audience et aux autres métadonnées associées, mais ne peut pas accéder aux profils au sein de cette audience.

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

Les fonctionnalités d’IA générative de Adobe Dynamic Chat vous permettent d’optimiser la productivité de vos agents de vente, d’obtenir des informations sur les intentions des visiteurs de votre site web et de répondre aux questions des visiteurs en toute sécurité. Vous pouvez préapprouver les questions, les réponses et le résumé de la conversation. Dynamic Chat comprend une version gratuite et une version premium.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/overview)

Compatibilité Adobe Firefly : **Non**

## [!DNL Workfront] {#workfront}

[!UICONTROL Assistant AI] dans [!DNL Workfront] vous aide à accomplir votre travail en offrant des informations et des suggestions in-app. Vous pouvez effectuer les actions suivantes :

* Obtenez des résumés de certains objets, ce qui vous donne une vue d’ensemble de l’intention ou des détails de l’objet.
* Posez des questions et laissez [!UICONTROL AI Assistant] trouver des réponses sur Experience League.
* Obtenez des formules générées en fonction de vos invites. Vous pouvez également résoudre des erreurs dans vos expressions personnalisées non valides dans les champs calculés.
* Localisez les projets, les tâches et les événements.

[En savoir plus](https://experienceleague.adobe.com/fr/docs/workfront/using/basics/ai-assistant/ai-assistant-overview)

Compatibilité Adobe Firefly : **Non**

## Ressources supplémentaires

* [Ressources d’IA responsables sur le Centre de gestion de la confidentialité](https://www.adobe.com/trust/responsible-ai.html)<!-- * [Customer AI Propensity Scoring Model Card](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/model-cards/ai-model-cards/customer-ai) -->

**Clause de non-responsabilité :** les informations de cette page sont fournies à titre d’information uniquement. Bien que des efforts soient faits pour s&#39;assurer que les informations restent exactes et à jour, les fonctionnalités logicielles et d&#39;IA générative peuvent changer fréquemment. Par conséquent, nous ne garantissons pas l&#39;exhaustivité, l&#39;exactitude ou la fiabilité des informations en tout temps. Veuillez vérifier tous les détails importants avant de prendre des décisions basées sur ce contenu.

