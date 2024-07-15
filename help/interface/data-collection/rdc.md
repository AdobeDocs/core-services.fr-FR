---
title: Collecte de données régionale
description: Informations sur la collecte de données régionale
exl-id: 295e9736-2a58-48a8-9968-5dfa33b70d95
source-git-commit: 01851c4d66cbaf1a68961b86926e8cc2c310d1ec
workflow-type: tm+mt
source-wordcount: '291'
ht-degree: 2%

---

# Collecte de données régionale

Adobe Experience Cloud utilise la collecte de données régionale (RDC) afin que les interactions entre vos visiteurs et vos Adobes se produisent aussi près que possible de vos visiteurs. Les données collectées localement sur un site de périphérie sont transférées en toute sécurité vers un site principal pour traitement. Une fois les données traitées, elles sont disponibles pour les produits et services Adobe Experience Cloud.

Le workflow de collecte de données régionale offre plusieurs avantages :

* **Performance** : avec la collecte de données régionale, vos visiteurs se connectent au site Edge le plus proche. Cette optimisation fournit le temps de réponse le plus rapide, ce qui se traduit par un suivi plus précis et des temps de chargement plus rapides.
* **Redondance** : en cas d’interruption de communication entre un site de périphérie et un site principal, l’infrastructure de l’Adobe enregistre les données localement, puis les transfère vers le site principal lorsque les communications sont restaurées. Adobe peut également acheminer le trafic vers d’autres sites Edge en cas d’interruption d’un emplacement spécifique.

La collecte de données régionale comprend actuellement les emplacements suivants (sujets à modification) :

## Collecte de données propriétaires

| Type RDC | Centres de collecte de données |
| --- | --- |
| Global (par défaut) | Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Global + Chine* | Pékin*, Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
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
| Par défaut | Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |
| Default + China* | Pékin*, Oregon, Virginie, Irlande, Paris, Mumbai, Singapour, Tokyo, Sydney |

{style="table-layout:auto"}
