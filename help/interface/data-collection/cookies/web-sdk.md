---
title: Cookies Adobe Experience Platform Web SDK
description: Découvrez comment le SDK Web utilise les cookies applicables à votre implémentation.
solution: Experience Cloud
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 14f06dc9-255e-4a6c-adec-471107cf202e
TQID: https://experienceleague.adobe.com/jysQ5m7o0cI3ECKz2RWZB4Kt3own7XAPm04pr4yLh-k
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2:
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2:
  - id: b75843fa-0a67-4a44-a6b1-cc627b0481dc
  - id: fef08361-6ac5-460c-93fe-d063e40b6a49
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 04b452cb70ff2429b25c617f0bd1f131f9ffcf2a
workflow-type: tm+mt
source-wordcount: 484
ht-degree: 1%

---

# Cookies Adobe Experience Platform Web SDK

Adobe Experience Platform Web SDK utilise des cookies pour stocker les valeurs spécifiques à votre implémentation.

| Nom | Âge max. | Taille | Description |
| --- | --- | --- | --- |
| **`AMCV_###@AdobeOrg`** | 34128000 (395 jours) | 100 à 120 octets (variable) | Présent lorsque le [`idMigrationEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/idmigrationenabled) est activé. Cela s’avère utile lors de la transition vers le SDK web lorsque certaines parties du site utilisent toujours `visitor.js`. Le SDK Web lit et écrit dans ce cookie pendant la migration. |
| **`com.adobe.alloy.getTld`** | Aucun (immédiatement supprimé) | S.O. | Cookie d&#39;assistance temporaire utilisé en interne par le Web SDK pour déterminer le domaine de niveau supérieur du site courant. Une fois le domaine de niveau supérieur établi, le cookie est supprimé. Il ne stocke pas les données de comportement ou de profil. |
| **`demdex`** | 15552000 (180 jours) | varie | Présent si la synchronisation des Audience Manager ID est activée. Audience Manager définit ce cookie pour attribuer un identifiant unique et prendre en charge la synchronisation des identifiants, la segmentation, la modélisation et la création de rapports. Voir `demdex` dans les [cookies Audience Manager](audience-manager.md). |
| **`kndctr_<orgId>_identity`** | 34128000 (395 jours) | 100 à 120 octets (variable) | Stocke l’ECID et d’autres informations associées pour cet appareil. |
| **`kndctr_<orgId>_cluster`** | 1 800 (30 minutes) | 3 à 5 octets | Stocke la région Edge Network (indicateur d’emplacement) qui répond aux requêtes de l’utilisateur actuel. La région est utilisée dans le chemin de l’URL afin que l’Edge Network puisse acheminer la requête vers la bonne région. Si un utilisateur se connecte avec une adresse IP différente au cours de la durée de vie du cookie, la requête est à nouveau acheminée vers la région la plus proche. |
| **`kndctr_<orgId>_consent`** | 15552000 (180 jours) | 10 à 11 octets | Stocke les préférences de consentement du visiteur. Définissez toujours indépendamment du consentement, car il stocke les préférences de consentement lui-même. |
| **`kndctr_<orgId>_consent_check`** | 7200 (2 heures) | | Helper de la portée de session qui signale à Edge Network de vérifier à nouveau le consentement côté serveur après l’expiration de la TTL. Il applique une TTL au consentement mis en cache. |
| **`kndctr_<orgId>_personalization`** | 34128000 (395 jours) | | Stocke les informations de session qu’Adobe Target utilise pour personnaliser le contenu. |
| **`mbox`** | 63072000 (2 ans) | | Présent lorsque le [`targetMigrationEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/targetmigrationenabled) est activé. Il permet de définir le cookie Target [mbox](https://developer.adobe.com/target/implement/client-side/atjs/atjs-cookies/) par le SDK Web. |
| **`mboxEdgeCluster`** | 1 800 (30 minutes) | | Présent lorsque le [`targetMigrationEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/targetmigrationenabled) est activé. Cela permet à Web SDK de communiquer le cluster Edge approprié à `at.js` afin que les profils Target puissent rester synchronisés lorsque les utilisateurs naviguent sur un site. |
| **`s_ecid`** | 63115200 (2 ans) | ~45 octets | Contient une copie de l’Experience Cloud ID (ECID/MID) au format `s_ecid=MCMID\|<ECID>`. Il agit comme une sauvegarde propriétaire de l’ECID, principalement pour les scénarios CNAME (propriétaires). |

Edge Network définit tous les cookies avec les attributs `secure` et `sameSite="none"`. Si votre site web comporte actuellement des sections sécurisées et non sécurisées, l’identification de l’utilisateur peut être inexacte. Lorsque l’utilisateur navigue d’une section sécurisée du site à une section non sécurisée, Edge Network génère une nouvelle `ECID` avec la requête.
