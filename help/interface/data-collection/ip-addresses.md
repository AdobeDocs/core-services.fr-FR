---
title: Adresses IP utilisées par Experience Cloud
description: Si le pare-feu de votre entreprise bloque les adresses IP qui proviennent d’Adobe, utilisez cette liste pour mettre à jour les paramètres du pare-feu.
exl-id: 1fca8d3b-ae8b-4095-96ef-d165f912b4c6
source-git-commit: a18b61cb32286680cb1ab2a296df33509fd95a00
workflow-type: tm+mt
source-wordcount: '378'
ht-degree: 12%

---

# Adresses IP utilisées par Experience Cloud

Certaines configurations de pare-feu bloquent les adresses IP issues des serveurs de collecte de données d’Adobe ou des serveurs chargés d’accéder aux données. Vous pouvez utiliser cette liste de plages pour modifier les paramètres du pare-feu de votre organisation afin d’autoriser l’accès et d’envoyer des données depuis votre organisation. Cette page comprend les systèmes entrants (tels que la collecte de données) et sortants (tels que les flux de données dans Adobe Analytics) qu’Adobe utilise.

>[!IMPORTANT]
>
>Bien qu’Adobe fasse de son mieux pour tenir ce document à jour, il ne peut pas garantir que la liste des plages d’adresses IP reste la même. Les changements possibles comprennent la croissance et l&#39;expansion de l&#39;entreprise, un registre Internet qui nécessite des modifications à l&#39;espace d&#39;adresse IP d&#39;Adobe ou un fournisseur de services Internet qui cesse de fonctionner.

Outre les blocs d’adresses IP répertoriés ci-dessous, les produits Adobe Experience Cloud individuels possèdent leurs propres adresses IP qu’ils utilisent :

* [Adobe Analytics](https://experienceleague.adobe.com/en/docs/analytics/technotes/ip-addresses)
* [Customer Journey Analytics](https://experienceleague.adobe.com/en/docs/analytics-platform/using/technotes/ip-addresses)
* [Marketo Engage](https://experienceleague.adobe.com/en/docs/marketo/using/getting-started/initial-setup/configure-protocols-for-marketo#step-allowlist-marketo-ips)
* [Adobe Workfront](https://experienceleague.adobe.com/en/docs/workfront/using/administration-and-setup/get-started-administration/configure-your-firewall)

## Tous les blocs d’adresses IP Adobe

Le tableau suivant couvre toutes les adresses IP détenues par Adobe. Ce tableau comprend tous les bureaux des employés d’Adobe et les centres de données gérés par Adobe dans le monde. Il n’inclut pas les services hébergés sur des clouds publics.

| Bloc d’adresses IP (notation CIDR) |
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

Si votre organisation préfère autoriser des plages d’adresses IP spécifiques, vous pouvez consulter le tableau suivant. Comprend :

* Serveurs de collecte de données pour tous les produits Experience Cloud
* Serveurs FTP pour tous les produits Experience Cloud

Toutes les plages d’adresses IP de cette section sont incluses dans le tableau ci-dessus.

| Emplacement | Plage d’adresses IP (notation CIDR) |
| --- | --- |
| Australie | `63.140.55.0/24` |
| Australie | `63.140.56.0/23` |
| Californie | `63.140.32.0/23` |
| Californie | `63.140.34.0/24` |
| France | `63.140.62.0/23` |
| Inde | `66.117.22.0/23` |
| Japon | `130.248.169.0/23` |
| Japon | `63.140.50.0/23` |
| Japon | `66.117.31.0/24` |
| Londres | `66.235.156.0/24` |
| Londres | `185.34.188.0/22` |
| Londres | `130.248.152.0/22` |
| Londres | `130.248.244.0/23` |
| Ohio | `66.117.20.0/24` |
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
| Virginie | `67.202.5.244` |

{style="table-layout:auto"}

Le Adobe Experience Cloud prend également en charge IPv6 à capacité limitée. Ces blocs IP ont des objectifs de collecte de données similaires à ceux de leurs homologues IPv4 ci-dessus, mais n’incluent pas le protocole FTP.

| Emplacement | Hôte |
| --- | --- |
| Australie | `2406:da1c:406:1a00::/56` |
| Australie | `2406:da1c:ce5:b400::/56` |
| Californie | `2600:1f1c:366:d900::/56` |
| France | `2a05:d012:706:d000::/56` |
| Inde | `2406:da1a:f34:6a00::/56` |
| Irlande | `2a05:d018:309:600::/56` |
| Japon | `2406:da14:b07:ab00::/56` |
| Ohio | `2600:1f16:130f:7d00::/56` |
| Oregon | `2600:1f14:1eb:7d00::/56` |
| Oregon | `2600:1f14:9d3:2b00::/56` |
| Singapour | `2406:da18:6e8:1e00::/56` |
| Virginie | `2600:1f18:1a20:e800::/56` |
| Virginie | `2600:1f18:4fd:6000::/56` |
| Virginie | `2600:1f18:b00:e100::/56` |
| Virginie | `2600:1f18:d1f:bd00::/56` |

>[!TIP]
>
>Les connexions FTP pour les fonctionnalités d’exportation d’Adobe Analytics (notamment Data Warehouse et les flux de données) proviennent uniquement d’adresses IPv4 situées à Londres, en Oregon et à Singapour.
