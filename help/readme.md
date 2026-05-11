---
title: Instructions
description: Fichier Lisez-moi d’instructions
TQID: 'https://experienceleague.adobe.com/z4MJRrCMhJAxqPEaXTxwdamuNb1WPgbJyhHV-A5SHx4'
product_v2: id: e1971122-7081-4556-9222-8a31bd71800c
topic_v2: id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87cid: c1579802-ddd4-4214-8a91-97b2066abe11
source-git-commit: f01d85af42b8f2c27dbada8f73546bc6fe4bf710
workflow-type: tm+mt
source-wordcount: 342
ht-degree: 99%

---


# Instructions

**Remarque : Cette page (ou toute page readme.md) ne sera pas publiée dans la documentation destinée aux clients.**

## Table des matières

+ `TOC.md` à la racine du guide de l’utilisateur fournit l’organisation des rubriques contenues dans le guide de cette solution.
+ Chaque guide de l’utilisateur aura sa propre `TOC.md`, dans laquelle vous pourrez classer toutes les pages/rubriques selon vos besoins.
+ La première page de tous les guides d’utilisateur est `overview.md`.

## Guide de l’utilisateur

+ L’introduction au guide de l’utilisateur est appelée `overview.md`
+ Chaque rubrique du guide de l’utilisateur possède son propre répertoire.
   + S’il existe une rubrique dans le guide intitulée *Implémentation*, le répertoire correspondant est `/implementation`
+ Tous les fichiers d’image sont stockés dans `/assets` à la racine du guide de l’utilisateur.
   + Toutes les images du répertoire `/assets` seront localisées.
   + Les images du répertoire `/no-localize` ne seront pas localisées (sans surprise). Cela permet de garantir que dans les versions loc, les ressources spécifiques ne sont pas reproduites inutilement.

## Métadonnées au niveau du Guide de l’utilisateur

+ Les métadonnées décrivant le guide de l’utilisateur sont stockées dans la `TOC.md`. Cela inclut :
   + product - nom du produit/fonctionnalité.
   + cloud - cloud auquel ce produit appartient.
   + audience - audience ou archétype pour lesquels le guide est ciblé.
   + user-guide - nom du guide de l’utilisateur.

## Métadonnées au niveau de la page

+ Les métadonnées requises pour décrire un document sont stockées dans chaque page. Cela inclut :
   + title - titre de la page.
   + description - description de la page.
   + seo-title - autre titre pour le référencement.
   + seo-description - autre titre pour le référencement.
   + short-title - (champ facultatif).
   + index - yes/no - la page sera indexée par la plateforme de recherche d’Adobe.
   + translate - yes/no - cette page sera localisée.
   + version - utilisé principalement pour AEM et Campaign, pour indiquer la version du produit.
   + private-feature-pack - utilisé principalement pour AEM.
   + beta - ce produit est-il en version bêta ?
   + redirect - peut être utilisé pour créer une référence à une nouvelle page, au besoin.
   + doc-type : référence (par défaut)/dépannage/développeur/tutoriel/base de connaissances/livre blanc.

## Plus d’informations

Pour obtenir des instructions supplémentaires sur la publication, des guides de style, des exemples et d’autres ressources, consultez la documentation [Référentiel de documentation collaborative](https://git.corp.adobe.com/AdobeDocs/collaborative-doc-instructions).
