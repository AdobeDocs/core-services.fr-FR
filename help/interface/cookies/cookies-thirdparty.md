---
description: Alors que la prise en charge des cookies tiers est de plus en plus limitée sur les navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité sur les différentes solutions Adobe Experience Cloud.
keywords: cookies;privacy
seo-description: Alors que la prise en charge des cookies tiers est de plus en plus limitée sur les navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité sur les différentes solutions Adobe Experience Cloud.
seo-title: Comment les modifications liées à la prise en charge des cookies tiers affectent-elles les clients ?
solution: Marketing Cloud,Analytics,Adobe Target,Adobe Social
title: Comment les modifications liées à la prise en charge des cookies tiers affectent-elles les clients ?
uuid: 27332e0d-6932-4a6e-b97b-0adeced0b050
translation-type: tm+mt
source-git-commit: f7ec8bf6087a18be41c9efbf05f60e6cfd24e566

---


# How changes to third-party cookie support impact customers{#how-changes-to-third-party-cookie-support-impacts-customers}

Alors que la prise en charge des cookies tiers est de plus en plus limitée sur les navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité sur les différentes solutions Adobe Experience Cloud.

Le suivant  décrit l’impact de la prise en charge des cookies tiers sur les implémentations actuelles des solutions Adobe Experience Cloud :

## Adobe Analytics et Adobe Target

* Les clients disposant d’une [mise en œuvre propriétaire](/help/interface/cookies/cookies-first-party.md) ne seront globalement pas affectés.
* Customers that are not using first-party implementation can implement the [Experience Platform ID Service](https://docs.adobe.com/content/help/en/id-service/using/implementation-guides/implementation-guides.html) to store the ID cookie as a first-party cookie without a first-party implementation.

## Adobe Experience Manager

* Parce que Adobe Experience Manager fonctionne entièrement dans le domaine du client, les interactions avec des cookies tiers sont minimales et l’impact est donc minimal, voire inexistant.

## Adobe Social

* Social ne sera pas affecté tant que le client possède la dernière version du code.

## Adobe Advertising Cloud

* Rechercher:

   * Lorsque la recherche est optimisée en fonction des données Adobe Analytics, elle est affectée de la même manière qu’Adobe Analytics.
   * La collecte des données de conversion ne doit pas être affectée.

* Afficher:

   * Le remarketing d’affichage dépend aujourd’hui entièrement de l’utilisation de cookies tiers.
   * L&#39;affichage dépend également fortement de la disponibilité de divers cookies de réseau publicitaire pour la synchronisation.
   * L&#39;impact global est inconnu. Toutefois, au premier point, l’affichage est plus affecté que les autres services.
   * Nous travaillons à l&#39;interne et avec nos partenaires publicitaires pour évaluer l&#39;impact sur les  publicitaires.

* Social:

   * Les publicités Facebook n’ont aucun impact.
   * Facebook Exchange (FBX) sera affecté de la même manière que les  d’affichage et d’annonce.
