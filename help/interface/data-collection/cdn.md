---
title: Acheminer la collecte de données via un réseau CDN
description: Découvrez comment configurer un réseau de diffusion de contenu (CDN) pour transférer des requêtes de collecte de données à Adobe sans affecter la qualité des données.
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
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
    internal-label: Security
  - id: d3cdead0-685a-4489-9250-4bb709942f66
    internal-label: Data collection
source-git-commit: e1185eeafc809b036b10955880536db7a576ca0b
workflow-type: tm+mt
source-wordcount: '1421'
ht-degree: 1%
---
# Acheminer la collecte de données via un réseau CDN

Certaines organisations acheminent les demandes de collecte de données via leur réseau de diffusion de contenu (CDN) au lieu de les envoyer directement à Adobe. Les raisons courantes incluent la protection par pare-feu d’application web (WAF), les politiques d’entreprise qui exigent que tout le trafic du site web transite par un réseau CDN et la possibilité d’inspecter le trafic envoyé à Adobe. Le réseau de diffusion de contenu reçoit des requêtes sur un nom d’hôte détenu par votre organisation, puis les transfère à un nom d’hôte de collecte de données Adobe, appelé origine.

>[!IMPORTANT]
>
>Adobe ne peut pas réviser ni valider votre configuration de réseau CDN. Votre organisation et votre fournisseur de réseau CDN sont responsables de la configuration correcte du réseau CDN. Pour obtenir de l’aide sur la configuration de votre réseau CDN, contactez votre fournisseur CDN. Une configuration incorrecte des réseaux de diffusion de contenu peut entraîner une perte de données.

## Choisir un type d’origine {#origin-type}

| | Origine tierce (recommandée) | Origine propriétaire |
| --- | --- | --- |
| **Nom d’hôte original** | Votre sous-domaine d’ID client de `data.adobedc.net`, tel que `example.data.adobedc.net` | Votre nom d’hôte propriétaire, tel que `data.example.com` |
| **Certificat sur les serveurs Adobe** | Certificat Adobe (`*.data.adobedc.net`) | [&#x200B; Certificat géré par le client &#x200B;](customer-managed-cert.md) |
| **Renouvellements de certificat** | Aucun requis | Votre entreprise renouvelle le certificat et le fournit à Adobe avant chaque expiration |
| **Région verrouillée [RDC](rdc.md)** | Non pris en charge | Pris en charge |
| **Quand l’utiliser** | Toutes les implémentations de réseau CDN, sauf si votre organisation nécessite une origine propriétaire | Votre politique de sécurité nécessite un contrôle direct du certificat d’origine ou votre organisation nécessite un type de collecte de données régionale verrouillé |

>[!NOTE]
>
>Le programme de certificat géré par Adobe [&#128279;](adobe-managed-cert.md) ne prend pas en charge les implémentations CDN. Adobe ne peut pas valider la propriété du domaine ni renouveler les certificats pour les noms d’hôtes qui pointent vers votre réseau CDN. Utilisez une origine tierce ou une origine propriétaire avec un [&#x200B; certificat géré par le client &#x200B;](customer-managed-cert.md).

## Conditions requises pour toutes les implémentations de réseau CDN {#requirements}

Les bibliothèques de collecte de données Adobe, telles qu’AppMeasurement et le Web SDK, incluent tout ce dont Adobe a besoin dans chaque requête. Configurez votre réseau CDN pour transférer ces requêtes à Adobe sans les modifier.

>[!IMPORTANT]
>
>Ne modifiez jamais le point d’entrée ou tout élément qui détermine où vont les données, y compris l’identifiant de suite de rapports (AppMeasurement) ou l’identifiant de flux de données (Web SDK). La modification de ces valeurs entraîne une perte de données.

Votre configuration de réseau CDN doit :

* Transférez la méthode de requête, le chemin d’URL, la chaîne de requête et le corps sans modifications.
* Laissez l’en-tête `Host` inchangé.
* Laissez inchangé le domaine sur lequel les cookies Adobe sont définis.
* Conservez tous les cookies répertoriés dans la [section relative aux cookies](cookies/overview.md) de ce guide.
* Ajoutez l’en-tête `X-Forwarded-For` contenant l’adresse IP du visiteur. Adobe utilise cet en-tête pour la géolocalisation. Sans cela, les données de géolocalisation reflètent l’emplacement des serveurs de votre réseau CDN plutôt que celui de vos visiteurs.
* Renvoyer les réponses d’Adobe au navigateur sans modification.

Votre configuration de réseau CDN peut :

* Supprimez les cookies qu’Adobe n’utilise pas, tels que les cookies d’autres systèmes de votre site. Les cookies non liés ajoutent une surcharge à chaque requête.
* Utilisez les services WAF, de filtrage des robots ou de suppression des données personnelles, à condition qu’ils ne modifient rien de ce qui est indiqué ci-dessus. Testez ces services avec une suite de rapports de développement ou un flux de données avant de les appliquer au trafic de production. Un filtrage trop agressif peut supprimer suffisamment de données pour rendre les rapports inutilisables.

Votre configuration de réseau CDN ne doit pas :

* Mettre en cache les requêtes ou les réponses de collecte de données. Chaque requête doit atteindre Adobe.
* Pointez sur un nom d’hôte d’origine qui n’existe pas.
* Acceptez les certificats expirés ou épinglez un certificat spécifique à partir de l’origine. Adobe ne prend pas en charge la diffusion des certificats expirés et peut les supprimer à tout moment.

## Configuration d’un réseau CDN avec une origine tierce {#third-party-origin}

Une origine tierce utilise son propre certificat Adobe. Votre organisation n’a donc pas besoin de gérer un certificat sur les serveurs Adobe.

1. Recherchez l’identifiant client de votre organisation. Voir [Rechercher votre identifiant client](collection-domain.md#tenant-id).
1. Dans votre configuration de réseau CDN, définissez le nom d’hôte d’origine sur votre sous-domaine d’ID client de `data.adobedc.net`. Par exemple : `example.data.adobedc.net`.
1. Activez l’indication du nom du serveur (SNI) pour l’origine. Définissez le nom d’hôte SNI sur le nom d’hôte d’origine (par exemple, `example.data.adobedc.net`), et non sur le nom d’hôte de votre site web.
1. Configurez votre réseau CDN pour répondre aux exigences [requises pour toutes les implémentations de réseau CDN](#requirements) ci-dessus.
1. Si le nom d’hôte auquel votre implémentation envoie des données est modifié, [mettez à jour votre implémentation](collection-domain.md#update-implementation). Si vous conservez le même nom d’hôte, aucune modification d’implémentation n’est nécessaire.

>[!WARNING]
>
>Ne définissez pas votre origine sur le nom d’hôte qu’Adobe a fourni comme cible CNAME, tel que `hiodsibxvip01.data.adobedc.net`. Ce nom d’hôte est lié à votre certificat propriétaire et peut cesser de fonctionner lorsque le certificat est supprimé.

Les origines tierces utilisent toujours le type [RDC](rdc.md) par défaut, de sorte que les données peuvent être collectées à n’importe quel emplacement de collecte de données d’Adobe.

## Configuration d’un réseau CDN avec une origine propriétaire {#first-party-origin}

Utilisez une origine propriétaire uniquement si votre organisation en a besoin. Les raisons courantes sont les suivantes :

* Votre politique de sécurité nécessite un contrôle direct du certificat d’origine. Par exemple, votre organisation doit pouvoir révoquer le certificat par l’intermédiaire de sa propre autorité de certification.
* Votre entreprise nécessite un [type de collecte de données régionale](rdc.md) verrouillé.

1. Contactez l’assistance clientèle d’Adobe pour configurer un [certificat géré par le client](customer-managed-cert.md) pour votre nom d’hôte propriétaire, tel que `data.example.com`. Si votre entreprise a besoin d’un type de collecte de données régionale verrouillé, spécifiez-le dans votre requête.
1. Dans votre configuration de réseau CDN, définissez le nom d’hôte d’origine sur votre nom d’hôte propriétaire.
1. Activez l’indication du nom du serveur (SNI) pour l’origine. Définissez le nom d’hôte SNI sur votre nom d’hôte propriétaire et configurez votre réseau de diffusion de contenu pour vous attendre à ce que votre certificat propriétaire provienne de l’origine.
1. Configurez votre réseau CDN pour répondre aux exigences [requises pour toutes les implémentations de réseau CDN](#requirements) ci-dessus.
1. Si le nom d’hôte auquel votre implémentation envoie des données est modifié, [mettez à jour votre implémentation](collection-domain.md#update-implementation). Si vous conservez le même nom d’hôte, aucune modification d’implémentation n’est nécessaire.

>[!IMPORTANT]
>
>Votre entreprise est chargée de renouveler votre certificat géré par le client et de le fournir à l’assistance clientèle d’Adobe avant son expiration. Si le certificat sur les serveurs Adobe expire, votre réseau CDN peut rejeter la connexion et ignorer les données sans vous en informer. Voir [&#x200B; Renouveler votre certificat &#x200B;](customer-managed-cert.md#renewals).

## Déplacer une implémentation propriétaire existante vers un réseau CDN {#migrate}

Si votre organisation envoie actuellement des données directement à un nom d’hôte propriétaire avec un certificat hébergé par Adobe, procédez comme suit pour passer à un réseau CDN :

1. Identifiez chaque mise en œuvre qui envoie des données à votre nom d’hôte propriétaire, sur tous les produits Adobe. D’autres produits, tels qu’Adobe Target ou Adobe Journey Optimizer, peuvent utiliser le même nom d’hôte et un seul certificat peut couvrir de nombreux noms d’hôte.
1. Choisissez un [type d’origine](#origin-type). Si vous choisissez une origine propriétaire, contactez l’assistance clientèle d’Adobe pour convertir votre certificat en [&#x200B; certificat géré par le client &#x200B;](customer-managed-cert.md) avant son expiration.
1. Configurez votre réseau CDN. Conservez votre nom d’hôte existant afin de ne pas avoir à mettre à jour vos implémentations.
1. Avant l’expiration de votre certificat, pointez votre nom d’hôte sur votre réseau CDN et changez toutes les implémentations pour l’utiliser.
1. [Vérifiez vos données](#check).
1. Si vous avez choisi une origine tierce, contactez l’assistance clientèle d’Adobe pour marquer votre certificat propriétaire en vue de sa suppression.

Une fois que votre nom d’hôte pointe vers votre réseau CDN, Adobe ne peut plus renouveler votre certificat propriétaire. Si une implémentation repose toujours sur le certificat à son expiration, les données de cette implémentation sont perdues. Contacter l’assistance clientèle d’Adobe permet à votre entreprise de contrôler la suppression du certificat.

## Vérifier les données {#check}

Adobe ne peut pas valider la configuration de votre réseau CDN. Après avoir acheminé la collecte de données via votre réseau CDN, comparez vos données avant et après la modification :

* Les données continuent d’arriver dans les suites de rapports, les flux de données ou les jeux de données attendus au volume habituel.
* Les rapports de géolocalisation affichent l’emplacement de vos visiteurs, et non un petit nombre de villes où se trouvent les serveurs de votre réseau CDN.
* Le nombre de visiteurs uniques n’augmente pas de manière inattendue.
* Dans les outils de développement de votre navigateur, les requêtes de collecte de données envoyées à votre nom d’hôte réussissent et les cookies Adobe sont définis sur le même domaine qu’auparavant.

## Erreurs de configuration courantes

Les problèmes suivants sont connus pour entraîner des problèmes de qualité des données ou des pertes de données. Cette liste n&#39;est pas exhaustive.

| Symptôme | Cause probable |
| --- | --- |
| Les données cessent d’arriver dans une suite de rapports ou un flux de données | Le réseau CDN modifie l’URL de requête ou le nom d’hôte d’origine n’existe pas |
| Les données cessent d’arriver après l’expiration d’un certificat | Le réseau CDN attend un certificat propriétaire de l’origine qui a expiré |
| Les données de géolocalisation ne montrent que quelques villes | Le réseau CDN n’ajoute pas l’en-tête `X-Forwarded-For` |
| Le nombre de visiteurs uniques augmente de manière inattendue | Le réseau CDN supprime les cookies Adobe, modifie l’en-tête `Host` ou modifie le domaine du cookie |
| Il manque de grandes quantités de données dans les rapports | Les règles de suppression des données personnelles ou de WAF suppriment une trop grande partie de chaque demande. |

## Questions fréquentes

+++Cette page s’applique-t-elle à des produits autres qu’Adobe Analytics ?

Oui. Cette page s’applique à tous les produits Adobe qui utilisent la collecte de données Adobe, notamment Customer Journey Analytics, Adobe Experience Platform, Adobe Target et Adobe Journey Optimizer.

+++

+++Adobe peut-il rejeter les données qui ne passent pas par mon réseau CDN ?

Non. Adobe ne propose actuellement aucun moyen de limiter la collecte de données aux requêtes provenant de votre réseau CDN.

+++

+++Adobe peut-il fournir ou valider une configuration pour mon réseau CDN ?

Non. Les options de configuration du réseau CDN varient selon les fournisseurs et changent au fil du temps. Contactez votre fournisseur de réseau CDN pour obtenir de l’aide sur la configuration de votre réseau CDN et consultez [Vérifier vos données](#check) pour trouver des moyens d’identifier les problèmes liés à votre configuration.

+++
