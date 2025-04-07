---
title: L’IA dans les applications Experience Cloud
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
source-git-commit: 3f1065affe2665bb0867de02e4aef4c755c5f201
workflow-type: tm+mt
source-wordcount: '1808'
ht-degree: 5%

---

# L’IA dans les applications Experience Cloud

Cette page vous aide à comprendre comment les applications Experience Cloud utilisent l’IA générative et où trouver les informations spécifiques à l’application. Découvrez les classes de questions, d’invites et de modèles d’entrée et de sortie.

## À propos de l’IA générative et de l’assistant d’IA

L’IA générative est un type d’intelligence artificielle qui peut _créer_ de nouveaux contenus et _répondre_ à vos déclarations et questions (invites) :

* **Créer :** fait référence à la capacité de l’IA à générer du nouveau contenu (texte, images, musique ou vidéos) à partir de zéro, en fonction de sa formation et des invites de saisie. Cette capacité est l’aspect _génératif_ de l’IA générative.

* **Répondre :** fait référence à l’IA qui fournit une réponse ou une réaction à une question, une déclaration ou une invite spécifique, en s’appuyant généralement sur ses connaissances ou ses capacités de raisonnement.

Certaines applications Experience Cloud tirent parti de l’IA générative, ce qui permet aux nouveaux utilisateurs d’acquérir rapidement des connaissances sur les produits et aux utilisateurs expérimentés de découvrir des informations opérationnelles en quelques secondes plutôt qu’en quelques heures.

### Assistant IA

[Assistant AI](https://experienceleague.adobe.com/en/docs/experience-platform/ai-assistant/landing) est un outil de conversation pris en charge dans Experience Platform et les applications associées. Utilisez-le pour accélérer vos workflows, améliorer votre connaissance des produits, résoudre les problèmes ou parcourir les informations. L’assistant d’IA vous permet de découvrir des informations opérationnelles en quelques secondes, plutôt qu’en quelques heures.

Toutes les réponses relatives à la connaissance des produits sont vérifiables et citées avec des liens vers la documentation du produit dans Experience League. [Découvrez l’assistant AI](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) et les types d’invites basées sur des objectifs pour tirer le meilleur parti de l’assistant AI.

## Applications Experience Cloud qui utilisent l’IA

>[!TIP]
>
>Version du sous-titre (début)...


* [GenStudio for Performance Marketing](#gspm)
* [Experience Manager Sites (Cloud Service)](#aem-sites)
* Plus à venir...

### GenStudio for Performance Marketing {#gspm}

[GenStudio for Performance Marketing](https://experienceleague.adobe.com/fr/docs/genstudio-for-performance-marketing/user-guide/home) est une plateforme générée pilotée par l’IA. Il intègre le cycle de vie de la création de contenu à des fonctionnalités d’IA génératives qui transforment la manière dont le contenu marketing est créé, révisé, partagé et analysé.

_GenStudio for Performance Marketing Create_ tire parti de la puissance d’Adobe GenAI pour permettre aux spécialistes marketing et aux équipes distribuées de créer des expériences de marque hautement performantes. Générer le contenu pour :

* E-mails
* Métadonnées publicitaires
* Annonces LinkedIn
* Afficher les publicités
* Bannières

Vous pouvez entraîner GenStudio for Performance Marketing sur votre marque à l’aide d’exemples, de descriptions des personnages et des produits des clients, ainsi que de directives de marque. [En savoir plus.](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/create/overview)

**Compatibilité avec Adobe Firefly :** prévue

### Experience Manager Sites {#aem-sites}

AEM Sites utilise [ Générer des variations ](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations). Générer des variations utilise l’IA générative pour créer des variations de contenu en fonction des invites. Ces invites sont fournies par [Adobe](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#get-started) ou créées et gérées par [utilisateurs](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#create-prompt).

Après avoir créé des variations, vous pouvez utiliser le contenu sur votre site web et mesurer son succès à l’aide de la fonctionnalité Expérimentation de Edge Delivery Services.

**Input : les champs de saisie** incluent les éléments suivants :

* Nombre de variations à générer
* Audience Source
* Cible de l’audience
* Contexte supplémentaire
* Invites orientées client

**Output :** contenu généré/copie de marché. Vous avez également la possibilité de générer des images dans Adobe Express à l’aide des fonctionnalités d’IA générative de Firefly.

Voir [ Générer une image ](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#generate-image).

**Compatibilité avec Adobe Firefly :** Oui

## Adobe Journey Optimizer

Journey Optimizer utilise l’[assistant AI](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) avec deux catégories de questions :

**Connaissance du produit** - Interroge les entrepôts de données Adobe (tels que la documentation du produit Experience League) pour le produit insight. Cette sortie est indépendante du client ou de la cliente. Exemple :

* Combien d’activités actives est-il possible d’avoir dans un seul sandbox Adobe Journey Optimizer ?

**Informations opérationnelles (Beta)** : interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées sur les Parcours, partitionnées par le sandbox du client. Extrait les métadonnées uniquement des objets métier et n’accède pas aux données du sandbox.

* Combien de Parcours ont été créés au cours des sept derniers jours ?

La sortie d’Operational Insights dépend des métadonnées extraites des objets commerciaux du client.

Parcours est le seul objet disponible pour l’assistant AI dans Journey Optimizer. Les métadonnées sont extraites du sandbox actuel.

Voir [Utilisation de l’assistant AI](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant) et [Préparation du terrain](https://fieldreadiness-adobe.highspot.com/items/6661f1c132683fd5e6a8adf4?lfrm=srp.1#11) pour plus d’informations.

**Compatibilité avec Adobe Firefly :** Non



## Applications Experience Cloud qui utilisent l’IA

>[!TIP]
>
>Version du tableau...


Découvrez comment les applications Experience Cloud utilisent l’IA générative ou l’assistant AI, et si Adobe Firefly est pris en charge.

| Application | Utilisation de l’IA générative | Exemples | ADOBE FIREFLY ? |
|----------|------------|-----------|----------------|
| GenStudio for Performance Marketing | [GenStudio for Performance Marketing](https://experienceleague.adobe.com/fr/docs/genstudio-for-performance-marketing/user-guide/home) est une plateforme générée pilotée par l’IA. Il intègre le cycle de vie de la création de contenu à des fonctionnalités d’IA génératives qui transforment la manière dont le contenu marketing est créé, révisé, partagé et analysé.<br>Vous pouvez entraîner GenStudio for Performance Marketing sur votre marque à l’aide d’exemples, de descriptions des personnages et des produits des clients, ainsi que de directives de marque. | _GenStudio for Performance Marketing Create_ vous permet de générer du contenu pour les e-mails, les métadonnées publicitaires, les publicités LinkedIn, les publicités display et les bannières. <br>**Entrées:** <ul><li>Utilisez des modèles pour lancer le processus de création de contenu. </li><li>Ajoutez des paramètres tels que Marques, Produits et Personnes (directives) et Contenu (ressources) pour définir l’expérience générée. </li><li>Saisissez des invites descriptives qui décrivent le contexte ou l&#39;expérience que vous avez l&#39;intention de générer. [En savoir plus…](https://experienceleague.adobe.com/en/docs/genstudio-for-performance-marketing/user-guide/create/overview)</li></ul> | Oui |
| Adobe Experience Manager Sites (Cloud Service) | AEM Sites utilise [ Générer des variations ](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations). <br>Générer des variations utilise l’IA générative pour créer des variations de contenu en fonction des invites. Ces invites sont fournies par Adobe ou créées et gérées par les utilisateurs. | Après avoir créé des variations, vous pouvez utiliser le contenu sur votre site web et mesurer son succès à l’aide de la fonctionnalité Expérimentation de Edge Delivery Services. <br>**Entrée :** les champs de saisie comprennent le nombre de variations à générer ; Audience Source/Audience Target ; le contexte supplémentaire et les invites pilotées par le client. <ul><li>[modèle d’invite Adobe](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#get-started) </li><li>[Invite générée par l’utilisateur](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#create-prompt)</li></ul> **Output :** contenu généré/copie de marché. Vous avez également la possibilité de générer des images dans Adobe Express à l’aide des fonctionnalités d’IA générative de Firefly. Voir [ Générer une image ](https://experienceleague.adobe.com/en/docs/experience-manager-cloud-service/content/generative-ai/generate-variations#generate-image). | Oui |
| Adobe Journey Optimizer | Journey Optimizer utilise l’[assistant AI](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) avec deux catégories de questions :<ul><li>**Connaissance du produit** - Interroge les entrepôts de données Adobe (tels que la documentation du produit Experience League) pour le produit insight. Cette sortie est indépendante du client ou de la cliente. </li><li>**Informations opérationnelles (Beta)** : interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées sur les Parcours, partitionnées par le sandbox du client. Extrait les métadonnées uniquement des objets métier et n’accède pas aux données du sandbox.</li></ul> | <ul><li>**Entrée de la connaissance des produits :** combien d’activités en direct puis-je avoir dans un sandbox Adobe Journey Optimizer ?</li><li>**Sortie de connaissance du produit :** extrait la connaissance du produit d’Experience League (documentation publique). </li><li>**Saisie d’informations opérationnelles :** combien de Parcours ont été créés au cours des sept derniers jours ? </li><li>**Sortie Operational Insights :** la sortie Operational Insights dépend des métadonnées extraites des objets commerciaux du client. Parcours est le seul objet disponible dans AJO. Les métadonnées sont extraites du sandbox actuel. </li></ul> Voir [Utilisation de l’assistant AI](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/get-started/ai-assistant) et [Préparation sur le terrain](https://fieldreadiness-adobe.highspot.com/items/6661f1c132683fd5e6a8adf4?lfrm=srp.1#11) | Non |
| Journey Optimizer : _Prime et_ Ultimate __ | [l’assistant AI pour l’accélérateur de contenu](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/gs-generative) fournit des suggestions proactives de variation de contenu pour le texte et les images. Il est disponible pour les canaux e-mail, push, web et SMS. Cette nouvelle fonctionnalité permet de générer du texte et des images à partir d’invites. | <ul><li> **E-mail** - générez un e-mail complet, du texte uniquement ou une image uniquement. [En savoir plus…](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-email) </li><li> **Notification push** - Générez une notification push complète, au format texte uniquement ou image uniquement. [En savoir plus…](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-push) </li><li> **SMS** - Générez un SMS complet ou un texte uniquement. [En savoir plus](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-sms) </li><li> **Page web** - Générez des images ou du texte de page web. [En savoir plus…](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-web) </li><li> **Contenu** - Générez du contenu pour diverses campagnes de messagerie. [En savoir plus…](https://experienceleague.adobe.com/en/docs/journey-optimizer/using/content-management/ai-assistant/generative-experimentation)</li></ul> **Remarque :** la sortie de l’accélérateur de contenu dans AJO Prime et Ultimate est indemnisée. | Oui |
| Journey Optimizer édition B2B | Utilise [Assistant IA](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/get-started/ai-assistant) avec une seule classe de questions : <br> **Connaissance du produit** - Interroge les entrepôts de données Adobe (tels que la documentation du produit Experience League) pour le produit insight. Cette sortie est indépendante du client ou de la cliente. | <ul><li>**Input :** comment envoyer un e-mail dans un parcours de compte ?</li><li>**Output :** extractions de la connaissance des produits d’Experience League (documentation publique). [En savoir plus…](https://experienceleague.adobe.com/en/docs/journey-optimizer-b2b/user/get-started/ai-assistant)</li></ul> | Non |
| Campaign Managed Cloud Services | [l’assistant d’IA pour accélérateur de contenu](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-gs) génère automatiquement du contenu personnalisé, attrayant et efficace en fonction de l’objectif marketing avec du contenu optimisé pour les styles de contour de la marque, les mises en page, le ton, etc. sur l’ensemble des canaux tels que les e-mails, les SMS, les notifications push. | <ul><li> **E-mail** - Générez un e-mail complet, du texte uniquement ou une image uniquement. [En savoir plus](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-content) </li><li> **SMS** - Générez uniquement des SMS complets ou du texte. [En savoir plus…](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-sms) </li><li> **Push** - Créez des messages attrayants et générez du contenu. [En savoir plus…](https://experienceleague.adobe.com/en/docs/campaign-web/v8/content/ai-assistant/generative-push) </li></ul> **Remarque :** la sortie de l’accélérateur de contenu dans Campaign Managed Cloud Services est indemnisée. | Oui |
| Customer Journey Analytics | CJA utilise l’[assistant AI](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/ai-assistant) pour vous aider à découvrir les connaissances et les informations sur les produits d’Experience League. <br>Par exemple, les nouveaux utilisateurs peuvent l’utiliser pour apprendre les concepts de Customer Journey Analytics et s’intégrer à des produits et fonctionnalités que vous ne connaissez pas. <br>Les utilisateurs expérimentés peuvent utiliser l’assistant AI pour présenter des cas d’utilisation plus avancés ou des conseils et astuces et effectuer des tâches à un rythme rapide. comprendre les concepts, résoudre les problèmes ou rechercher des informations ; [En savoir plus…](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-overview/ai-assistant#knowledge) | <ul><li>**Entrée de la connaissance des produits :** comment créer une mesure calculée ? </li><li> **Sortie de connaissance du produit :** extrait la connaissance du produit d’Experience League (documentation publique). </li></ul> | Non |
| Customer Journey Analytics | [Légendes intelligentes](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-workspace/visualizations/intelligent-captions) fournit des informations en langage naturel pour les visualisations en ligne dans les visualisations Workspace. | <ul><li>**Entrée:** Visualisations Ligne. Les légendes sont générées automatiquement en fonction de ces visualisations de ligne lorsque vous cliquez sur **Légendes intelligentes**. </li><li> **Output :** légendes en langage naturel générées automatiquement.</li></ul> | Non |
| Real-Time CDP | Utilise l’[assistant IA](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) pour vous aider à découvrir les connaissances et les informations sur les produits d’Experience League. Il interroge une base de données et traduit les données de la base de données en une réponse lisible par l’utilisateur. Deux catégories de questions : <br> **Connaissance du produit** - Interroge les entrepôts de données Adobe (tels que la documentation du produit Experience League) pour le produit insight. Cette sortie est indépendante du client ou de la cliente. <br> **Informations opérationnelles (Beta)** : interroge un magasin de données d’informations opérationnelles spécifique au client qui contient des données opérationnelles centralisées, partitionnées par le sandbox AEP du client. Extrait les métadonnées uniquement à partir des attributs, des audiences, des flux de données, des jeux de données, des destinations, des schémas et des sources, et n’accède pas aux données du sandbox. <br>Par exemple, pour une requête sur une audience, [!DNL AI Assistant] pouvez accéder au nom de l’audience et aux autres métadonnées associées, mais pas aux profils au sein de cette audience. | <ul><li>**Entrée de la connaissance du produit :** comment la richesse du profil est-elle calculée ? </li><li>**Sortie de connaissance du produit :** extrait la connaissance du produit d’Experience League (documentation publique). </li><li> **Saisie d’informations opérationnelles :** de combien de jeux de données dispose-t-on ? </li><li> **Sortie Operational Insights :** la sortie Operational Insights dépend des métadonnées extraites des objets commerciaux du client (attributs, audiences, flux de données, jeux de données, destinations, schémas et sources) et inclut un lien vers une page d’interface utilisateur spécifique contenant des données interrogées. </li></ul>Pour obtenir des exemples, consultez les tableaux d’entrée _Connaissances du produit_ et _Informations opérationnelles_ dans l’assistant [IA d’Experience Platform](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/home) | Non |
| Marketo | [Dynamic Chat](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/dynamic-chat-overview) crée des conversations assistées par l’IA avec des questions et réponses personnalisées et préapprouvées, ainsi qu’un résumé de la conversation | <ul><li> **Générer des questions :** fournissez des URL à partir desquelles le contenu est extrait et utilisé pour générer des questions/réponses. </li><li> **Résumé de la conversation :** génère un résumé d’une conversation par chat. </li></ul> [En savoir plus…](https://experienceleague.adobe.com/en/docs/marketo/using/product-docs/demand-generation/dynamic-chat/generative-ai/response-library) | Non |
| Workfront | [Assistant IA](https://experienceleague.adobe.com/en/docs/workfront/using/basics/ai-assistant/ai-assistant-overview) dans Workfront vous aide à accomplir votre travail en offrant des informations et des suggestions in-app dans une conversation en langage naturel. L’assistant AI offre les fonctionnalités suivantes : résume les projets/tâches/problèmes/documents, fournit des instructions ou des informations de référence extraites de la documentation de Workfront sur Experience League, génère ou affine les formules pour les champs personnalisés calculés. | <ul><li>**Résumer les entrées du projet :** Résumer ce projet </li><li> **Résumer la sortie du projet :** fournit de brèves descriptions de l’objectif et du statut du projet, donne des exemples de tâches terminées et toujours en attente et fournit des détails et des notes supplémentaires.</li><li> **Générer/affiner l’entrée de formule :** « Réécrivez cette formule pour supprimer l’erreur d’expression non valide. » </li><li> **Générer/affiner la sortie de formule :** formule générée ou affinée. </li></ul>**Remarque :** l’assistant AI peut prendre quelques instants pour générer la formule révisée, selon la taille et la complexité de la formule. | Non |
