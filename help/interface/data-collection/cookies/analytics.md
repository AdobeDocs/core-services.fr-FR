---
description: Découvrez les cookies Adobe Analytics dans Adobe Experience Cloud.
solution: Analytics
title: Cookies Adobe Analytics
uuid: e2d3d61d-2708-48b2-a7e6-2331f2aed8e0
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: bc8ce894-f98c-4475-8a07-d74ae76f7451
source-git-commit: d3a559ca2f7963256d48a25cd51099edb5e3fe76
workflow-type: tm+mt
source-wordcount: '535'
ht-degree: 11%

---

# Cookies Adobe Analytics

Adobe Analytics utilise des cookies pour différencier les requêtes provenant de différents navigateurs et pour stocker des informations utiles qu’une application peut utiliser ultérieurement. Ils peuvent également être utilisés pour associer des informations de navigation aux enregistrements de clients.

Analytics utilise des cookies pour définir de nouveaux visiteurs de manière anonyme, aider à analyser les données de parcours de navigation et suivre l’activité historique sur le site web, comme les réponses à des campagnes spécifiques ou la durée du cycle de vente.

| Nom du cookie | Expiration | Taille | Emplacement | Description |
| --- | --- | --- | --- | --- |
| **`s_ecid`** | 13 mois | 45 octets | Premier niveau | Stocke l’Experience Cloud ID (ECID) ou le MID. Défini par la réponse HTTP. Le MID est stocké au format `s_ecid=MCMID`. Définissez après que le client a défini le cookie AMCV. Il permet le suivi des identifiants propriétaires persistants et est utilisé comme identifiant de référence si le cookie AMCV expire. `SameSite` est défini sur « Lax ». Si vous utilisez le Web SDK pour implémenter Adobe Analytics, l’expiration du cookie est définie sur 2 ans. Cependant, la plupart des navigateurs modernes tronquent l’expiration à 13 mois. |
| **`s_cc`** | Session | 4 octets | Premier niveau | Détermine si les cookies sont activés. Défini par JavaScript. |
| **`s_sq`** | Session | 100 à 200 octets | Premier niveau | Utilisé par Activity Map. Il contient des informations sur le lien précédent sur lequel le visiteur a cliqué. Défini par JavaScript. |
| **`s_vi`** | 2 ans | 44 octets | Propriétaire, ou `*.omtrdc.net` (tiers) | Stocke un identifiant visiteur unique et un horodatage. Défini par la réponse HTTP. Chaque identifiant visiteur est associé à un profil de visiteur sur les serveurs Adobe. Les profils des visiteurs sont supprimés après 1 an d’inactivité, quelle que soit l’expiration du cookie de l’identifiant visiteur. L’indicateur `Secure` est défini lorsque la `SameSite` est définie sur « Aucune » et que la connexion est HTTPS. Par défaut, la `SameSite` est « Lax » pour les cookies propriétaires. `SameSite` valeur est définie sur « Aucun » lors de l’utilisation de cookies tiers, tels que sur `omtrdc.net` ou `2o7.net`. Définissez `SameSite` sur « Aucun » lors de l’utilisation d’un seul CNAME pour effectuer le suivi de plusieurs domaines ou propriétés. |
| **`s_fid`** | 2 ans | 33 octets | Premier niveau | Stocke l’identifiant visiteur unique de secours et l’horodatage. Défini par JavaScript si le cookie `s_vi` standard ne peut pas être défini en raison de restrictions liées aux cookies tiers. Non utilisé pour les implémentations de cookies propriétaires. |
| **`s_ac`** | Immédiat | 1 octet | Premier niveau | Permet de déterminer le domaine approprié pour définir les cookies AppMeasurement. Contient la valeur statique `"1"`. Une fois ce cookie défini, il est immédiatement supprimé. |

## Cookies définis par des modules externes

Certaines implémentations utilisent des plug-ins, qui sont des extraits de code offrant des fonctionnalités supplémentaires à Analytics. Ces plug-ins peuvent définir des cookies qui ne sont pas répertoriés ci-dessus. Consultez [ Présentation des plug-ins Analytics ](https://experienceleague.adobe.com/en/docs/analytics/implementation/vars/plugins/impl-plugins) pour obtenir la liste des plug-ins disponibles et des cookies qu’ils définissent.

## Conséquences de la suppression des cookies Analytics

Si un visiteur supprime ses cookies Analytics, tenez compte des points suivants :

* **L’identification du visiteur est perdue :** lorsque des cookies sont supprimés, Adobe Analytics ne peut pas reconnaître les visiteurs récurrents. La prochaine fois que l’utilisateur visite votre site, il est comptabilisé comme un nouveau visiteur. [ Analyses entre appareils ](https://experienceleague.adobe.com/en/docs/analytics/components/cda/overview) peut vous aider à atténuer cet impact.
* **La continuité de session est rompue :** toute analyse basée sur une session ou multi-visites (telle que l’attribution ou le suivi des conversions) est interrompue. Les événements et les conversions qui se produisent après la suppression du cookie ne peuvent pas être liés à des activités précédentes par le même utilisateur.
* **Personalization et la segmentation sont affectés :** les segments ou les expériences personnalisées basées sur l’historique ou le comportement du visiteur sont réinitialisés, car les données précédentes ne sont plus associées à sa visite actuelle.
* **Le suivi inter-domaines est interrompu :** pour les cookies tiers, leur suppression empêche Adobe Analytics de lier l’activité des utilisateurs sur plusieurs domaines que vous possédez.
