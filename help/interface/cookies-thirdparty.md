---
description: Découvrez comment la prise en charge des cookies tiers est devenue de plus en plus limitée dans les navigateurs.
solution: Experience Cloud,Analytics,Target
title: Comment les modifications apportées à la prise en charge des cookies tiers affectent-elles les clients
uuid: 27332e0d-6932-4a6e-b97b-0adeced0b050
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 3d12a1b1-c952-4b42-815d-f64b31429cec
source-git-commit: eb2ad8a8255915be47b6002a78cc810b522170d2
workflow-type: tm+mt
source-wordcount: '263'
ht-degree: 100%

---

# Comment les modifications apportées à la prise en charge des cookies tiers affectent-elles les clients{#how-changes-to-third-party-cookie-support-impacts-customers}

La prise en charge des cookies tiers est désormais plus limitée dans les navigateurs. Cʼest pourquoi Adobe travaille sur de nouvelles applications permettant dʼoffrir un équilibre minutieux entre les besoins des clients et le droit des consommateurs à la vie privée dans les applications Experience Cloud.

La liste suivante décrit l’impact de la prise en charge des cookies tiers sur les implémentations actuelles des solutions Experience Cloud :

## Adobe Analytics et Adobe Target

* Analytics et Target ne sont affectés que de manière extrêmement limitée, car la même activité de site repose uniquement sur des cookies propriétaires. Des cookies tiers sont nécessaires pour comprendre l’activité des utilisateurs sur plusieurs domaines. Pour les navigateurs sur lesquels les cookies tiers sont bloqués, le suivi inter-domaines n’est pas possible à l’aide des cookies.

## Adobe Experience Manager

* Parce que Adobe Experience Manager fonctionne entièrement dans le domaine du client, les interactions avec des cookies tiers sont minimales et l’impact est donc minimal, voire inexistant.

## Adobe Social

* Social ne sera pas affecté tant que le client possède la dernière version du code.

## Adobe Advertising Cloud

* Recherche :

   * Lorsque la recherche est optimisée en fonction des données Adobe Analytics, elle est affectée de la même manière qu’Adobe Analytics.
   * La collecte des données de conversion ne doit pas être affectée.

* Affichage :

   * Le remarketing d’affichage dépend aujourd’hui entièrement de l’utilisation de cookies tiers.
   * L’affichage dépend aussi fortement de la disponibilité de divers cookies réseau publicitaires pour la synchronisation.
   * L’impact global est inconnu. Cependant, au premier point, l’affichage est plus affecté que les autres services.
   * Adobe travaille en interne ainsi qu’avec ses partenaires publicitaires pour évaluer l’ampleur de l’impact sur la diffusion publicitaire.
