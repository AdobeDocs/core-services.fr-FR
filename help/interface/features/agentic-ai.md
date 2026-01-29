---
title: IA dédiée aux agences dans les applications Experience Cloud
description: Découvrez où agentic AI est disponible dans les applications Experience Cloud.
solution: Experience Cloud
landing-page-name: ai
landing-page-breadcrumb-title: AI Documentation
topic: Artificial Intelligence
feature: Agentic AI, AI Tools
role: Admin, User
level: Intermediate
hidefromtoc: true
index: false
exl-id: c1a8f9a7-4752-4040-b5f0-dc775417f536
source-git-commit: 7c01f555359c2993e3d4da077882073a1e8b839a
workflow-type: tm+mt
source-wordcount: '876'
ht-degree: 4%

---

# L’IA dédiée aux agences dans Adobe Experience Cloud

Mise à jour : **29 janvier 2026**

Les agents Adobe Experience Platform utilisent l’Experience Platform [Agent Orchestrator](https://experienceleague.adobe.com/fr/docs/experience-cloud-ai/experience-cloud-ai/home) pour ajouter des fonctionnalités basées sur des agents aux applications Experience Cloud.

Ces agents permettent d’automatiser les tâches, de fournir des informations plus rapidement et de rationaliser les workflows. Par conséquent, les équipes peuvent travailler plus efficacement et tirer le meilleur parti d’Experience Cloud.

L’accès aux agents d’IA dans Experience Cloud est disponible dans :

* [Applications Experience Cloud existantes](#existing-apps)
* [Applications Experience Cloud primées sur l’IA](#ai-first-apps)

Les sections suivantes décrivent ces deux manières d’activer l’IA dédiée aux agents dans Experience Cloud.

## Applications Experience Cloud existantes {#existing-apps}

Dans les applications existantes, vous pouvez utiliser le langage naturel pour apprendre aux agents Adobe Experience Platform via l’interface de conversation [Assistant IA](https://experienceleague.adobe.com/fr/docs/experience-cloud-ai/experience-cloud-ai/home). L’assistant d’IA est disponible dans les vues plein écran et du rail droit.

Les agents peuvent être activés dans les applications Experience Cloud existantes pour les clients de l’une des catégories suivantes :

* Vous avez acheté une licence Adobe Experience Platform Agents AI Credits
* Vous êtes inclus dans une version d’évaluation liée à l’utilisation (crédits AI limités fournis)
* Vous avez transféré le SKU Agent Orchestrator Promo (licence d’évaluation limitée dans le temps).

L’utilisation d’agents AI pour effectuer des _tâches d’agent_ consomme des crédits AI. En savoir plus sur les tâches d’agent et les crédits AI dans _[Tâches d’agent et consommation de crédits AI](/help/interface/features/ai-credit-consumption.md)_.

Les agents d’IA suivent _vos_ informations, supervisent et respectent les contrôles d’accès au niveau des produits. Vous pouvez uniquement effectuer des tâches ou accéder aux données que vous êtes autorisé à utiliser dans le produit Experience Cloud sous-jacent.

### Agents d’IA dans les applications Experience Cloud existantes {#existing-apps-table}

Le tableau suivant répertorie les agents Experience Platform disponibles dans les applications Experience Cloud existantes.

| Nom de l’agent | Fonctionnalités | Applications prises en charge |
|---|----------|----------|
| [Audience Agent](https://experienceleague.adobe.com/fr/docs/experience-cloud-ai/experience-cloud-ai/agents/audience) | Donnez à vos équipes les moyens de créer, gérer et optimiser les audiences à l’aide d’invites en langage naturel pour une mise sur le marché plus facile, plus efficace et plus rapide. | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> |
| **Agent du gestionnaire de contenu** | <ul><li>[Découverte de contenu](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/ai-in-aem/agents/discovery/overview) : accélérez la création et la découverte grâce à des invites en langage naturel simplifiées pour rechercher et afficher instantanément le contenu Experience Manager sur les images, les vidéos, les documents textuels, les fragments de contenu et les formulaires.</li><li>[Optimisation du contenu](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/ai-in-aem/agents/content-optimization/overview) : simplifiez la création de variantes de contenu visuel à partir de ressources sources à l’aide d’invites en langage naturel.</li><li>[Production d’expérience](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/ai-in-aem/agents/production/overview) : automatise les tâches à effort élevé et à volume élevé dans le CMS. Cet agent transforme des processus longs et manuels en workflows rapides, assistés par l’IA, qui maintiennent chaque expérience à jour et cohérente, aidant ainsi votre entreprise à atteindre ses objectifs.</li></ul> | <ul><li>Adobe Experience Manager (découverte de contenu)</li></ul><ul><li>Adobe Experience Manager avec Dynamic Media et OpenAPI (optimisation du contenu)</li></ul><ul><li>Adobe Experience Manager Cloud Services et Edge Delivery Services (production d’expérience) </li></ul> |
| [Data Insights Agent](https://experienceleague.adobe.com/fr/docs/analytics-platform/using/cja-overview/cja-b2c-overview/data-analysis-ai) | Répond rapidement aux questions sur vos données. Il crée des visualisations pertinentes dans Analysis Workspace en utilisant les composants de votre vue de données et vos données réelles. | <ul><li>Customer Journey Analytics (éditions B2B et B2C)</li></ul> |
| **Brand Experience Agent** | [Prise en charge du déploiement](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/ai-in-aem/agents/development/overview) : aide les développeurs et les administrateurs techniques d’AEM CS à résoudre les problèmes liés aux échecs de l’étape de création dans le pipeline Cloud Manager en analysant la cause première et en suggérant des correctifs. | <ul><li>Assistant AI dans AEM Cloud Service et Adobe Managed Services</li></ul> |
| **Brand Governance Agent*** | [Gouvernance de marque](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/ai-in-aem/agents/governance/overview) : protégez l’intégrité et la conformité de la marque en appliquant des politiques de sécurité, de réglementation et de marque dans Experience Manager. Cet agent applique la gouvernance de marque pour maintenir les normes visuelles et de messagerie. Il utilise des autorisations granulaires pour gérer les modifications d’accès et de contenu et incorpore la gestion des droits numériques pour respecter les contraintes de licence et d’utilisation. | <ul><li>Adobe Experience Manager Sites</li><li>Adobe Experience Manager Assets</li><li>Adobe Experience Manager Forms</li></ul> |
| [Journey Agent](https://experienceleague.adobe.com/fr/docs/experience-cloud-ai/experience-cloud-ai/agents/ajo-agent-analyze) | Permettez à vos équipes de créer, d’analyser et d’optimiser rapidement des parcours clients multipoint à grande échelle. | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> |
| [Agent du support produit](https://experienceleague.adobe.com/fr/docs/experience-platform/ai-assistant/new-features/customer-support) | Résolvez les problèmes d’assistance sans quitter vos workflows, créez des tickets d’assistance clientèle et suivez la progression des cas à l’aide de l’assistant AI. | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (éditions B2B et B2C)</li><li>Adobe Journey Optimizer B2B edition</li><li>Customer Journey Analytics</li><li>Adobe Experience Manager</li></ul> |

Astérisque (*) : cet agent est accessible aux clients dans le programme Explorateur. Le programme Explorateur est un programme réservé aux invitations qui permet d’accéder rapidement aux dernières fonctionnalités d’agent d’Adobe. Veuillez contacter votre représentant de compte pour plus d’informations.

## Applications Experience Cloud primées sur l’IA {#ai-first-apps}

Les applications axées sur l&#39;IA sont conçues avec de l&#39;Al génératif ou agentique au cœur. Ils utilisent l&#39;Al génératif ou l&#39;Al agentique pour des tâches clés, et les caractéristiques agentiques sont déjà incluses dans la licence d&#39;application Al-First. Par conséquent, ils ne nécessitent pas de licence Experience Platform Agent Orchestrator.

Le tableau suivant répertorie les agents Experience Platform disponibles en tant qu’applications Tout d’abord. Ils sont activés en attribuant une licence à ces applications Al-First :

| Nom de l’agent | Fonctionnalités | Applications prises en charge |
|---|----------|----------|
| [Agent d’expérimentation](https://experienceleague.adobe.com/fr/docs/journey-optimizer/using/content-management/content-experiment/experiment/experiment-accelerator-security) | Automatisez, analysez et synthétisez les informations afin d’identifier rapidement les expériences à fort impact et les opportunités de croissance à partir d’un espace de travail centralisé, tout en réduisant les processus manuels. | <ul><li>AJO Experimentation Accelerator</li></ul> |
| [Agent d’optimisation LLM](https://experienceleague.adobe.com/fr/docs/llm-optimizer/using/home) | Améliorez la visibilité, la précision et l’influence dans les environnements de recherche pilotés par l’IA, fournissez des informations sur la présence de la marque dans les réponses générées par l’IA, proposez des recommandations de contenu normatif et automatisez les correctifs d’optimisation. | <ul><li>Adobe LLM Optimizer</li></ul> |
| [Site Optimization Agent](https://experienceleague.adobe.com/fr/docs/experience-manager-sites-optimizer/content/home) | Optimisez l’impact commercial en détectant et en déployant automatiquement les améliorations du site web. Grâce à l’IA générative et à plusieurs technologies de surveillance, vous pouvez augmenter l’acquisition du trafic sur le site, l’engagement, etc | <ul><li>AEM Sites Optimizer</li></ul> |
| [Product Advisor Agent](https://experienceleague.adobe.com/fr/docs/brand-concierge/content/documentation/overview) | Améliorez la conversion et l’engagement grâce à une découverte intelligente et contextuelle des produits, adaptée aux préférences et aux comportements individuels. | <ul><li>Adobe Brand Concierge</li></ul> |

## Plus d’aide sur cette rubrique

* [AI dans Experience Cloud](https://experienceleague.adobe.com/fr/docs/ai) page d’accueil de la documentation
* [Présentation des agents dans AEM](https://experienceleague.adobe.com/fr/docs/experience-manager-cloud-service/content/ai-in-aem/agents/overview)

[!BADGE En savoir plus sur Adobe for Business]{type=Informative url="https://business.adobe.com/fr/products/experience-platform/agent-orchestrator.html" tooltip="Accédez à Business.adobe.com"}
