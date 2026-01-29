---
title: Tâches d’agent et consommation de crédit d’IA
description: Découvrez les tâches des agents et les taux de consommation de crédit de l’IA dans les applications Experience Cloud.
solution: Experience Cloud
topic: Artificial Intelligence
feature: Agentic AI, AI Tools
role: Admin, User
level: Intermediate
source-git-commit: 608e1685b6ca531da73d2df138b11537097716ce
workflow-type: tm+mt
source-wordcount: '388'
ht-degree: 13%

---

# Tâches de l’agent et consommation du crédit de l’IA

Découvrez les tâches d’IA dédiée aux agences et la consommation de crédit d’IA dans les applications Experience Cloud. Pour plus d’informations sur l’activation des fonctionnalités d’IA dédiée aux agents dans les applications Experience Cloud existantes, voir [IA dédiée aux agents dans Experience Cloud](agentic-ai.md#existing-apps).

## Traitements de l&#39;agent

Une _tâche d’agent_ est une série de tâches et d’actions qu’un agent exécute pour obtenir un résultat spécifique, selon les instructions du client ou de la cliente.

À l’aide d’invites en langage naturel via l’assistant AI, vous pouvez demander à des agents d’effectuer des tâches spécifiques. En fonction de ces entrées, Agent Orchestrator coordonne les agents appropriés pour exécuter chaque étape dans les applications Experience Cloud appropriées.

## Crédits d’IA

Un _crédit AI_ est une mesure basée sur l’utilisation qui quantifie l’exécution des tâches de l’agent. Les crédits AI ne s’appliquent pas aux [applications AI-first](/help/interface/features/agentic-ai.md).

## Consommation de crédit par l’IA

L’utilisation du crédit de l’IA peut varier en fonction de la complexité et de la valeur de la tâche exécutée :

* Les tâches simples (souvent en une seule étape) consomment moins de crédits
* Les tâches complexes (souvent à plusieurs étapes) consomment davantage de crédits
* Les tâches impliquant un raisonnement avancé, la validation, la coordination multi-agent ou l&#39;intégration consomment plus de crédits

### Taux estimés de consommation du crédit IA

| Agent | Traitement | Applications prises en charge | Crédits IA estimés |
|------|-----|------------------------|----------------------|
| Agent Audience | Création d’audience/compte | <ul><li>Real-Time CDP</li><li>Adobe Journey Optimizer</li></ul> | 50 |
| Agent Audience | Création de comptes/audiences basés sur les connaissances | <ul><li>Real-Time CDP</li><li>Adobe Journey Optimizer</li></ul> | 150 |
| Agent Audience | Gestion des audiences/comptes | <ul><li>Real-Time CDP</li><li>Adobe Journey Optimizer</li></ul> | 25 |
| Agent Audience | Analyse des audiences/comptes | <ul><li>Real-Time CDP</li><li>Adobe Journey Optimizer</li></ul> | 25 |
| Agent Audience | Idéation du groupe d&#39;achat | <ul><li>Adobe Journey Optimizer (B2B)</li></ul> | 25 |
| Data Insights Agent | Analyse et visualisation des données | <ul><li>Customer Journey Analytics</li></ul> | 25 |
| Journey Agent | idéation du parcours | <ul><li>Adobe Journey Optimizer (B2B)</li></ul> | 25 |
| Journey Agent | Création de parcours | <ul><li>Adobe Journey Optimizer (B2B, B2C)</li></ul> | 30 |
| Journey Agent | analyse de parcours | <ul><li>Adobe Journey Optimizer (B2B, B2C)</li></ul> | 50 |
| Journey Agent | Gestion des parcours | <ul><li>Adobe Journey Optimizer (B2B, B2C)</li></ul> | 25 |
| Agent du support technique du produit | Dépannage basé sur les connaissances | <ul><li>Plusieurs applications Experience Cloud</li></ul> | 0 |
| Agent du support technique du produit | Création et suivi des cas d’assistance | <ul><li>Plusieurs applications Experience Cloud</li></ul> | 10 |
| Agent du gestionnaire de contenu | Découverte de contenu | <ul><li>Services cloud Adobe Experience Manager</li></ul> | 5 |
| Agent du gestionnaire de contenu | Mise à jour et optimisation du contenu | <ul><li>Services cloud Adobe Experience Manager</li></ul> | 10 |
| Brand Experience Agent | Prise en charge du déploiement | <ul><li>Services cloud Adobe Experience Manager</li></ul> | 5 |
| Brand Experience Agent | Modernisation du site | <ul><li>Services cloud Adobe Experience Manager</li></ul> | 100 |

>[!NOTE]
>
>La consommation réelle de crédit de l’IA peut varier en fonction du nombre d’étapes exécutées et d’itérations par étape.
