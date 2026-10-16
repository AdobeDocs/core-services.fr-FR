---
title: Certificats Gérés Par Le Client
description: Découvrez quand utiliser un certificat géré par le client pour la collecte de données propriétaire et les responsabilités de votre entreprise pour le renouveler.
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
source-git-commit: 18fd590d6f0fd1800e3d5c62851453aa91d9db5f
workflow-type: tm+mt
source-wordcount: '694'
ht-degree: 1%
---
# Certificats gérés par le client

Avec un certificat géré par le client, votre entreprise obtient le certificat de votre nom d’hôte de collecte de données propriétaire et le fournit à Adobe. Adobe héberge le certificat sur ses serveurs de collecte de données. Votre entreprise est chargée de renouveler le certificat et de fournir chaque certificat renouvelé à Adobe avant l’expiration du certificat actuel.

>[!TIP]
>
>Adobe recommande le [programme de certificat géré par Adobe](adobe-managed-cert.md) pour la plupart des implémentations propriétaires. Il est plus sécurisé et renouvelle les certificats automatiquement. Utilisez un certificat géré par le client uniquement lorsque votre entreprise le requiert.

## Quand utiliser un certificat géré par le client

* **Vous acheminez la collecte de données via un réseau CDN avec une origine propriétaire** : le programme de certificat géré par [Adobe](adobe-managed-cert.md) ne prend pas en charge les implémentations CDN. Voir [&#x200B; Configuration d’un réseau CDN avec une origine propriétaire](cdn.md#first-party-origin).
* **Votre politique de sécurité nécessite un contrôle direct du certificat** : par exemple, votre organisation doit pouvoir révoquer le certificat par l’intermédiaire de sa propre autorité de certification, au lieu de demander la révocation par l’intermédiaire de l’assistance clientèle d’Adobe.
* **Votre organisation requiert une autorité de certification ou un type de certificat spécifique** : le programme de certificat géré par Adobe utilise des certificats émis par DigiCert.

## Comparer les méthodes de certificat

| | Certificat géré par Adobe | Certificat géré par le client ou la cliente |
| --- | --- | --- |
| **Qui obtient le certificat** | Adobe, via DigiCert | Votre organisation, par l&#39;intermédiaire d&#39;une autorité de certification commerciale de votre choix |
| **Renouvellements** | Adobe renouvelle automatiquement le certificat | Votre entreprise renouvelle le certificat et le fournit à Adobe avant chaque expiration |
| **Types de certificat** | Adobe fournit des certificats RSA et ECC | RSA est requis ; ECC est recommandé |
| **Pris en charge avec un réseau CDN** | Non | Oui, en tant qu’origine propriétaire |

## Configurer un certificat géré par le client

1. Contactez l’assistance clientèle d’Adobe pour demander une collecte de données propriétaire avec un certificat géré par le client. Incluez votre nom d’hôte propriétaire, tel que `data.example.com`. Si votre organisation a des exigences de résidence des données ou de conformité, indiquez le [type de collecte de données régionale](rdc.md) souhaité dans votre demande.
1. L’assistance clientèle Adobe fournit une demande de signature de certificat (CSR) pour votre nom d’hôte. Adobe génère et conserve la clé privée, de sorte que votre entreprise ne la gère jamais. Adobe requiert un certificat RSA et recommande un certificat ECC. Chaque type de certificat nécessite sa propre demande de signature de certificat (CSR). Si vous souhaitez obtenir un certificat ECC, demandez-le à l’assistance clientèle d’Adobe.
1. Envoyez chaque demande de signature de certificat à l’autorité de certification commerciale souhaitée pour obtenir un certificat signé. Les services de certificat gratuits ne sont pas pris en charge. Fournissez les certificats émis à Adobe conformément aux instructions de l’assistance clientèle.
1. Une fois qu’Adobe a installé votre certificat, redirigez le trafic correspondant à votre nom d’hôte vers Adobe :
   * **Sans réseau CDN** : mettez à jour les enregistrements DNS de votre organisation comme indiqué par l’assistance clientèle d’Adobe.
   * **Avec un réseau CDN** : définissez votre origine CDN sur votre nom d’hôte propriétaire. Voir [&#x200B; Configuration d’un réseau CDN avec une origine propriétaire](cdn.md#first-party-origin).
1. Si votre implémentation n’envoie pas déjà de données à ce nom d’hôte, [mettez à jour votre implémentation](collection-domain.md#update-implementation).

## Renouveler votre certificat {#renewals}

Votre entreprise est chargée de renouveler votre certificat et de fournir le certificat renouvelé à l’assistance clientèle d’Adobe avant l’expiration du certificat actuel.

Si le certificat sur les serveurs Adobe expire, les navigateurs et les réseaux de diffusion de contenu rejettent les connexions à votre nom d’hôte et les données de ces requêtes sont perdues. Un réseau CDN peut ignorer ces données sans vous en informer.

La durée de vie maximale des certificats diminue, ce qui rend les renouvellements plus fréquents. Voir [6.3.2 Périodes d’exploitation du certificat et périodes d’utilisation des paires de clés](https://cabforum.org/working-groups/server/baseline-requirements/requirements/#632-certificate-operational-periods-and-key-pair-usage-periods) dans la section CA/Browser Forum Server Certificate Baseline Requirements pour plus d’informations. Pour éviter les lacunes dans la collecte de données :

* Suivez la date d’expiration de chaque certificat que vous fournissez à Adobe.
* Attribuez un propriétaire pour les renouvellements et documentez le processus de renouvellement afin qu&#39;il se poursuive jusqu&#39;aux changements de personnel.

Adobe explore actuellement un processus de renouvellement de certificat en libre-service.

## Arrêter d’utiliser un certificat géré par le client

* **Pour passer au programme de certificat géré par Adobe** : contactez l’assistance clientèle d’Adobe. Le programme de certificat géré par Adobe nécessite que votre nom d’hôte pointe directement vers Adobe, et non vers un réseau CDN.
* **Pour arrêter d’utiliser votre nom d’hôte propriétaire** : mettez à jour toutes les implémentations qui utilisent le nom d’hôte, puis contactez l’assistance clientèle d’Adobe pour supprimer le certificat des serveurs Adobe.
* **Pour migrer vers un réseau CDN provenant d’un tiers** : consultez la section [Déplacer une implémentation propriétaire existante vers un réseau CDN](cdn.md#migrate).
