---
title: Cookies SDK Web Adobe Experience Platform
description: Découvrez comment le SDK Web utilise des cookies applicables à votre mise en oeuvre.
solution: Experience Cloud
feature: Cookies
topic: Administration
role: Admin
level: Experienced
source-git-commit: 66f78a04674a82335f5df20c4c15d983b6ebdc66
workflow-type: tm+mt
source-wordcount: '288'
ht-degree: 1%

---

# Cookies SDK Web Adobe Experience Platform

Le SDK Web de Adobe Experience Platform utilise des cookies pour stocker les valeurs spécifiques à votre mise en oeuvre.

| Nom | Âge max. | Description |
|---|---|---|
| **kndct_orgid_identity** | 34128000 (395 jours) | Stocke l’ECID, ainsi que d’autres informations relatives à l’ECID. |
| **kndctr_orgid_consent_check** | 7200 (2 heures) | Indique au serveur de rechercher les préférences de consentement côté serveur. |
| **kndctr_orgid_consent** | 15552000 (180 jours) | Stocke les préférences de consentement de l’utilisateur pour le site web. |
| **kndctr_orgid_cluster** | 1800 (30 minutes) | Stocke la région de l’Edge Network qui sert les requêtes de l’utilisateur actuel. La région est utilisée dans le chemin de l’URL afin que l’Edge Network puisse acheminer la requête vers la région appropriée. Si un utilisateur se connecte à une autre adresse IP ou lors d’une autre session, la demande est de nouveau acheminée vers la région la plus proche. |
| **mbox** | 63072000 (2 ans) | Présent lorsque le paramètre de migration Target est défini sur true. Cela permet à Target de [cookie mbox](https://developer.adobe.com/target/implement/client-side/atjs/atjs-cookies/) à définir par le SDK Web. |
| **mboxEdgeCluster** | 1800 (30 minutes) | Présent lorsque le paramètre de migration Target est défini sur true. Il permet au SDK Web de communiquer la grappe Edge appropriée à `at.js` afin que les profils Target puissent rester synchronisés lorsque les utilisateurs naviguent sur un site. |
| **AMCV_##@AdobeOrg** | 34128000 (395 jours) | Présenter quand [`idMigrationEnabled`](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/idmigrationenabled) est activée. Cela s’avère utile lors de la transition vers le SDK Web alors que certaines parties du site utilisent toujours `visitor.js`. |

L’Edge Network définit tous les cookies avec la variable `secure` et `sameSite="none"` attributs. Si votre site web comporte actuellement des sections sécurisées et non sécurisées, l’identification des utilisateurs peut être inexacte. Lorsqu’un utilisateur passe d’une section sécurisée du site à une section non sécurisée, l’Edge Network génère une nouvelle `ECID` avec la requête .
