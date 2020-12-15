---
description: Découvrez comment la prise en charge des cookies tiers est devenue de plus en plus limitée dans les navigateurs.
keywords: cookies;privacy
solution: Experience Cloud,Analytics,Target
title: 'Impact des modifications apportées à la prise en charge des cookies tiers sur les clients '
uuid: 27332e0d-6932-4a6e-b97b-0adeced0b050
translation-type: tm+mt
source-git-commit: 3f26c1af19a0838913eec2b4135304f5f3fcf0b4
workflow-type: tm+mt
source-wordcount: '295'
ht-degree: 92%

---


# Comment les modifications apportées à la prise en charge des cookies tiers affectent-elles les clients ? {#how-changes-to-third-party-cookie-support-impacts-customers}

Alors que la prise en charge des cookies tiers est de plus en plus limitée au niveau des navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité dans les différentes solutions Adobe Experience Cloud.

La liste suivante décrit l’impact de la prise en charge des cookies tiers sur les mises en œuvre actuelles des solutions Adobe Experience Cloud :

## Adobe Analytics et Adobe Target

* Les clients disposant d’une [mise en œuvre propriétaire](/help/interface/cookies/cookies-first-party.md) ne seront globalement pas affectés.
* Les clients qui n’utilisent pas la mise en œuvre propriétaire peuvent mettre en œuvre le [service Experience Platform ID](https://docs.adobe.com/content/help/fr-FR/id-service/using/implementation/implementation-guides.html) pour stocker le cookie d’ID en tant que cookie propriétaire sans mise en œuvre propriétaire.

## Adobe Experience Manager

* Parce que Adobe Experience Manager fonctionne entièrement dans le domaine du client, les interactions avec des cookies tiers sont minimales et l’impact est donc minimal, voire inexistant.

## Adobe Social

* Social ne sera pas affecté tant que le client possède la dernière version du code.

## Adobe Advertising Cloud

* Recherche :

   * Lorsque la recherche est optimisée en fonction des données Adobe Analytics, elle est affectée de la même manière qu’Adobe Analytics.
   * La collecte des données de conversion ne doit pas être affectée.

* Affichage :

   * Le remarketing d’affichage dépend aujourd’hui entièrement de l’utilisation de cookies tiers.
   * L’affichage dépend aussi fortement de la disponibilité de divers cookies réseau publicitaires pour la synchronisation.
   * L’impact global est inconnu. Cependant, au premier point, l’affichage est plus affecté que les autres services.
   * Nous travaillons à l’interne et avec nos partenaires publicitaires pour évaluer l’ampleur de l’impact sur la diffusion publicitaire.

* Social :

   * Il n’y a pas d’impact sur les publicités de marché Facebook.
   * Facebook Exchange (FBX) sera affecté de la même manière que l’affichage et la diffusion des publicités.
