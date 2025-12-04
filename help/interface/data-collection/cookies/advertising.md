---
description: Découvrez les cookies Adobe Advertising pour mapper les événements d’engagement publicitaire aux événements de conversion et, éventuellement, utilisez ces informations pour optimiser les offres publicitaires.
title: Cookies Adobe Advertising
uuid: 2eec48a3-3e81-488e-8e30-5fd62885de0b
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 6818edea-31b1-49fc-bca2-32828c7ca78d
source-git-commit: e63dd988abba199049da2b3620eed9ebf51043d1
workflow-type: tm+mt
source-wordcount: '298'
ht-degree: 12%

---

# Cookies Adobe Advertising

Adobe Advertising (anciennement Adobe Advertising Cloud) utilise des cookies pour mapper les événements d’engagement publicitaire aux événements de conversion et, potentiellement, pour utiliser ces informations afin d’optimiser les offres publicitaires.

>[!NOTE]
>
>La version Beta de la balise JavaScript Adobe Advertising qui utilise le service [Adobe Experience Cloud ID (ECID)](https://experienceleague.adobe.com/docs/id-service/using/intro/overview.html?lang=fr) crée des cookies [Experience Cloud](experience-cloud.md) `s_ecid` propriétaires, et non des cookies Adobe Advertising.

| Nom du cookie | Expiration | Taille | Emplacement | Description |
| --- | --- | --- | --- | --- |
| **`_lcc`** | 15 minutes | 52 octets | `everesttech.net` | Stocke les identifiants et les horodatages des clics d’affichage. Détermine si un événement de clic sur une publicité affichée s’applique à un accès Adobe Analytics. |
| **`_tmae`** | 1 an | 1 Ko | `everesttech.net` | Stocke les identifiants et les horodatages codés pour les engagements publicitaires à l’aide du suivi DSP. Inclut l’interaction client avec les publicités, telles que la dernière publicité vue |
| **`_tmid`** | 1 an | ~20 octets | `everesttech.net` | Stocke l’identifiant Adobe Advertising Demand Side Platform (DSP). Correspond à l’identifiant visiteur dans le cookie `everest_g_v2`. |
| **`adcloud`** | 1 an | 50 à 150 octets | Premier niveau | La date et l’heure de la dernière visite du visiteur sur votre site web et du dernier clic de recherche du visiteur. Stocke également le `ef_id` qui a été créé lorsque le visiteur a cliqué sur une annonce publicitaire. Associe l’identifiant visiteur aux segments et conversions d’audience pertinents. Permet d’optimiser les temps de chargement des pages en évitant les requêtes inutiles à Adobe. |
| **`ev_sync_*`** |  | 8 octets | `everesttech.net` | Date à laquelle la synchronisation est effectuée au format `yyymmdd`. Synchronise l’identifiant visiteur Adobe Advertising avec l’annonce publicitaire du partenaire. Il est créé pour les nouveaux visiteurs et envoie une demande de synchronisation après expiration. Inclut les cookies `ev_sync_ax`, `ev_sync_bk`, `ev_sync_dd`, `ev_sync_fs`, `ev_sync_ix`, `ev_sync_nx`, `ev_sync_ox`, `ev_sync_pm`, `ev_sync_rc`, `ev_sync_tm` et `ev_sync_yh`. |
| **`everest_g_v2`** | 1 an | ~27 octets | `everesttech.net` | Stocke le navigateur et l’identifiant visiteur. Créé après le premier clic d’un utilisateur sur une annonce publicitaire. Permet de mapper les clics actuels et ultérieurs à d’autres événements de votre site web. |
| **`everest_session_v2`** | Session | ~16 octets | `everesttech.net` | Stocke l’ID de session en cours. |
| **`id_adcloud`** | 91 jours | 16 octets | Premier niveau | Stocke l’identifiant visiteur. |

{style="table-layout:auto"}

