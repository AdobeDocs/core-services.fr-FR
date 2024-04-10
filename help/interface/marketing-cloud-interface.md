---
description: Découvrez les nouvelles fonctionnalités et les mises à jour dans Experience Cloud.
solution: Experience Cloud
title: Nouveautés d’Experience Cloud
uuid: bc1b1542-1a37-4da1-bcfd-fc86af881642
source-git-commit: f229ec33ff721527e6a4c920ea63eabb4102935a
workflow-type: tm+mt
source-wordcount: '628'
ht-degree: 87%

---


# Nouveautés d’Experience Cloud

Aperçu des nouvelles fonctionnalités et mises à jour dans Experience Cloud.

## Août 2018 {#section_7388CDAB723B49809AABEFEE85CF6378}

Correctifs et améliorations pour août 2018.

* Amélioration de la synchronisation des commentaires des ressources dans Creative Cloud et Experience Cloud. (CORE-15971)
* Ajout d’un indicateur de fonctionnalité permettant de contrôler la synchronisation des ressources Experience Cloud-Creative Cloud. (CORE-15938)
* Améliorations apportées à la création de segments d’Audience, y compris l’amélioration de la recherche et de l’élaboration de listes. (CORE-5833, CORE-14278)
* Correction dʼun problème à priorité élevée qui bloquait le partage de dossiers depuis Experience Cloud vers Creative Cloud. (CORE-16677)

## 19 juillet 2018 {#section_EBB549EBABB7480884A180237ADCCD02}

Correctifs et améliorations pour juillet 2018.

* Déploie une fonctionnalité en arrière-plan pour contrôler le partage d’actif entre Experience Cloud et AEM, ainsi qu’entre Experience Cloud et Creative Cloud. (CORE-14386)
* Correction d’un problème qui bloquait le provisionnement des nouveaux clients sur certains environnements. (CORE-15509)
* Correction d’un problème qui redirigeait les utilisateurs vers [!DNL experiencecloud.adobe.com] lors de l’accès à [!DNL experiencecloud.adobe.com] via [!DNL http] au lieu de [!DNL https] (sécurisée). (CORE-15587)
* Correction d’un problème qui bloquait les notifications pour certains nouveaux clients. (CORE-15240)

## 14 juin 2018 {#section_7ABC327992CB46B0B8E4A631B8B68899}

Correctifs et améliorations pour juin 2018.

* Activation d’un lien d’accès au RGPD pour les administrateurs. (CORE-11731)
* Mise à jour de la fonction Commentaires bêta afin de limiter les types de fichiers pouvant être joints aux commentaires. (CORE-10474)
* Correction d’un problème lié à la suppression d’audiences de la bibliothèque d’audiences. (CORE-12792)
* Correction d’un problème qui faisait s’afficher un écran vide en accédant aux liens Workspace à l’aide de Federated ID. (CORE-11620)

## 10 mai 2018 {#section_498AF78DA17C4720AA0F32B51493E550}

Nouvelles fonctions et correctifs de l’interface [!DNL Adobe Experience Cloud].

| Fonctionnalité | Description |
|--- |--- |
| Nouvelle page de destination d’administration | Lorsque vous vous connectez à Experience Cloud et accédez à la page d’administration, une nouvelle interface intuitive vous aide à accéder rapidement à vos applications Experience Cloud et à vos services principaux. |

{style="table-layout:auto"}

**Correctifs**

* Correction d’un problème qui faisait échouer le chargement de l’image en raison d’une mise à jour de Scene7. (CORE-12746)
* Des mises à jour ont été effectuées dans le but d’abandonner la prise en charge du protocole TLS 1.0, comme l’a demandé PCI afin d’éliminer les failles de sécurité. (CORE-7695)

## 26 octobre 2017 {#section_11195859B4094177A939C0561428B525}

**Problème connu**

De nombreuses notifications de maintenance relatives aux mises à jour de maintenances et de produit planifiées ne figurent pas dans le courrier électronique de résumé des notifications. Nous nous efforçons de nous assurer que toutes les notifications de maintenance sont incluses dans l’e-mail récapitulatif.

## 8 août 2017 {#section_2313A875454044F490B418506DD24593}

| Fonctionnalité | Description |
|--- |--- |
| Notifications - Paramètres granulaires | Vous pouvez activer les notifications pour les événements et activités des produits et des applications, y compris les notifications sur lʼactivité de chargement [Attributs du client](attributes.md). |
| Notifications - Notifications de maintenance | Dans les paramètres de notification, vous pouvez activer les notifications de maintenance pour les produits et applications. |
| Admin Console pour les solutions Experience Cloud | Les nouveaux clients d’Experience Cloud peuvent commencer à utiliser Admin Console, qui centralise la gestion de vos droits Adobe au sein de votre organisation tout entière.<br>La migration vers Admin Console pour la gestion des utilisateurs sera effectuée par vagues. Adobe vous contacte (administrateurs système) lorsqu’il est temps de procéder à la migration.<br>Si vous êtes administrateur d’Analytics, reportez-vous à [Migration pour Analytics](https://experienceleague.adobe.com/docs/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.html?lang=fr). |

{style="table-layout:auto"}

## 22 mai 2017 {#section_242FE649FA1B4BFA88EC6E353D175ACC}

| Fonctionnalité | Description |
|--- |--- |
| Mappage de suites de rapports en bloc | Dans Administration > Mappage de suites de rapports, vous pouvez désormais sélectionner plusieurs suites de rapports, puis les mapper à une organisation. (Auparavant, vous deviez les mapper individuellement.)  <br>[Mappage de suites de rapports](core-services.md) à une seule organisation permet d’activer des fonctionnalités et services inter-applications dans Experience Cloud. |
| Mises à jour des audiences Experience Cloud | **Application de suite de rapports**<br> Vous pouvez désormais appliquer une suite de rapports à toutes vos [règles d’audience](t-audience-create.md). (Auparavant, vous deviez spécifier une suite de rapports dans chaque définition de règle.) <br>**Props et variables**<br> Vous pouvez désormais inclure des propriétés et des variables par défaut d’Analytics (en plus des eVars et des événements) dans les audiences en temps réel. |

{style="table-layout:auto"}

## 8 novembre 2016 - 16.11.1 {#section_7065A9BCCDF544C2BB37E9A7D661EA6A}

| Fonctionnalité | Description |
|--- |--- |
| Mise à jour de la section Profil et mots de passe | Les utilisateurs ne peuvent plus modifier les informations de profil utilisateur IMS sous Détails personnels dans Modifier le profil > Profil et mots de passe. Ils sont redirigés à la place vers `accounts.adobe.com`. Cette mise à jour s’applique à tous les types d’identité (Adobe ID, Enterprise et Federated). |

{style="table-layout:auto"}

**Correctifs**

* Correction d’un problème lié aux mots de passe techniques qui engendrait une erreur lors du partage de dossiers entre Creative Cloud et Experience Cloud. (MAC-31067, MAC-32014)
* Correction d’un problème lié au téléchargement de certains types de fichiers (fichiers PDF compris) qui a été détecté dans Assets Core Service après la version d’octobre. (MAC-32517)
