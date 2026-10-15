---
title: Choisir un domaine de collecte de données
description: Découvrez les domaines que vous pouvez utiliser pour envoyer des données à Adobe et comment trouver l’identifiant du client de votre organisation.
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
    internal-label: CX Enterprise
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
  - id: d3cdead0-685a-4489-9250-4bb709942f66
    internal-label: Data collection
source-git-commit: e1185eeafc809b036b10955880536db7a576ca0b
workflow-type: tm+mt
source-wordcount: '623'
ht-degree: 3%
---
# Choisir un domaine de collecte de données

Votre domaine de collecte de données est le nom d’hôte auquel votre implémentation envoie des données. Tous les produits Adobe CX Enterprise qui utilisent la collecte de données Adobe (tels qu’Adobe Analytics, Customer Journey Analytics, Adobe Experience Platform, Adobe Target et Adobe Journey Optimizer) reposent sur ce domaine.

## Options de domaine de collecte de données

| Option | Domaine d’implémentation | Région verrouillée [RDC](rdc.md) | Maintenance des certificats |
| --- | --- | --- | --- |
| [Domaine tiers](#third-party) | `example.data.adobedc.net` | Non pris en charge | Aucun |
| Domaine propriétaire avec un certificat géré par [](adobe-managed-cert.md) | `data.example.com` | Pris en charge | Aucune (Adobe renouvelle automatiquement le certificat) |
| Domaine propriétaire avec un [certificat géré par le client](customer-managed-cert.md) | `data.example.com` | Pris en charge | Votre entreprise renouvelle le certificat et le fournit à Adobe |
| [Réseau de diffusion de contenu (CDN) avec une origine tierce](cdn.md#third-party-origin) | `data.example.com` | Non pris en charge | Aucun |
| [Réseau CDN avec une origine propriétaire](cdn.md#first-party-origin) | `data.example.com` | Pris en charge | Votre entreprise renouvelle le certificat et le fournit à Adobe |

## Domaine de collecte de données tiers {#third-party}

Si vous n’utilisez pas de domaine propriétaire, envoyez les données à un sous-domaine de `data.adobedc.net`. Adobe recommande d’utiliser l’[identifiant client](#tenant-id) de votre organisation comme sous-domaine. Par exemple : `example.data.adobedc.net`. Ce domaine est également l’origine recommandée lorsque vous [acheminez la collecte de données via un réseau CDN](cdn.md).

* Les domaines tiers utilisent toujours le type [RDC](rdc.md#third-party-data-collection) par défaut.
* N’utilisez pas de sous-domaines de plus de `example.data.adobedc.net`. Par exemple, `custom.example.data.adobedc.net` n’est pas un domaine de collecte de données valide.
* Les implémentations plus anciennes peuvent utiliser des domaines tels que `sc.omtrdc.net` ou `2o7.net`. Bien que ces domaines soient toujours valides, Adobe recommande d’utiliser `data.adobedc.net` si possible.

### Trouver votre identifiant client {#tenant-id}

1. Connectez-vous à [](https://experience.adobe.com?lang=fr) à l’aide de vos informations d’identification Adobe ID.
1. N’importe où dans l’interface de CX Enterprise, appuyez sur `[Cmd]` + `[I]` (macOS) ou `[Ctrl]` + `[I]` (Windows).
1. Un **[!UICONTROL Débogueur de données utilisateur]** s’affiche. Sélectionnez l’onglet **[!UICONTROL Organisations affectées]**.
1. Développez l’organisation IMS souhaitée.
1. Recherchez le champ **[!UICONTROL Client]**. Cette valeur est votre identifiant client.

Votre identifiant client est différent de votre identifiant de l’organisation IMS, qui se termine par `@AdobeOrg`. Chaque organisation IMS possède un identifiant client. Si votre société utilise plusieurs organisations IMS, chaque organisation possède son propre identifiant client.

## Mise à jour de la mise en œuvre {#update-implementation}

Lorsque vous modifiez votre domaine de collecte de données, mettez à jour chaque implémentation qui envoie des données à Adobe :

* **Extension de balise Web SDK** : mettez à jour le champ [[!UICONTROL Domaine Edge]](https://experienceleague.adobe.com/en/docs/experience-platform/tags/extensions/client/web-sdk/configure/general) lors de la configuration de l’extension.
* **Web SDK (alliage)** : mettez à jour la propriété [`edgeDomain`](https://experienceleague.adobe.com/en/docs/experience-platform/collection/js/commands/configure/edgedomain) dans la commande `configure`.
* **Extension Adobe Analytics** : mettez à jour le champ [[!UICONTROL Serveur de suivi SSL]](https://experienceleague.adobe.com/en/docs/experience-platform/tags/extensions/client/analytics/overview) lors de la configuration de l’extension. Assurez-vous que l’extension [extension du service d’identification des visiteurs](https://experienceleague.adobe.com/en/docs/experience-platform/tags/extensions/client/id-service/overview) est également installée. Voir [ Identification des visiteurs à l’aide de l’extension de balise Analytics](https://experienceleague.adobe.com/en/docs/analytics/implementation/id/analytics-extension) pour plus d’informations.
* **** : mettez à jour la variable de configuration [`trackingServerSecure`](https://experienceleague.adobe.com/en/docs/analytics/implementation/vars/config-vars/trackingserversecure). Assurez-vous également que le [service d’identification des visiteurs](https://experienceleague.adobe.com/fr/docs/id-service/using/home) est implémenté à l’aide de `VisitorAPI.js`. Voir [ Identification des visiteurs à l’aide d’AppMeasurement](https://experienceleague.adobe.com/en/docs/analytics/implementation/id/appmeasurement) pour plus d’informations.
* **Autres implémentations** : mettez à jour le domaine de collecte de données dans toute autre implémentation qui envoie des données à Adobe, comme les applications mobiles ou les implémentations côté serveur.

Si votre implémentation n’utilise pas le service d’identification des visiteurs ou le SDK web, la modification de votre domaine de collecte de données modifie le domaine des cookies des visiteurs et les visiteurs récurrents peuvent être comptabilisés comme de nouveaux visiteurs.

Si votre site utilise plusieurs méthodes d’implémentation et que vous ne pouvez pas toutes les mettre à jour simultanément, pensez à configurer un délai de grâce. Consultez [Considérations relatives à la migration du service d’identification des visiteurs](https://experienceleague.adobe.com/en/docs/analytics/implementation/id/migration) pour obtenir des instructions supplémentaires sur la manière d’empêcher que les visiteurs ne soient comptabilisés comme de nouveaux visiteurs sur l’ensemble de votre site.
