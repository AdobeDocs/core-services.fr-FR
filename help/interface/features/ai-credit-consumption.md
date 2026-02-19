---
title: Tâches d’agent et consommation de crédit d’IA
description: Découvrez les tâches des agents et les taux de consommation de crédit de l’IA dans les applications Experience Cloud.
solution: Experience Cloud
topic: Artificial Intelligence
feature: Agentic AI, AI Tools
role: Admin, User
level: Intermediate
source-git-commit: bb6adf13bed37d4a885b5baec28199efade592e1
workflow-type: tm+mt
source-wordcount: '965'
ht-degree: 3%

---

# Tâches de l’agent Adobe Experience Platform et consommation des crédits d’IA

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
| ------ |-----|------------------------|----------------------|----------------|
| Agent Audience | Création d’audience/compte | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 50 | <ul><li>Afficher les champs pour les acheteurs aisés</li><li>Rechercher tous les champs liés aux préférences du client</li></ul> |
| Agent Audience | Création d’audiences/de comptes basés sur les connaissances | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 150 | <ul><li>Créez une audience composée de personnes qui vivent en Californie</li><li>Générer une audience des membres de VIP qui ont dépensé plus de 1 000 $ ce trimestre</li><li>Créez une audience d’utilisateurs et d’utilisatrices qui ont acheté des vêtements sans avoir effectué d’achat au cours des 60 derniers jours.</li></ul> |
| Agent Audience | Gestion des audiences/comptes | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 25 | <ul><li>Y a-t-il des audiences en double ?</li><li>Montrez-moi mes 5 audiences les plus importantes.</li><li>Afficher les audiences qui ne sont activées vers aucune destination</li><li>Répertorier toutes les audiences utilisées dans les parcours en direct</li></ul> |
| Agent Audience | Analyse des audiences/comptes | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 25 | <ul><li>Quelles audiences ont augmenté leur taille de plus de 20 % au cours de la dernière semaine ?</li><li>Dans quelle mesure l’audience « Loyal Platinum » a-t-elle changé par rapport à la valeur il y a 30 jours ?</li><li>Quelle est mon audience qui croît le plus rapidement ?</li></ul> |
| Agent Audience | Idéation du groupe d&#39;achat | <ul><li>Adobe Journey Optimizer (B2B edition)</li></ul> | 25 | <ul><li>Quels comptes indiquent l’intention de ces produits ?</li><li>Me montrer les personnes principales par intention de produit pour XYZ.</li><li>Quels groupes d&#39;achat comptent plus de 5 membres ?</li></ul> |
| Data Insights Agent | Analyse et visualisation des données | <ul><li>Customer Journey Analytics (éditions B2C et B2B)</li></ul> | 25 | <ul><li>Tendance des commandes en juillet</li><li>Afficher le chiffre d’affaires par région.</li><li>Afficher les commandes par genre, de mars à juin.</li><li>Quels ont été mes 10 principaux SKU par bénéfice en juin ?</li><li>Proportion d&#39;achats par mois de l&#39;année</li><li>Part des revenus par catégorie de produits</li></ul> |
| Journey Agent | idéation du parcours | <ul><li>Adobe Journey Optimizer (B2B edition)</li></ul> | 25 | <ul><li>Création d’un parcours pour les comptes d’espaces blancs avec l’intention de ma solution, en se concentrant sur les personnes impliquées dans le contenu du site web</li></ul> |
| Journey Agent | Création de parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 30 | <ul><li>Générez un parcours pour envoyer un rappel aux utilisateurs qui n’ont pas effectué leur premier achat au cours des 7 derniers jours</li><li>Lorsque les utilisateurs effectuent leur premier achat, envoyez une confirmation par SMS et une explication des avantages du suivi par e-mail après 3 jours</li></ul> |
| Journey Agent | analyse de parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 50 | <ul><li>Je souhaite analyser les abandons par nœud pour la campagne du 4 juillet par parcours.</li><li>Existe-t-il des conflits de planification pour le parcours X ?</li><li>Afficher les conflits de chevauchement des audiences pour le parcours X</li></ul> |
| Journey Agent | Gestion des parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 25 | <ul><li>Combien de parcours est-ce que j&#39;ai ?</li><li>Répertoriez tous les parcours utilisant l’audience X.</li><li>Répertorier tous les parcours actuellement en mode test</li></ul> |
| Agent du support technique du produit | Dépannage basé sur les connaissances | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (éditions B2C et B2B)</li><li>Customer Journey Analytics (éditions B2C et B2B)</li></ul> | 0 | <ul><li>Pourquoi le nombre de profils diffère-t-il sur le tableau de bord d’utilisation des licences et la page d’accueil d’Experience Platform ?</li><li>Quelles sont les raisons pour lesquelles un parcours ne se déclenche pas ?</li><li>Comment Adobe Experience Platform crée-t-il des expériences en temps réel ?</li><li>Comment configurer et utiliser les alertes dans Adobe Experience Platform ?</li><li>Quelle est la limite de richesse moyenne des profils dans l’activation de Adobe Experience Platform ?</li></ul> |
| Agent du support technique du produit | Création et suivi des cas d’assistance | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li>Adobe Journey Optimizer (éditions B2C et B2B)<li>Customer Journey Analytics (éditions B2C et B2B)</li><li>Adobe Experience Manager</li></ul> | 10 | <ul><li>Créer un nouveau ticket d’assistance pour mon traitement de segmentation ayant échoué</li><li>Quel est l&#39;état du billet E-001772068 ?</li></ul> |
| Agent du gestionnaire de contenu | Découverte de contenu | <ul><li>Services cloud Adobe Experience Manager</li></ul> | 5 | <ul><li>Afficher les fragments de contenu pour la création de la campagne d’offres WKND.</li><li>Recherchez les images PNG d’emballage de produit.</li><li>Afficher les images balisées office dans le dossier WKND.</li><li>Le dossier WKND contient-il des fichiers svg ?</li><li>Montrez-moi tous les formulaires de demande de prêt.</li><li>Je recherche des formulaires d’intégration des employés.</li></ul> |
| Agent du gestionnaire de contenu | <ul><li>Mise à jour du contenu</li><li>Optimisation du contenu</li><li>Création de Forms</li></ul> | <ul><li>Services cloud Adobe Experience Manager</li></ul> | 10 | <ul><li>Créez un rendu de 2 000 pixels en tant que JPEG avec une qualité de 80 %.</li><li>Créez un rendu pour une histoire Instagram.</li><li>Recouvrez l’image avec des graphiques à 30 % de remise sur la bannière promotionnelle, en la plaçant à 100 pixels du centre.</li><li>Remplacez la couleur d’arrière-plan du fichier PNG par #ff8932.</li></ul> |
| Brand Experience Agent | <ul><li>Assistance d’Experience Platform</li><li>Prise en charge du déploiement</li></ul> | <ul><li>Services cloud Adobe Experience Manager</li></ul> | 5 | <ul><li>Résolution des problèmes liés à mon pipeline en échec</li><li>Répertorier mes pipelines ayant échoué pour le programme principal.</li><li>Analysez mon pipeline en échec appelé « Pipeline de développement ».</li><li>Résolution des problèmes liés à l’exécution du pipeline 1234567</li></ul> |
| Brand Experience Agent | Modernisation du site | Services cloud Adobe Experience Manager | 100 | <ul><li>Migrer la page https://wknd-trendsetters.site</li></ul> |

>[!NOTE]
>
>La consommation réelle de crédit de l’IA peut varier en fonction du nombre d’étapes exécutées et d’itérations par étape.

## Plus d’aide sur cette rubrique

* [L’IA dédiée aux agences dans Experience Cloud](/help/interface/features/agentic-ai.md)
* [Essai des agents Adobe Experience Platform lié à l&#39;utilisation](https://experienceleague.adobe.com/en/docs/experience-cloud-ai/experience-cloud-ai/agents/trial)