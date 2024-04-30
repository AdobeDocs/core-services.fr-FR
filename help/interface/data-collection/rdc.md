---
title: Collecte de données régionale
description: Informations sur la collecte de données régionale
exl-id: 295e9736-2a58-48a8-9968-5dfa33b70d95
source-git-commit: 2691f0dc91e48a8f817467e334d9028f2e506e70
workflow-type: tm+mt
source-wordcount: '281'
ht-degree: 23%

---

# Collecte de données régionales

Adobe Experience Cloud utilise la collecte de données régionale (RDC) afin que les interactions entre vos visiteurs et vos Adobes se produisent aussi près que possible de vos visiteurs. Les données collectées localement sur un site de périphérie sont transférées en toute sécurité vers un site principal pour traitement. Une fois les données traitées, elles sont disponibles pour les produits et services Adobe Experience Cloud.

Le workflow de collecte de données régionale offre plusieurs avantages :

* **Performances**: avec la collecte de données régionale, vos visiteurs se connectent au site Edge le plus proche. Cette optimisation permet de disposer du temps de réponse le plus rapide, ce qui autorise un suivi plus précis et des temps de chargement plus rapides.
* **Redondance**: en cas d’interruption de communication entre un site de périphérie et un site principal, l’infrastructure de l’Adobe enregistre les données localement, puis les transfère au site principal lorsque les communications sont restaurées. Adobe peut également acheminer le trafic vers d’autres sites Edge en cas d’interruption d’un emplacement spécifique.

La collecte de données régionale inclut actuellement les emplacements suivants (sujets à modification) :

## Collecte de données propriétaires

| Type RDC | Centres de collecte de données |
| --- | --- |
| Global (par défaut) | Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Mondiale + Chine* | Chine*, Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Amériques uniquement | Oregon, Virginie |
| Europe uniquement | Irlande, Paris |
| Asie-Pacifique uniquement | Mumbai, Singapour, Tokyo, Sydney |
| Chine uniquement* | Pékin |

{style="table-layout:auto"}

_*La collecte de données régionale pour la Chine requiert le module complémentaire d’optimisation des performances pour la Chine et s’applique uniquement à Adobe Analytics à l’aide de la collecte de données d’AppMeasurement. Les autres services Experience Cloud et la collecte de données du SDK Web ne sont pas pris en charge. Contactez votre équipe de compte d’Adobe pour en savoir plus sur le module complémentaire d’optimisation des performances en Chine._

## Collecte de données tierces

La collecte de données tierces comprend des domaines de cookies qui ne correspondent pas au domaine de votre site web. Par exemple, `adobedc.net`, `omtrdc.net` et `2o7.net`.

| Type RDC | Centres de collecte de données |
| --- | --- |
| Par défaut | Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney, Chine* |

{style="table-layout:auto"}
