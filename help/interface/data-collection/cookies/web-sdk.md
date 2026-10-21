---
title: Cookies Adobe Experience Platform Web SDK
description: Découvrez comment le SDK Web utilise les cookies applicables à votre implémentation.
solution: Experience Cloud
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 14f06dc9-255e-4a6c-adec-471107cf202e
TQID: 'https://experienceleague.adobe.com/jysQ5m7o0cI3ECKz2RWZB4Kt3own7XAPm04pr4yLh-k'
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
    internal-label: CX Enterprise
feature_v2:
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
    internal-label: Administration
subfeature_v2:
  - id: b75843fa-0a67-4a44-a6b1-cc627b0481dc
    internal-label: Support
  - id: fef08361-6ac5-460c-93fe-d063e40b6a49
    internal-label: Getting started
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
    internal-label: Administration
source-git-commit: 7b12d5debfccd62ab7b416e9a6fe278d251a4ca5
workflow-type: tm+mt
source-wordcount: '984'
ht-degree: 0%
---
# Cookies Adobe Experience Platform Web SDK

Adobe Experience Platform Web SDK utilise des cookies pour stocker les valeurs spécifiques à votre implémentation.

| Nom | Âge max. | Taille | Description |
| --- | --- | --- | --- |
| **`AMCV_###@AdobeOrg`** | 33696000 (390 jours) lorsqu’elle est écrite par le SDK Web | 44 octets lors de l’écriture par le SDK Web (`MCMID\|<ECID>`) ; plus grand lors de l’écriture par `VisitorAPI.js` | Présent lorsque [`idMigrationEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/idmigrationenabled) est activé, qui est l’option par défaut. Cela s’avère utile lors de la transition vers le SDK web lorsque certaines parties du site utilisent toujours `VisitorAPI.js`. Le SDK Web lit ce cookie pour réutiliser un ECID existant. Une fois qu’Edge Network a renvoyé un ECID, le SDK Web l’écrit dans ce cookie si le cookie est manquant ou contient un ECID différent. |
| **`com.adobe.alloy.getTld`** | Aucune (cookie de session, immédiatement supprimé) | 22 octets | Cookie d&#39;assistance temporaire utilisé en interne par le Web SDK pour déterminer le domaine de niveau supérieur du site courant. Le SDK Web écrit et supprime ce cookie lors du chargement de la bibliothèque, avant l’exécution de la commande `configure` et avant l’évaluation du consentement, de sorte que les analyseurs de cookies puissent le signaler comme défini avant le consentement. Le cookie contient uniquement son propre nom et ne stocke pas de données comportementales ou de profil. |
| **`demdex`** | 15552000 (180 jours) | varie | Cookie tiers sur le domaine `demdex.net`. Présent lorsque [`thirdPartyCookiesEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/thirdpartycookiesenabled) est activé (valeur par défaut) et que le navigateur autorise les cookies tiers par défaut, tels que Chrome ou Edge. Dans ce cas, Web SDK envoie les demandes d’identité à `adobedc.demdex.net`, qui définit ce cookie. Audience Manager utilise ce cookie pour attribuer un identifiant unique et prendre en charge la synchronisation des identifiants, la segmentation, la modélisation et la création de rapports. Voir `demdex` dans les [cookies Audience Manager](audience-manager.md). |
| **`kndctr_<orgId>_identity`** | 34128000 (395 jours) | 100 à 120 octets (variable) | Stocke l’ECID et d’autres informations associées pour cet appareil. |
| **`kndctr_<orgId>_cluster`** | 1 800 (30 minutes) | 3 à 5 octets | Stocke la région Edge Network (indicateur d’emplacement) qui répond aux requêtes de l’utilisateur actuel. La région est utilisée dans le chemin de l’URL afin que l’Edge Network puisse acheminer la requête vers la bonne région. Si un utilisateur se connecte avec une adresse IP différente au cours de la durée de vie du cookie, la requête est à nouveau acheminée vers la région la plus proche. |
| **`kndctr_<orgId>_consent`** | 15552000 (180 jours) | 10 à 11 octets | Stocke les préférences de consentement du visiteur. Définissez toujours indépendamment du consentement, car il stocke les préférences de consentement lui-même. |
| **`kndctr_<orgId>_consent_check`** | 7200 (2 heures) | | Helper de la portée de session qui signale à Edge Network de vérifier à nouveau le consentement côté serveur après l’expiration de la TTL. Il applique une TTL au consentement mis en cache. |
| **`kndctr_<orgId>_personalization`** | 34128000 (395 jours) | | Stocke les informations de session qu’Adobe Target utilise pour personnaliser le contenu. |
| **`kndctr_<orgId>_advertising`** | 31622400 (366 jours), renouvelé à chaque mise à jour du cookie | 80 octets à 1 Ko (variable) | Présent lorsque le composant Adobe Advertising (version bêta) est inclus dans votre version de Web SDK et que le consentement du visiteur est `in`. Le Web SDK écrit ce cookie lorsque l’URL de la page contient les paramètres de clic Adobe Advertising (`s_kwcid` ou `ef_id`) ou lorsque les annonceurs [Adobe Advertising DSP](https://experienceleague.adobe.com/fr/docs/experience-platform/tags/extensions/client/web-sdk/configure/advertising) sont configurés. Il stocke des fichiers JSON codés par URL qui peuvent inclure des données de clic de recherche (`_les_lsc`), une adresse IP hachée, une enveloppe LiveRamp RampID (lorsqu’un chemin JavaScript RampID est configuré) et des horodatages de conversion utilisés pour ralentir les conversions en double. Dans les navigateurs qui autorisent les cookies tiers par défaut, il stocke également l’identifiant utilisateur Adobe Advertising et affiche les données de clic (`ev_lcc`). Ce cookie est défini sur le nom d’hôte actuel uniquement. Le composant charge également les ressources provenant de `pixel.everesttech.net`, `www.everestjs.net` (lorsqu’un ID de partenaire ID5 est configuré) et votre chemin d’accès RampID `ats.js`. Ces ressources peuvent définir leurs propres cookies, qui ne sont pas répertoriés sur cette page. |
| **`kndctr_<orgId>_bc_session_id`** | Aucun (cookie de session) | | Présent lorsque le composant Brand Concierge (version bêta) est utilisé. Stocke l’ID de session de conversation Brand Concierge. Le SDK Web lit ce cookie uniquement lorsque [`stickyConversationSession`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/conversation) est activé, de sorte que les sessions de conversation persistent entre les chargements de page. |
| **`mbox`** | 63072000 (2 ans) | | Présent lorsque le [`targetMigrationEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/targetmigrationenabled) est activé. Il permet de définir le cookie Target [mbox](https://developer.adobe.com/target/implement/client-side/atjs/atjs-cookies/) par le SDK Web. |
| **`mboxEdgeCluster`** | 1 800 (30 minutes) | | Présent lorsque le [`targetMigrationEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/targetmigrationenabled) est activé. Cela permet à Web SDK de communiquer le cluster Edge approprié à `at.js` afin que les profils Target puissent rester synchronisés lorsque les utilisateurs naviguent sur un site. Lorsque le cookie `kndctr_<orgId>_cluster` n’est pas présent, le SDK Web lit également ce cookie pour acheminer les requêtes vers la région Edge Network correspondante. |
| **`s_ecid`** | 63115200 (2 ans) | ~45 octets | Contient une copie de l’identifiant CX Enterprise (ECID/MID) au format `s_ecid=MCMID\|<ECID>`. Il agit comme une sauvegarde propriétaire de l’ECID, principalement pour les scénarios CNAME (propriétaires). Lorsque [`idMigrationEnabled`](https://experienceleague.adobe.com/fr/docs/experience-platform/collection/js/commands/configure/idmigrationenabled) est activé, le SDK Web lit ce cookie pour réutiliser un ECID existant. |
| **destinations de cookie** (le nom varie) | 864000 (10 jours), sauf si la destination spécifie une durée de vie différente | varie | Présent lorsque l’Edge Network renvoie une destination de cookie Audience Manager [destination](https://experienceleague.adobe.com/fr/docs/audience-manager/user-guide/features/destinations/custom-destinations/create-cookie-destination) pour le visiteur. Web SDK écrit un cookie propriétaire à l’aide du nom, de la valeur et du domaine du cookie définis dans la destination. Les valeurs sont encodées URL et conformes à la Data Integration Library Audience Manager (DIL). |

Edge Network définit tous ses cookies avec les attributs `secure` et `sameSite="none"` . Si votre site web comporte actuellement des sections sécurisées et non sécurisées, l’identification de l’utilisateur peut être inexacte. Lorsque l’utilisateur navigue d’une section sécurisée du site à une section non sécurisée, Edge Network génère une nouvelle `ECID` avec la requête.

Les cookies que Web SDK crée seul, plutôt que sur la direction d’Edge Network, utilisent différents attributs. Les destinations de cookie `AMCV_###@AdobeOrg` et de cookie Audience Manager incluent les attributs `secure` et `sameSite="none"` uniquement sur les pages HTTPS. Les cookies `com.adobe.alloy.getTld` et `kndctr_<orgId>_advertising` utilisent les attributs par défaut du navigateur.
