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
source-git-commit: f720e37b693da2c657cb1efab45620c60bfa81a4
workflow-type: tm+mt
source-wordcount: '267'
ht-degree: 59%

---

# Comment les modifications apportées à la prise en charge des cookies tiers affectent-elles les clients ? {#how-changes-to-third-party-cookie-support-impacts-customers}

La prise en charge des cookies tiers est devenue plus limitée dans les navigateurs. Ainsi, Adobe a travaillé sur de nouvelles solutions qui équilibrent soigneusement les besoins des clients avec le droit des consommateurs à la vie privée dans les applications Experience Cloud.

La liste suivante décrit l’impact de la prise en charge des cookies tiers sur les mises en oeuvre actuelles des applications Experience Cloud :

## Adobe Analytics et Adobe Target

* Analytics et Target ne sont en grande partie pas affectés, car la même activité de site repose uniquement sur des cookies propriétaires. Des cookies tiers sont nécessaires pour comprendre l’activité des utilisateurs sur plusieurs domaines. Pour les navigateurs où les cookies tiers sont bloqués, le suivi inter-domaines n’est pas possible à l’aide des cookies.

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
   * Adobe travaille en interne et avec ses partenaires publicitaires pour évaluer l’ampleur de l’impact sur la diffusion publicitaire.
