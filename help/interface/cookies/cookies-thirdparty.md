---
description: Découvrez comment la prise en charge des cookies tiers est devenue de plus en plus limitée dans les navigateurs.
keywords: cookies;confidentialité
solution: Experience Cloud,Analytics,Target
title: 'Impact des modifications apportées à la prise en charge des cookies tiers sur les clients '
uuid: 27332e0d-6932-4a6e-b97b-0adeced0b050
feature: Cookies
topic: Administration
role: Administrator
level: Experienced
exl-id: 3d12a1b1-c952-4b42-815d-f64b31429cec
source-git-commit: ef6196c3096ac7b26633eb4b1b9b2db26237732a
workflow-type: tm+mt
source-wordcount: '275'
ht-degree: 84%

---

# Comment les modifications apportées à la prise en charge des cookies tiers affectent-elles les clients ? {#how-changes-to-third-party-cookie-support-impacts-customers}

Alors que la prise en charge des cookies tiers est de plus en plus limitée au niveau des navigateurs, Adobe s’est penché sur de nouvelles solutions pour équilibrer les besoins des clients et le droit des utilisateurs à la confidentialité dans les différentes solutions Adobe Experience Cloud.

La liste suivante décrit l’impact de la prise en charge des cookies tiers sur les mises en œuvre actuelles des solutions Adobe Experience Cloud :

## Adobe Analytics et Adobe Target

* Analytics et Target ne seront en grande partie pas affectés, car la même activité de site repose uniquement sur des cookies propriétaires. Des cookies tiers sont nécessaires pour comprendre l’activité des utilisateurs sur plusieurs domaines. Pour les navigateurs où les cookies tiers sont bloqués, le suivi inter-domaines ne sera pas possible à l’aide des cookies.

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
