---
description: Découvrez les règles relatives au comportement des dossiers partagés lorsqu’ils sont déplacés, supprimés et restaurés dans CX Enterprise.
keywords: partage de ressources;Creative Cloud;services principaux
solution: Experience Cloud
title: Comportement des dossiers partagés
uuid: 86348401-f4b1-4efe-acd1-7e73a7030edf
feature: Assets
topic: Administration
role: Admin
level: Experienced
exl-id: 5ddcb2f0-b491-466d-b357-aeacbfcf0b8e
TQID: https://experienceleague.adobe.com/sRgVt31HAxmjTMmMB0Kfs5fYEXKDjDu73hhAgfixu4o
product_v2: id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2: id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2: id: b75843fa-0a67-4a44-a6b1-cc627b0481dcid: fef08361-6ac5-460c-93fe-d063e40b6a49
role_v2: id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2: id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 50012e2564e88e1a6e16578e3331136c7df0cb21
workflow-type: tm+mt
source-wordcount: 627
ht-degree: 90%

---

# Comportement des dossiers partagés

Règles relatives au comportement des dossiers partagés lorsqu’ils sont déplacés, supprimés et restaurés.

>[!NOTE]
>
>Les dossiers et ressources CX Enterprise partagés sont mis en miroir sur le bureau Creative Cloud dans une relation 1:1. Si un utilisateur CX Enterprise modifie un dossier (supprime, ajoute ou supprime le partage), l’action est mise en miroir dans les applications de bureau et web Creative Cloud. En tant que tel, si le partage d’un dossier est annulé, le dossier et les ressources sont supprimés de l’ordinateur local. Une fois le partage supprimé, le dossier et son contenu sont déplacés dans la corbeille de l’ordinateur local, où vous pouvez les restaurer manuellement sur votre machine.

## Dossier non partagé dans un dossier partagé

Vous déplacez un dossier non partagé dans un dossier partagé :

![Dossier non partagé dans un dossier partagé](../../assets/01_assets_move.png)

**Résultat** : les deux dossiers sont partagés.

## Dossier partagé dans un dossier non partagé

Vous déplacez un dossier partagé dans un dossier non partagé.

![Dossier partagé dans un dossier non partagé](../../assets/02_assets_move.png)

**Résultat** : le dossier non partagé reste non partagé. Le dossier partagé reste partagé.

## Contenu du dossier non partagé dans un dossier partagé

Vous déplacez le contenu dʼun dossier non partagé dans un dossier partagé.

![Contenu du dossier non partagé dans un dossier partagé](../../assets/03_assets_move.png)

**Résultat :** le contenu est maintenant partagé et tous les collaborateurs peuvent le voir. Le stockage augmente en fonction de la taille du contenu.

## Contenu partagé archivé et supprimé

Vous archivez ou supprimez du contenu résidant dans un dossier partagé.

![Contenu partagé archivé et supprimé](../../assets/04_assets_move.png)

**Résultat :** le contenu est archivé pour le propriétaire du dossier. Les collaborateurs qui ne détiennent pas le contenu ne peuvent plus y accéder.

## Contenu partagé détenu dans un dossier non partagé

Vous déplacez le contenu dʼun dossier partagé que vous détenez dans un dossier non partagé.

![Contenu partagé détenu dans un dossier non partagé](../../assets/05_assets_move.png)

**Résultat :** le contenu n’est maintenant plus partagé. Les collaborateurs du dossier partagé n’ont plus accès au contenu.

## Contenu non détenu dans un dossier non partagé

Vous déplacez le contenu dʼun dossier partagé détenu par une autre personne dans un dossier non partagé.

![Contenu non détenu dans un dossier non partagé](../../assets/06_assets_move.png)

**Résultat :** le contenu apparaît dans le dossier non partagé et est supprimé du dossier partagé. Les collaborateurs du dossier partagé n’ont plus accès au contenu. Le contenu est archivé pour le propriétaire du dossier partagé.

Contrairement aux observateurs, les propriétaires et éditeurs peuvent déplacer le contenu qu’ils ne détiennent pas. Si les propriétaires et les éditeurs déplacent du contenu, celui-ci n’est disponible dans un dossier partagé pour aucun utilisateur.

## Dossier détenu archivé ou supprimé

Vous archivez (via le Web) ou supprimez (via le bureau) un dossier partagé que vous détenez.

![Dossier détenu archivé ou supprimé](../../assets/07_assets_move.png)

**Résultat :** le partage du dossier est annulé, puis le dossier est archivé. Les collaborateurs n’ont plus accès au dossier.

## Dossier partagé dans un autre dossier partagé

Vous déplacez un dossier partagé que vous détenez dans un autre dossier partagé que vous détenez ou non.

![Dossier partagé dans un autre dossier partagé](../../assets/09_assets_move.png)

**Résultat :** lorsque le dossier est déplacé dans le dossier 2, il est alors partagé avec les nouveaux collaborateurs.

## Contenu partagé dans un autre dossier partagé

Vous déplacez le contenu dʼun dossier partagé dans un autre dossier partagé.

![Contenu partagé dans un autre dossier partagé](../../assets/11_assets_move.png)

**Résultat :** le contenu apparaît dans le dossier 2 et est maintenant partagé avec les nouveaux collaborateurs. Le contenu est supprimé du dossier 1 et le propriétaire le voit comme archivé, tandis que les autres collaborateurs n’y ont plus accès.

## Contenu restauré issu de l’archive

Vous restaurez le contenu d’une archive qui appartenait à un dossier partagé. Vous déteniez le contenu au moment de son archivage.

![Contenu restauré à partir dʼune archive](../../assets/12_assets_move.png)

**Résultat :** le contenu est restauré dans le dossier partagé et tous les collaborateurs peuvent de nouveau y accéder. Si le dossier partagé n’existe plus, le contenu est placé dans une copie non partagée de son ou ses dossier(s) parent(s) d’origine.
