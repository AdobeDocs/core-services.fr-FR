---
title: Tâches d’agent et consommation de crédit d’IA
description: Découvrez les tâches des agents et les taux de consommation de crédit de l’IA dans les applications Experience Cloud.
solution: Experience Cloud
topic: Artificial Intelligence
feature: Agentic AI, AI Tools
role: Admin, User
level: Intermediate
source-git-commit: d4734c4b43defedb20b7eb65556f56987dce02ae
workflow-type: tm+mt
source-wordcount: '970'
ht-degree: 4%

---

# Tâches de l’agent Adobe Experience Platform et consommation des crédits d’IA

Mise à jour : **mercredi 3 mars 2026**

Découvrez les tâches d’IA dédiée aux agences et la consommation de crédit d’IA dans les applications Experience Cloud. Pour plus d’informations sur l’activation des fonctionnalités d’IA dédiée aux agents dans les applications Experience Cloud existantes, voir [IA dédiée aux agents dans Experience Cloud](agentic-ai.md#existing-apps).

## Traitements de l&#39;agent

Une _tâche d’agent_ est une série de tâches et d’actions qu’un agent exécute pour obtenir un résultat spécifique, selon les instructions du client ou de la cliente.

À l’aide d’invites en langage naturel via l’assistant AI, vous pouvez demander à des agents d’effectuer des tâches spécifiques. En fonction de ces entrées, Agent Orchestrator coordonne les agents appropriés pour exécuter chaque étape dans les applications Experience Cloud appropriées.

## Crédits IA

Un _crédit AI_ est une mesure basée sur l’utilisation qui quantifie l’exécution des tâches de l’agent. Les crédits AI ne s’appliquent pas aux [applications AI-first](/help/interface/features/agentic-ai.md).

## Consommation de crédit par l’IA

L’utilisation du crédit de l’IA peut varier en fonction de la complexité et de la valeur de la tâche exécutée :

* Les tâches simples (souvent en une seule étape) consomment moins de crédits
* Les tâches complexes (souvent à plusieurs étapes) consomment davantage de crédits
* Les tâches impliquant un raisonnement avancé, la validation, la coordination multi-agent ou l&#39;intégration consomment plus de crédits

### Taux estimés de consommation du crédit IA

| Agent | Traitement | Applications prises en charge | Crédits IA estimés | Exemples d’invites |
| ------ | ----- | ------------------------ | ----------------------- | ----------------- |
| Agent Audience | Création d’audience/compte | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 50 | <ul><li>_Afficher les champs pour les acheteurs aisés_</li><li>_Rechercher tous les champs liés aux préférences du client_</li></ul> |
| Agent Audience | Création d’audiences/de comptes basés sur les connaissances | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 150 | <ul><li>_Créez une audience composée de personnes qui vivent en Californie_</li><li>_Générer une audience des membres de VIP qui ont dépensé plus de 1 000 $ ce trimestre_</li><li>_Créez une audience d’utilisateurs et d’utilisatrices qui ont acheté des vêtements mais n’ont pas effectué d’achat au cours des 60 derniers jours_</li></ul> |
| Agent Audience | Gestion des audiences/comptes | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 25 | <ul><li>_Existe-t-il des audiences en double ?_</li><li>_Afficher mes 5 audiences les plus importantes._</li><li>_Afficher les audiences qui ne sont activées vers aucune destination_</li><li>_Liste de toutes les audiences utilisées dans les parcours en direct_</li></ul> |
| Agent Audience | Analyse des audiences/comptes | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 25 | <ul><li>_Quelles audiences ont augmenté leur taille de plus de 20 % au cours de la dernière semaine ?_</li><li>_Dans quelle mesure l’audience « Loyal Platinum » a-t-elle changé par rapport à la valeur il y a 30 jours ?_</li><li>_Quelle est mon audience qui croît le plus rapidement ?_</li></ul> |
| Agent Audience | Idéation du groupe d&#39;achat | <ul><li>Adobe Journey Optimizer (B2B edition)</li></ul> | 25 | <ul><li>_Quels comptes indiquent l’intention de ces produits ?_</li><li>_Afficher les personnes principales par intention de produit pour XYZ._</li><li>_Quels groupes d&#39;achat comptent plus de 5 membres ?_</li></ul> |
| Data Insights Agent | Analyse et visualisation des données | <ul><li>Customer Journey Analytics (éditions B2C et B2B)</li></ul> | 25 | <ul><li>_Tendance des commandes en juillet_</li><li>_Afficher le chiffre d’affaires par région._</li><li>_Afficher les commandes par genre, de mars à juin._</li><li>_Quels ont été mes 10 principaux SKU par bénéfice en juin_</li><li>_Proportion des achats par mois de l&#39;année_</li><li>_Part des revenus par catégorie de produits_</li></ul> |
| Journey Agent | idéation du parcours | <ul><li>Adobe Journey Optimizer (B2B edition)</li></ul> | 25 | <ul><li>_Création d’un parcours pour les comptes d’espaces blancs avec l’intention de ma solution, en se concentrant sur les personnes impliquées dans le contenu du site web_</li></ul> |
| Journey Agent | Création de parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 30 | <ul><li>_Générez un parcours pour envoyer un rappel aux utilisateurs n&#39;ayant pas effectué leur premier achat au cours des 7 derniers jours_</li><li>_Lorsque les utilisateurs effectuent leur premier achat, envoyez une confirmation par SMS et une explication des avantages de suivi par e-mail après 3 jours_</li></ul> |
| Journey Agent | analyse de parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 50 | <ul><li>_Je souhaite analyser l’abandon par nœud pour la campagne du 4 juillet par parcours._</li><li>_Existe-t-il des conflits de planification pour le parcours X_</li><li>_Afficher les conflits de chevauchement des audiences pour le parcours X_</li></ul> |
| Journey Agent | Gestion des parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 25 | <ul><li>_De combien de parcours est-ce que je dispose ?_</li><li>_Répertorier tous les parcours utilisant l’audience X._</li><li>_Répertorier tous les parcours actuellement en mode test_</li></ul> |
| Agent du support technique du produit | Dépannage basé sur les connaissances | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (éditions B2C et B2B)</li><li>Customer Journey Analytics (éditions B2C et B2B)</li></ul> | 0 | <ul><li>_Pourquoi mon nombre de profils diffère-t-il sur le tableau de bord d’utilisation des licences et la page d’accueil d’Experience Platform ?_</li><li>_Quelles sont les raisons pour lesquelles un parcours ne se déclenche pas ?_</li><li>_Comment Adobe Experience Platform crée-t-il des expériences en temps réel ?_</li><li>_Comment configurer et utiliser les alertes dans Adobe Experience Platform ?_</li><li>_Quelle est la limite de richesse moyenne des profils dans l’activation de Adobe Experience Platform ?_</li></ul> |
| Agent du support technique du produit | Création et suivi des cas d’assistance | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li>Adobe Journey Optimizer (éditions B2C et B2B)<li>Customer Journey Analytics (éditions B2C et B2B)</li><li>Adobe Experience Manager</li></ul> | 10 | <ul><li>_Créer un nouveau ticket d’assistance pour ma tâche de segmentation ayant échoué_</li><li>_Quel est l&#39;état du billet E-001772068 ?_</li></ul> |
| Agent du gestionnaire de contenu | Découverte de contenu | <ul><li>Adobe Experience Manager Assets</li></ul> | 5 | <ul><li>_Afficher les fragments de contenu pour la création de la campagne d’offres WKND._</li><li>_Rechercher des images PNG d’emballage de produit._</li><li>_Afficher les images balisées office dans le dossier WKND._</li><li>_Existe-t-il des fichiers SVG dans le dossier WKND ?_</li><li>_Afficher tous les formulaires de demande de prêt._</li><li>_Je recherche des formulaires d’intégration des employés._</li></ul> |
| Agent du gestionnaire de contenu | <ul><li>Optimisation du contenu</li></ul> | <ul><li>Adobe Experience Manager Assets</li></ul> | 10 | <ul><li>_Créez un rendu de 2 000 px sous la forme d’un JPEG avec une qualité de 80 %._</li><li>_Créer un rendu pour une histoire Instagram._</li><li>_Recouvrez l’image avec des graphiques à 30 % de remise sur la bannière promotionnelle, en la plaçant à 100 pixels du centre._</li><li>_Remplacer la couleur d’arrière-plan du fichier PNG par #ff8932._</li></ul> |
| Brand Experience Agent | <ul><li>Mise à jour du contenu</li><li>Création de Forms</li><li>Dépannage du pipeline</li></ul> | <ul><li>Services cloud Adobe Experience Manager</li><li>Adobe Experience Manager Sites</li><li>Adobe Experience Manager Forms</li></ul> | 50 | <ul><li>_Résolution des problèmes liés à mon pipeline en échec_</li><li>_Répertorier mes pipelines ayant échoué pour le programme principal._</li><li>_Analysez mon pipeline en échec appelé « Pipeline de développement »._</li><li>_Résolution des problèmes liés aux 1234567_ d’exécution du pipeline</li></ul> |
| Brand Experience Agent | Modernisation du site | Services cloud Adobe Experience Manager | 100 | <ul><li>_Migrer la page`https://wknd-trendsetters.site`_</li></ul> |

>[!NOTE]
>
>La consommation réelle de crédit de l’IA peut varier en fonction du nombre d’étapes exécutées et d’itérations par étape.

## Plus d’aide sur cette rubrique

* [L’IA dédiée aux agences dans Experience Cloud](/help/interface/features/agentic-ai.md)
* [Essai des agents Adobe Experience Platform lié à l&#39;utilisation](https://experienceleague.adobe.com/en/docs/experience-cloud-ai/experience-cloud-ai/agents/trial)
