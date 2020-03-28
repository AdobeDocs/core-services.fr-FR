---
description: Aperçu des nouvelles fonctionnalités et mises à jour d’Experience Cloud.
keywords: core services
seo-description: Aperçu des nouvelles fonctionnalités et mises à jour d’Experience Cloud.
seo-title: Nouveautés d’Experience Cloud
solution: Experience Cloud
title: Nouveautés d’Experience Cloud
uuid: bc1b1542-1a37-4da1-bcfd-fc86af881642
translation-type: tm+mt
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e

---


# Nouveautés d’Experience Cloud

Aperçu des nouvelles fonctionnalités et mises à jour d’Experience Cloud.

## Août 2018 {#section_7388CDAB723B49809AABEFEE85CF6378}

Correctifs et améliorations pour août 2018.

* Améliorations apportées à la synchronisation des commentaires des ressources dans Creative Cloud et Experience Cloud. (CORE-15971)
* Ajout d’un indicateur de fonctionnalité permettant de contrôler la synchronisation des ressources Experience Cloud-Creative Cloud. (CORE-15938)
* Améliorations apportées à la création de  segments de, y compris une meilleure expérience de recherche et de mise en vente. (CORE-5833, CORE-14278)
* Correction d’un problème à priorité élevée qui bloquait le partage de dossiers depuis MAC vers Creative Cloud. (CORE-16677)

## 19 juillet 2018 {#section_EBB549EBABB7480884A180237ADCCD02}

Correctifs et améliorations de juillet 2018.

* Déploie une fonctionnalité en arrière-plan pour contrôler le partage d’actif entre Experience Cloud et AEM, ainsi qu’entre Experience Cloud et Creative Cloud. (CORE-14386)
* Correction d’un problème qui bloquait l’approvisionnement des nouveaux locataires sur certains  . (CORE-15509)
* Correction d’un problème qui redirigeait les utilisateurs vers [!DNL experiencecloud.adobe.com] lors de l’accès à [!DNL experiencecloud.adobe.com] via [!DNL http] au lieu de [!DNL https] (sécurisée). (CORE-15587)
* Correction d’un problème qui bloquait les notifications pour certains nouveaux locataires. (CORE-15240)

## 14 juin 2018 {#section_7ABC327992CB46B0B8E4A631B8B68899}

Correctifs et améliorations pour juin 2018.

* Activation d’un lien vers l’accès GDPR pour les administrateurs. (CORE-11731)
* Mise à jour de la fonctionnalité Commentaires bêta afin de limiter les types de fichiers pouvant être joints aux commentaires. (CORE-10474)
* Correction d’un problème lors de la suppression de   de la bibliothèque de de . (CORE-12792)
* Correction d’un problème en raison duquel un écran vide s’affichait lors de l’accès aux liens de Workspace à l’aide d’ID fédérés. (CORE-11620)

## 10 mai 2018 {#section_498AF78DA17C4720AA0F32B51493E550}

Nouvelles fonctions et correctifs de l’interface [!DNL Adobe Experience Cloud].

| Fonction | Description |
|--- |--- |
| Nouveau d’administration | Lorsque vous vous connectez à Experience Cloud et accédez à la page Administration, une nouvelle interface intuitive est disponible pour vous aider à accéder rapidement aux solutions Experience Cloud et aux services principaux. |

**Correctifs**

* Correction d’un problème en raison duquel le chargement de l’image échouait en raison d’une mise à jour de Scene7. (CORE-12746)
* Des mises à jour ont été effectuées afin de supprimer la prise en charge du protocole TLS 1.0, comme le demande PCI pour éliminer la vulnérabilité de sécurité. (CORE-7695)

## 26 octobre 2017 {#section_11195859B4094177A939C0561428B525}

**Problème connu**

De nombreuses notifications de maintenance relatives aux mises à jour de maintenances et de produit planifiées ne figurent pas dans le courrier électronique de résumé des notifications. Nous veillons à ce que toutes les notifications de maintenance soient incluses dans le résumé du courrier électronique.

## August 8, 2017 {#section_2313A875454044F490B418506DD24593}

| Fonction | Description |
|--- |--- |
| Notifications - Paramètres granulaires | Vous pouvez activer les notifications pour les activités et événements relatifs aux produits et solutions, y compris les notifications concernant l’activité de téléchargement [Attributs du client](../attributes/attributes.md). |
| Notifications - Notifications de maintenance | Dans les paramètres de notification, vous pouvez activer les notifications de maintenance pour les produits et les solutions. |
| Console d’administration pour les solutions Experience Cloud | Les nouveaux clients d’Experience Cloud peuvent commencer à utiliser la Console d’administration, un emplacement central pour la gestion des droits Adobe dans l’ensemble de votre organisation.<br>La migration vers Admin Console pour la gestion des utilisateurs sera effectuée par vagues. Adobe vous contactera (administrateurs système) lorsqu’il sera temps de procéder à la migration.<br>Administrateurs d’Analytics, voir Migration [](https://docs.adobe.com/content/help/en/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.html)Analytics. |

## 22 mai 2017 {#section_242FE649FA1B4BFA88EC6E353D175ACC}

| Fonction | Description |
|--- |--- |
| Mappage de suites de rapports en bloc | Dans Administration > Mappage de suites de rapports, vous pouvez désormais sélectionner plusieurs suites de rapports, puis les mapper à une organisation. (Auparavant, vous deviez les mapper individuellement.)  <br>[Le mappage de plusieurs suites de rapports](../core-services/core-services.md) à une organisation unique permet d’activer des fonctionnalités et services inter-solutions dans Experience Cloud. |
| Mises à jour des audiences Experience Cloud | **Application de suite de rapports **<br>Vous pouvez désormais appliquer une suite de rapports à toutes vos[règles d’audience](../audience-library/t-audience-create.md). (Auparavant, vous deviez spécifier une suite de rapports dans chaque définition de règle.)<br>**Props et Variables**<br>Vous pouvez désormais inclure des propriétés et des variables par défaut d’Analytics (en plus des eVars et des événements) dans les audiences en temps réel. |

## 8 novembre 2016 - 16.11.1 {#section_7065A9BCCDF544C2BB37E9A7D661EA6A}

| Fonction | Description |
|--- |--- |
| Mise à jour des  et mots de passe du | Les utilisateurs ne peuvent plus modifier les informations de profil utilisateur IMS sous Détails personnels dans Modifier le profil > Profil et mots de passe. Ils sont redirigés à la place vers `accounts.adobe.com`. Tous les types d’identité sont concernés (Adobe ID, Enterprise et Federated). |

**Correctifs**

* Correction d’un problème lié aux mots de passe techniques qui engendrait une erreur lors du partage de dossiers entre Creative Cloud et Experience Cloud. (MAC-31067, MAC-32014)
* Correction d’un problème lié au téléchargement de certains types de fichiers (fichiers PDF compris) qui a été détecté dans Assets Core Service après la version d’octobre. (MAC-32517)
