---
description: Découvrez les cookies d’Adobe Advertising pour mapper les événements d’engagement publicitaire aux événements de conversion et, éventuellement, utiliser ces informations pour optimiser les offres publicitaires.
title: Cookies Adobe Advertising
uuid: 2eec48a3-3e81-488e-8e30-5fd62885de0b
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 6818edea-31b1-49fc-bca2-32828c7ca78d
source-git-commit: c39672f0d8a0fd353b275b2ecd095ada1e2bf744
workflow-type: tm+mt
source-wordcount: '298'
ht-degree: 13%

---

# Cookies Adobe Advertising

Adobe Advertising (anciennement Adobe Advertising Cloud) utilise des cookies pour mapper les événements d’engagement publicitaire aux événements de conversion et, potentiellement, pour utiliser ces informations afin d’optimiser les offres publicitaires.

>[!NOTE]
>
>La balise JavaScript de l’Adobe Advertising bêta qui utilise la variable [Service Adobe Experience Cloud ID (ECID)](https://experienceleague.adobe.com/docs/id-service/using/intro/overview.html?lang=fr) création de premier niveau [Experience Cloud](experience-cloud.md) `s_ecid` des cookies, et non des cookies d’Adobe Advertising.

| Nom du cookie | Expiration | Taille | Emplacement | Description |
| --- | --- | --- | --- | --- |
| **`_lcc`** | 15 minutes | 52 octets | `everesttech.net` | Stocke les identifiants et les horodatages des clics d’affichage. Détermine si un événement de clic sur une publicité affichée s’applique à un accès Adobe Analytics. |
| **`_tmae`** | 1 an | 1 Ko | `everesttech.net` | Stocke les identifiants et horodatages codés pour les engagements publicitaires à l’aide du suivi DSP. Inclut l’engagement des utilisateurs avec les publicités, comme la dernière publicité vue |
| **`adcloud`** | 1 an | 50 à 150 octets | Premier niveau | Horodatages de la dernière visite du visiteur sur votre site Web et du dernier clic de recherche du visiteur. stocke également la variable `ef_id` qui a été créé lorsque le visiteur a cliqué sur une publicité. Relie l’identifiant visiteur aux segments d’audience et conversions pertinents. Permet d’optimiser les temps de chargement des pages en évitant les demandes inutiles d’Adobe. |
| **`ev_sync_*`** |  | 8 octets | `everesttech.net` | Date à laquelle la synchronisation a lieu dans `yyymmdd` format. Synchronise l’identifiant visiteur Adobe Advertising avec l’exchange publicitaire partenaire. Il est créé pour les nouveaux visiteurs et envoie une demande de synchronisation une fois expiré. Inclut les cookies `ev_sync_ax`, `ev_sync_bk`, `ev_sync_dd`, `ev_sync_fs`, `ev_sync_ix`, `ev_sync_nx`, `ev_sync_ox`, `ev_sync_pm`, `ev_sync_rc`, `ev_sync_tm`, et `ev_sync_yh`. |
| **`everest_g_v2`** | 1 an | ~27 octets | `everesttech.net` | Stocke le navigateur et l’identifiant visiteur. Créé après qu’un utilisateur a cliqué initialement sur une publicité. Utilisé pour mapper les clics actuels et suivants avec d’autres événements de votre site web. |
| **`everest_session_v2`** | Session | ~16 octets | `everesttech.net` | Stocke l’ID de session en cours. |
| **`ev_tm`** | 2 ans | ~20 octets | `everesttech.net` | Stocke l’ID de Demand Side Platform d’Adobe Advertising (DSP). Correspond à l’identifiant visiteur dans la variable `everest_g_v2` du cookie. |
| **`id_adcloud`** | 91 jours | 16 octets | Premier niveau | Stocke l’identifiant visiteur. |

{style="table-layout:auto"}
