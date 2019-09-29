---
description: Alors que la prise en charge des cookies tiers est de plus en plus limitée sur les navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité sur les différentes solutions Adobe Experience Cloud.
keywords: cookies;confidentialité
seo-description: Alors que la prise en charge des cookies tiers est de plus en plus limitée sur les navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité sur les différentes solutions Adobe Experience Cloud.
seo-title: Comment les modifications liées à la prise en charge des cookies tiers affectent-elles les clients ?
solution: Experience Cloud,Analytics,Target,Social
title: Comment les modifications liées à la prise en charge des cookies tiers affectent-elles les clients ?
uuid: 27332e0d-6932-4a6e-b97b-0adeced0b050
index: y
internal: n
snippet: y
translation-type: tm+mt
source-git-commit: f59badcd3423ada51a3fe0c605158a009d5b1d64

---


# Comment les modifications apportées à la prise en charge des cookies tiers affectent-elles les clients ?{#how-changes-to-third-party-cookie-support-impacts-customers}

Alors que la prise en charge des cookies tiers est de plus en plus limitée sur les navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité sur les différentes solutions Adobe Experience Cloud.

La liste suivante montre de quelle manière la prise en charge des cookies tiers affecte les mises en œuvre actuelles des solutions Adobe Experience Cloud :

## Adobe Analytics et Adobe Target

* Les clients disposant d’une [mise en œuvre propriétaire](/help/interface/cookies/cookies-first-party.md) ne seront globalement pas affectés.
* Customers that are not using first-party implementation can implement the [Experience Platform ID Service](https://docs.adobe.com/content/help/en/id-service/using/implementation-guides/implementation-guides.html) to store the ID cookie as a first-party cookie without a first-party implementation.

## Adobe Experience Manager

* Parce que Adobe Experience Manager fonctionne entièrement dans le domaine du client, les interactions avec des cookies tiers sont minimales et l’impact est donc minimal, voire inexistant.

## Adobe Social

* Social ne sera pas affecté tant que le client possède la dernière version du code.

## Adobe Advertising Cloud

* Rechercher:

   * Lorsque la recherche est optimisée en fonction des données Adobe Analytics, elle sera affectée de la même manière qu’Adobe Analytics.
   * La collecte des données de conversion ne devrait pas affectée.

* Display :

   * Aujourd’hui, le remarketing display repose entièrement sur l’utilisation de cookies tiers.
   * Le display dépend également beaucoup de la disponibilité des différents cookies du réseau publicitaire pour la synchronisation.
   * L’impact global n’est pas connu. Cependant, en raison du premier point, le display est davantage affecté que d’autres services.
   * Nous travaillons en interne, ainsi qu’avec nos partenaires publicitaires, pour évaluer l’étendue de l’impact sur la diffusion des publicités.

* Social:

   * Il n’y a aucun impact sur les publicités de la place de marché Facebook.
   * Facebook Exchange (FBX) sera affecté de la même manière que la diffusion des publicités display.

