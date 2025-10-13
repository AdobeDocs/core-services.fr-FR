---
title: Collecte de données régionales
description: Découvrez la collecte de données régionales dans Experience Cloud.
exl-id: 295e9736-2a58-48a8-9968-5dfa33b70d95
source-git-commit: 2a80851c0a7d4ef7dbcc2565177b239f3e063164
workflow-type: tm+mt
source-wordcount: '294'
ht-degree: 1%

---

# Collecte de données régionales

Adobe Experience Cloud utilise la collecte de données régionale (RDC) afin que les interactions entre vos visiteurs et Adobe se produisent le plus près possible de vos visiteurs. Les données collectées localement sur un site Edge sont transférées en toute sécurité vers un site principal pour traitement. Une fois traitées, les données sont disponibles pour les produits et services Adobe Experience Cloud.

Le workflow de collecte de données régionale offre plusieurs avantages :

* **Performances** : avec RDC, vos visiteurs se connectent au site Edge le plus proche. Cette optimisation offre le temps de réponse le plus rapide, ce qui se traduit par un suivi plus précis et des temps de chargement plus rapides.
* **Redondance** : en cas d’interruption de la communication entre un site Edge et un site principal, l’infrastructure d’Adobe enregistre les données localement, puis les transfère vers le site principal lorsque les communications sont restaurées. Adobe peut également acheminer le trafic vers d’autres sites Edge si un emplacement spécifique subit des interruptions.

La collecte de données régionale inclut actuellement les emplacements suivants (sujets à modification) :

## Collecte de données propriétaire

| Type de collecte de données régionale | Centres de collecte de données |
| --- | --- |
| Global (par défaut) | Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Global + Chine* | Pékin*, Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Amériques uniquement | Oregon, Virginie |
| Europe uniquement | Irlande, Paris |
| Asie-Pacifique uniquement | Mumbai, Singapour, Tokyo, Sydney |
| Chine uniquement* | Pékin |

{style="table-layout:auto"}

Le collecte de données régionale _*Chine nécessite le package complémentaire Optimisation des performances pour la Chine et s’applique uniquement à Adobe Analytics qui utilise la collecte de données AppMeasurement. Les autres services Experience Cloud et la collecte de données Web SDK ne sont pas pris en charge. Contactez l’équipe chargée de votre compte Adobe pour en savoir plus sur le package de modules complémentaires d’optimisation des performances pour la Chine._

## Collecte de données tierces

La collecte de données tierces inclut des domaines de cookies qui ne correspondent pas à votre domaine de site web. Par exemple, `adobedc.net`, `omtrdc.net` et `2o7.net`.

| Type de collecte de données régionale | Centres de collecte de données |
| --- | --- |
| Par défaut | Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Par défaut + Chine* | Pékin*, Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |

{style="table-layout:auto"}
