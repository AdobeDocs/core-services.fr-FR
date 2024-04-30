---
description: Découvrez les cookies Adobe Analytics dans Adobe Experience Cloud.
solution: Experience Cloud,Analytics,Target
title: Cookies Adobe Analytics
uuid: e2d3d61d-2708-48b2-a7e6-2331f2aed8e0
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: bc8ce894-f98c-4475-8a07-d74ae76f7451
source-git-commit: 2691f0dc91e48a8f817467e334d9028f2e506e70
workflow-type: tm+mt
source-wordcount: '353'
ht-degree: 16%

---

# Cookies Adobe Analytics

Adobe Analytics utilise des cookies pour différencier les requêtes provenant de différents navigateurs et pour stocker des informations utiles qu’une application peut utiliser ultérieurement. Ils peuvent également être utilisés pour associer des informations de navigation à des enregistrements de clients.

Analytics utilise des cookies pour définir anonymement les nouveaux visiteurs, aider à analyser les données de parcours de navigation et suivre l’historique de l’activité sur le site web, comme les réponses à des campagnes particulières ou la durée du cycle de vente.

| Nom du cookie | Expiration | Taille | Emplacement | Description |
| --- | --- | --- | --- | --- |
| **`s_ecid`** | 2 ans | 45 octets | Premier niveau | Stocke l’ID Experience Cloud (ECID) ou MID. Défini par la réponse HTTP. Le MID est stocké dans `s_ecid=MCMID` format. Défini après que le client a défini le cookie AMCV. Il autorise le suivi permanent des identifiants propriétaires et est utilisé comme ID de référence si le cookie AMCV expire. Ce cookie ne s’applique pas aux implémentations de cookies tiers. `SameSite` est défini sur &quot;Lax&quot;. |
| **`s_cc`** | Session | 4 octets | Premier niveau | Détermine si les cookies sont activés. Défini par JavaScript. |
| **`s_sq`** | Session | 100 à 200 octets | Premier niveau | Utilisé par le Activity Map. Contient des informations sur le lien précédent sur lequel le visiteur a cliqué. Défini par JavaScript. |
| **`s_vi`** | 2 ans | 44 octets | Propriétaire ou `*.omtrdc.net` (tiers) | Stocke un identifiant visiteur unique et un horodatage. Défini par la réponse HTTP. Chaque identifiant visiteur est associé à un profil du visiteur sur les serveurs Adobe. Les profils du visiteur sont supprimés après 1 an d’inactivité, quelle que soit l’expiration des cookies d’identifiant visiteur. La variable `Secure` L’indicateur est défini lorsque `SameSite` est définie sur &quot;Aucun&quot; et la connexion est HTTPS. `SameSite` est &quot;Lax&quot; par défaut pour les cookies propriétaires. `SameSite` est définie sur &quot;Aucun&quot; lors de l’utilisation de cookies tiers, tels que sur `omtrdc.net` ou `2o7.net`. Définir `SameSite` sur &quot;Aucun&quot; lors de l’utilisation d’un seul CNAME pour suivre plusieurs domaines ou propriétés. |
| **`s_fid`** | 2 ans | 33 octets | Premier niveau | Stocke l’identifiant visiteur unique de secours et l’horodatage. Défini par JavaScript si la variable `s_vi` ne peut pas être défini en raison de restrictions des cookies tiers. Non utilisé pour les implémentations de cookies propriétaires. |

{style="table-layout:auto"}

## Cookies définis par des modules externes

Certaines mises en oeuvre utilisent des plug-ins, qui sont des fragments de code fournissant des fonctionnalités supplémentaires à Analytics. Ces plug-ins peuvent définir des cookies qui ne sont pas répertoriés ci-dessus. Voir [Présentation des modules externes d’Analytics](https://experienceleague.adobe.com/en/docs/analytics/implementation/vars/plugins/impl-plugins) pour obtenir la liste des modules externes disponibles et les cookies qu’ils définissent.
