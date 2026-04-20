---
title: Collecte de données régionales
description: Découvrez la collecte de données régionale dans CX Enterprise.
exl-id: 295e9736-2a58-48a8-9968-5dfa33b70d95
TQID: https://experienceleague.adobe.com/hjHQDRoNOP2e6pKhKHB9DZaII2o8eJVzL5wjRzaMFwM
product_v2:
  - id: e1971122-7081-4556-9222-8a31bd71800c
role_v2:
  - id: b69b2659-1057-424e-8fc5-ed9e016dc554
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2:
  - id: c2be0313-b3ae-45e0-b454-d20bf54b23f2
  - id: cdd65e7e-8839-44a2-bc21-0e03623b5dd1
  - id: d3cdead0-685a-4489-9250-4bb709942f66
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 1a77ef8d31211fb11c790152e78037a8c3b238a2
workflow-type: tm+mt
source-wordcount: 299
ht-degree: 1%

---

# Collecte de données régionales

Adobe CX Enterprise utilise la collecte de données régionale (RDC) afin que les interactions entre vos visiteurs et Adobe se produisent le plus près possible de vos visiteurs. Les données collectées localement sur un site Edge sont transférées en toute sécurité vers un site principal pour traitement. Une fois traitées, les données sont disponibles pour les produits et services Adobe CX Enterprise.

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

Le collecte de données régionale _*Chine nécessite le package complémentaire Optimisation des performances pour la Chine et s’applique uniquement à Adobe Analytics qui utilise la collecte de données AppMeasurement. Les autres services CX Enterprise et la collecte de données Web SDK ne sont pas pris en charge. Contactez l’équipe chargée de votre compte Adobe pour en savoir plus sur le package de modules complémentaires d’optimisation des performances pour la Chine._

## Collecte de données tierces

La collecte de données tierces inclut des domaines de cookies qui ne correspondent pas à votre domaine de site web. Par exemple, `adobedc.net`, `omtrdc.net` et `2o7.net`.

| Type de collecte de données régionale | Centres de collecte de données |
| --- | --- |
| Par défaut | Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Par défaut + Chine* | Pékin*, Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |

{style="table-layout:auto"}

