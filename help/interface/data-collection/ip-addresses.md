---
title: Adresses IP utilisées par Adobe Experience Cloud
description: Si le pare-feu de votre entreprise bloque les adresses IP qui proviennent d’Adobe, utilisez cette liste pour mettre à jour les paramètres du pare-feu.
exl-id: e24a70e4-9ed4-4b87-8bab-4ed0aebedd1f
source-git-commit: db363c7f35dbd475548af5cbae2977ebf7a9c672
workflow-type: tm+mt
source-wordcount: '374'
ht-degree: 24%

---

# Adresses IP utilisées par Adobe Experience Cloud

Certaines configurations de pare-feu bloquent les adresses IP en provenance des serveurs de collecte de données d’Adobe ou des serveurs responsables de l’accès aux données. Vous pouvez utiliser cette liste de plages pour modifier les paramètres de pare-feu de votre entreprise afin d’autoriser l’accès et d’envoyer des données depuis votre entreprise. Cette page comprend les systèmes entrants (comme la collecte de données) et sortants (comme les flux de données dans Adobe Analytics) utilisés par Adobe.

>[!IMPORTANT]
>
>Bien qu’Adobe fasse de son mieux pour garder ce document à jour, il ne peut garantir que la liste des plages d’adresses IP reste la même. Les modifications possibles comprennent la croissance et l’expansion de l’entreprise, un registre Internet nécessite des modifications de l’espace d’adresse IP de l’Adobe ou un fournisseur de services Internet cesse de fonctionner.

Outre les blocs d’adresses IP répertoriés ci-dessous, les produits Adobe Experience Cloud individuels possèdent leurs propres adresses IP qu’ils utilisent :

* [Adobe Analytics](https://experienceleague.adobe.com/en/docs/analytics/technotes/ip-addresses)
* [Customer Journey Analytics](https://experienceleague.adobe.com/en/docs/analytics-platform/using/technotes/ip-addresses)

## Tous les blocs d’adresses IP Adobe

Le tableau suivant couvre toutes les adresses IP détenues par l’Adobe. Ce tableau comprend tous les bureaux des employés et centres de données d’Adobe exécutés par Adobe à l’échelle mondiale. Il n’inclut pas les services hébergés sur des clouds publics.

| Bloc d’adresse IP (notation CIDR) |
| --- |
| `63.140.32.0/19` |
| `66.117.16.0/20` |
| `66.235.128.0/19` |
| `130.248.0.0/16` |
| `172.82.192.0/18` |
| `185.34.188.0/22` |
| `192.243.240.0/22` |

{style="table-layout:auto"}

## Collecte de données Adobe Experience Cloud et blocs d’adresses IP FTP

Si votre entreprise préfère autoriser des plages d’adresses IP spécifiques, vous pouvez référencer le tableau suivant. Comprend :

* Serveurs de collecte de données pour tous les produits Experience Cloud
* Serveurs FTP pour tous les produits Experience Cloud

Toutes les plages d’adresses IP de cette section sont incluses dans le tableau ci-dessus.

| Emplacement | Plage IP (notation CIDR) |
| --- | --- |
| Australie | `63.140.55.0/24` |
| Australie | `63.140.56.0/23` |
| Californie | `63.140.32.0/23` |
| Californie | `63.140.34.0/24` |
| France | `63.140.62.0/23` |
| Inde | `66.117.20.0/24` |
| Inde | `66.117.22.0/23` |
| Japon | `130.248.169.0/23` |
| Japon | `63.140.50.0/23` |
| Japon | `66.117.31.0/24` |
| Londres | `66.235.156.0/24` |
| Londres | `185.34.188.0/22` |
| Londres | `130.248.152.0/22` |
| Londres | `130.248.244.0/23` |
| Oregon | `66.235.132.0/22` |
| Oregon | `130.248.130.0/23` |
| Oregon | `130.248.150.0/24` |
| Oregon | `130.248.160.0/21` |
| Oregon | `192.243.242.0/24` |
| Singapour | `130.248.170.0/23` |
| Singapour | `130.248.240.0/24` |
| Singapour | `63.140.44.0/22` |
| Singapour | `63.140.48.0/23` |
| Singapour | `66.117.30.0/24` |
| Singapour | `172.82.240.8/29` |
| Singapour | `172.82.240.88/29` |
| Virginie | `63.140.38.0/23` |
| Virginie | `63.140.54.0/24` |

{style="table-layout:auto"}

Adobe Experience Cloud prend également en charge le protocole IPv6 en capacité limitée. Ces blocs IP ont des objectifs de collecte de données similaires à ceux du protocole IPv4 ci-dessus, mais n’incluent pas le protocole FTP.

| Emplacement | Hôte |
| --- | --- |
| Australie | `2406:da1c:406:1a00::/56` |
| Australie | `2406:da1c:ce5:b400::/56` |
| Californie | `2600:1f1c:366:d900::/56` |
| France | `2a05:d012:706:d000::/56` |
| Inde | `2406:da1a:f34:6a00::/56` |
| Irlande | `2a05:d018:309:600::/56` |
| Japon | `2406:da14:b07:ab00::/56` |
| Oregon | `2600:1f14:1eb:7d00::/56` |
| Oregon | `2600:1f14:9d3:2b00::/56` |
| Singapour | `2406:da18:6e8:1e00::/56` |
| Virginie | `2600:1f18:1a20:e800::/56` |
| Virginie | `2600:1f18:4fd:6000::/56` |
| Virginie | `2600:1f18:b00:e100::/56` |
| Virginie | `2600:1f18:d1f:bd00::/56` |

>[!TIP]
>
>Les connexions FTP pour les fonctionnalités d’exportation d’Adobe Analytics (y compris les flux de données et de Data Warehouse) proviennent uniquement d’adresses IPv4 situées à Londres, dans l’Oregon et à Singapour.
