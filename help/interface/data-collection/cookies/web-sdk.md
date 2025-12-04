---
title: Cookies Adobe Experience Platform Web SDK
description: Découvrez comment le SDK Web utilise les cookies applicables à votre implémentation.
solution: Experience Cloud
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 14f06dc9-255e-4a6c-adec-471107cf202e
source-git-commit: e63dd988abba199049da2b3620eed9ebf51043d1
workflow-type: tm+mt
source-wordcount: '290'
ht-degree: 1%

---

# Cookies Adobe Experience Platform Web SDK

Adobe Experience Platform Web SDK utilise des cookies pour stocker les valeurs spécifiques à votre implémentation.

| Nom | Âge max. | Taille | Description |
|---|---|---|---|
| **kndctr_&lt;ORG_ID>_identity** | 34128000 (395 jours) | 100 à 120 octets (variable) | Stocke l’ECID, ainsi que d’autres informations relatives à l’ECID. |
| **kndctr_&lt;ORG_ID>_consent** | 15552000 (180 jours) | 10 à 11 octets | Stocke les préférences de consentement de l’utilisateur pour le site web. |
| **kndctr_&lt;ORG_ID>_cluster** | 1 800 (30 minutes) | 3 à 5 octets | Stocke la région Edge Network qui répond aux demandes de l’utilisateur actuel. La région est utilisée dans le chemin de l’URL afin que l’Edge Network puisse acheminer la requête vers la bonne région. Si un utilisateur se connecte avec une adresse IP différente ou dans une session différente, la requête est à nouveau acheminée vers la région la plus proche. |
| **mbox** | 63072000 (2 ans) | | Présent lorsque le paramètre de migration de Target est défini sur true. Il permet de définir le cookie Target [mbox](https://developer.adobe.com/target/implement/client-side/atjs/atjs-cookies/) par le SDK Web. |
| **mboxEdgeCluster** | 1 800 (30 minutes) | | Présent lorsque le paramètre de migration de Target est défini sur true. Cela permet à Web SDK de communiquer le cluster Edge approprié à `at.js` afin que les profils Target puissent rester synchronisés lorsque les utilisateurs naviguent sur un site. |
| **AMCV_###@AdobeOrg** | 34128000 (395 jours) | | Présent lorsque le [`idMigrationEnabled`](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/idmigrationenabled) est activé. Cela s’avère utile lors de la transition vers Web SDK lorsque certaines parties du site utilisent encore `visitor.js`. |

Edge Network définit tous les cookies avec les attributs `secure` et `sameSite="none"`. Si votre site web comporte actuellement des sections sécurisées et non sécurisées, l’identification de l’utilisateur peut être inexacte. Lorsque l’utilisateur navigue d’une section sécurisée du site à une section non sécurisée, Edge Network génère une nouvelle `ECID` avec la requête.

