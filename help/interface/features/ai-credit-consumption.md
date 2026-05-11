---
title: Tâches d’agent et consommation de crédit d’IA
description: Découvrez les tâches des agents et les taux de consommation de crédit de l’IA dans les applications CX Enterprise.
solution: Experience Cloud
topic: Artificial Intelligence
feature: Agentic AI, AI Tools
role: Admin, User
level: Intermediate
TQID: 'https://experienceleague.adobe.com/REonDh6tRlMxB3iAryxC0BLXeVTTaUuwCu98DXyESVQ'
product_v2: id: e1971122-7081-4556-9222-8a31bd71800c
topic_v2: id: bbbea26f-9621-49eb-9ab8-e06fb3bbce8cid: bce87dde-a4ab-44c9-8a18-ad66e4ddb377id: c1579802-ddd4-4214-8a91-97b2066abe11id: c7d04a2c-412a-4c9d-9d7a-4456eaa5adebid: cdd65e7e-8839-44a2-bc21-0e03623b5dd1id: d00e9f03-e50b-4162-b143-0c0817c937c2id: e1e0219c-f879-479f-8427-888ed2a6e9c2
source-git-commit: f01d85af42b8f2c27dbada8f73546bc6fe4bf710
workflow-type: tm+mt
source-wordcount: 1055
ht-degree: 4%

---

# Tâches de l’agent Adobe Experience Platform et consommation des crédits d’IA

Mise à jour : **5 mars 2026**

Découvrez les tâches d’IA dédiée aux agences et la consommation de crédit d’IA dans les applications CX Enterprise. Pour plus d’informations sur l’activation des fonctionnalités d’IA dédiée aux agents dans les applications CX Enterprise existantes, voir [IA dédiée aux agents dans CX Enterprise](agentic-ai.md#existing-apps).

## Traitements de l&#39;agent

Une _tâche d’agent_ est une série de tâches et d’actions qu’un agent exécute pour obtenir un résultat spécifique, selon les instructions du client ou de la cliente.

À l’aide d’invites en langage naturel via l’assistant AI, vous pouvez demander à des agents d’effectuer des tâches spécifiques. Sur la base de ces entrées, Agent Orchestrator coordonne les agents appropriés pour exécuter chaque étape dans les applications d’entreprise CX appropriées.

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
| Agent Audience | Création d’audience/compte | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 50 | <ul><li><em>Afficher les champs pour les acheteurs aisés</em></li><li><em>Rechercher tous les champs liés aux préférences du client</em></li></ul> |
| Agent Audience | Création d’audiences/de comptes basés sur les connaissances | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 150 | <ul><li><em>Créez une audience composée de personnes qui vivent en Californie</em></li><li><em>Générer une audience des membres de VIP qui ont dépensé plus de 1 000 $ ce trimestre</em></li><li><em>Créez une audience d’utilisateurs et d’utilisatrices qui ont acheté des vêtements mais n’ont pas effectué d’achat au cours des 60 derniers jours</em></li></ul> |
| Agent Audience | Gestion des audiences/comptes | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 25 | <ul><li><em>Existe-t-il des audiences en double ?</em></li><li><em>Afficher mes 5 audiences les plus importantes.</em></li><li><em>Afficher les audiences qui ne sont activées vers aucune destination</em></li><li><em>Liste de toutes les audiences utilisées dans les parcours en direct</em></li></ul> |
| Agent Audience | Analyse des audiences/comptes | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (B2C Edition)</li></ul> | 25 | <ul><li><em>Quelles audiences ont augmenté leur taille de plus de 20 % au cours de la dernière semaine ?</em></li><li><em>Dans quelle mesure l’audience « Loyal Platinum » a-t-elle changé par rapport à la valeur il y a 30 jours ?</em></li><li><em>Quelle est mon audience qui croît le plus rapidement ?</em></li></ul> |
| Agent Audience | Idéation du groupe d&#39;achat | <ul><li>Adobe Journey Optimizer (B2B edition)</li></ul> | 25 | <ul><li><em>Quels comptes indiquent l’intention de ces produits ?</em></li><li><em>Afficher les personnes principales par intention de produit pour XYZ.</em></li><li><em>Quels groupes d&#39;achat comptent plus de 5 membres ?</em></li></ul> |
| Data Insights Agent | Analyse et visualisation des données | <ul><li>Customer Journey Analytics (éditions B2C et B2B)</li></ul> | 25 | <ul><li><em>Tendance des commandes en juillet</em></li><li><em>Afficher le chiffre d’affaires par région.</em></li><li><em>Afficher les commandes par genre, de mars à juin.</em></li><li><em>Quels ont été mes 10 principaux SKU par bénéfice en juin </em></li><li><em>Proportion des achats par mois de l&#39;année</em></li><li><em>Part des revenus par catégorie de produits</em></li></ul> |
| Journey Agent | idéation du parcours | <ul><li>Adobe Journey Optimizer (B2B edition)</li></ul> | 25 | <ul><li><em>Création d’un parcours pour les comptes d’espaces blancs avec l’intention de ma solution, en se concentrant sur les personnes impliquées dans le contenu du site web</em></li></ul> |
| Journey Agent | Création de parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 30 | <ul><li><em>Générez un parcours pour envoyer un rappel aux utilisateurs n&#39;ayant pas effectué leur premier achat au cours des 7 derniers jours</em></li><li><em>Lorsque les utilisateurs effectuent leur premier achat, envoyez une confirmation par SMS et une explication des avantages de suivi par e-mail après 3 jours</em></li></ul> |
| Journey Agent | analyse de parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 50 | <ul><li><em>Je souhaite analyser l’abandon par nœud pour la campagne du 4 juillet par parcours.</em></li><li><em>Existe-t-il des conflits de planification pour le parcours X </em></li><li><em>Afficher les conflits de chevauchement des audiences pour le parcours X</em></li></ul> |
| Journey Agent | Gestion des parcours | <ul><li>Adobe Journey Optimizer (éditions B2B et B2C)</li></ul> | 25 | <ul><li><em>De combien de parcours est-ce que je dispose ?</em></li><li><em>Répertorier tous les parcours utilisant l’audience X.</em></li><li><em>Répertorier tous les parcours actuellement en mode test</em></li></ul> |
| Agent du support technique du produit | Dépannage basé sur les connaissances | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (éditions B2C et B2B)</li><li>Customer Journey Analytics (éditions B2C et B2B)</li></ul> | 0 | <ul><li><em>Pourquoi mon nombre de profils diffère-t-il sur le tableau de bord d’utilisation des licences et la page d’accueil d’Experience Platform ?</em></li><li><em>Quelles sont les raisons pour lesquelles un parcours ne se déclenche pas ?</em></li><li><em>Comment Adobe Experience Platform crée-t-il des expériences en temps réel ?</em></li><li><em>Comment configurer et utiliser les alertes dans Adobe Experience Platform ?</em></li><li><em>Quelle est la limite de richesse moyenne des profils dans l’activation de Adobe Experience Platform ?</em></li></ul> |
| Agent du support technique du produit | Création et suivi des cas d’assistance | <ul><li>Real-Time CDP (éditions B2B, B2C et B2P)</li><li>Adobe Journey Optimizer (éditions B2C et B2B)</li><li>Customer Journey Analytics (éditions B2C et B2B)</li><li>Adobe Experience Manager</li></ul> | 10 | <ul><li><em>Créer un nouveau ticket d’assistance pour ma tâche de segmentation ayant échoué</em></li><li><em>Quel est l&#39;état du billet E-001772068 ?</em></li></ul> |
| Agent du gestionnaire de contenu | Découverte de contenu | <ul><li>Adobe Experience Manager</li></ul> | 5 | <ul><li><em>Afficher les fragments de contenu pour la création de la campagne d’offres WKND.</em></li><li><em>Rechercher des images PNG d’emballage de produit.</em></li><li><em>Afficher les images balisées office dans le dossier WKND.</em></li><li><em>Existe-t-il des fichiers SVG dans le dossier WKND ?</em></li><li><em>Afficher tous les formulaires de demande de prêt.</em></li><li><em>Je recherche des formulaires d’intégration des employés.</em></li></ul> |
| Agent du gestionnaire de contenu | <ul><li>Optimisation du contenu</li></ul> | <ul><li>Adobe Experience Manager Assets et Dynamic Media</li></ul> | 10 | <ul><li><em>Créez un rendu de 2 000 px sous la forme d’un JPEG avec une qualité de 80 %.</em></li><li><em>Créer un rendu pour une histoire Instagram.</em></li><li><em>Recouvrez l’image avec des graphiques à 30 % de remise sur la bannière promotionnelle, en la plaçant à 100 pixels du centre.</em></li><li><em>Remplacer la couleur d’arrière-plan du fichier PNG par #ff8932.</em></li></ul> |
| Agent de gouvernance de marque | <ul><li>Vérifications de la politique de marque</li></ul><ul><li>Autorisations avec Content Hub</li></ul><ul><li>Expiration des ressources</li></ul> | <ul><li>Adobe Experience Manager Sites (stratégies de marque)</li></ul><ul><li>Adobe Experience Manager Assets</li></ul> | 25 | <ul><li><em>Cette page est-elle alignée sur ma marque ? `https://www.website/en.html`</em></li><li><em>Afficher toutes les règles ABAC Content Hub existantes</em></li><li><em>Certaines de mes ressources expirent-elles bientôt ?</em></li></ul> |
| Brand Experience Agent | <ul><li>Mise à jour du contenu</li><li>Création de Forms</li><li>Dépannage du pipeline</li></ul> | <ul><li>Services cloud Adobe Experience Manager</li><li>Adobe Experience Manager Sites</li><li>Adobe Experience Manager Forms</li></ul> | 50 | <ul><li><em>Le `URL`, mettez à jour le titre en Hello world</em></li><li><em>Créez un formulaire de contact avec les champs de nom, d’e-mail et de message</em></li><li><em>Résolution des problèmes liés à mon pipeline en échec</em></li><li><em>Répertorier mes pipelines ayant échoué pour le programme principal.</em></li></ul> |
| Brand Experience Agent | Modernisation du site | Services cloud Adobe Experience Manager | 100 | <ul><li><em>Migrer la page `https://wknd-trendsetters.site`</em></li></ul> |

>[!NOTE]
>
>La consommation réelle de crédit de l’IA peut varier en fonction du nombre d’étapes exécutées et d’itérations par étape.

## Plus d’aide sur cette rubrique

* [GenAI dans CX Enterprise](/help/interface/features/generative-ai.md)
* [IA dédiée aux agences dans CX Enterprise](/help/interface/features/agentic-ai.md)
* [Essai des agents Adobe Experience Platform lié à l’utilisation](https://experienceleague.adobe.com/en/docs/experience-cloud-ai/experience-cloud-ai/agents/trial)
