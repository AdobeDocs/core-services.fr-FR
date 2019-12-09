---
description: Aperçu des nouvelles fonctionnalités et mises à jour d’Experience Cloud.
keywords: core services
seo-description: Aperçu des nouvelles fonctionnalités et mises à jour d’Experience Cloud.
seo-title: Nouveautés d’Experience Cloud
solution: Experience Cloud
title: Nouveautés d’Experience Cloud
uuid: bc1b1542-1a37-4da1-bcfd-fc86af881642
translation-type: tm+mt
source-git-commit: ae97db27349940a8df7ee2ba6678683f57585678

---


# Nouveautés d’Experience Cloud

Aperçu des nouvelles fonctionnalités et mises à jour d’Experience Cloud.

## Août 2018 {#section_7388CDAB723B49809AABEFEE85CF6378}

Correctifs et améliorations pour août 2018.

* Amélioration de la synchronisation des commentaires des ressources à l’échelle de Creative Cloud et d’Experience Cloud. (CORE-15971)
* Ajout d’un indicateur de fonctionnalité permettant de contrôler la synchronisation des ressources Experience Cloud-Creative Cloud. (CORE-15938)
* Amélioration de la création de segments Audience, y compris en ce qui concerne la recherche et l’utilisation de listes. (CORE-5833, CORE-14278)
* Correction d’un problème à priorité élevée qui bloquait le partage de dossiers depuis MAC vers Creative Cloud. (CORE-16677)

## 19 juillet 2018 {#section_EBB549EBABB7480884A180237ADCCD02}

Correctifs et améliorations de juillet 2018.

* Déploie une fonctionnalité en arrière-plan pour contrôler le partage d’actif entre Experience Cloud et AEM, ainsi qu’entre Experience Cloud et Creative Cloud. (CORE-14386)
* Correction d’un problème qui bloquait l’approvisionnement de nouveaux clients dans certains environnements. (CORE-15509)
* Correction d’un problème qui redirigeait les utilisateurs vers [!DNL experiencecloud.adobe.com] lors de l’accès à [!DNL experiencecloud.adobe.com] via [!DNL http] au lieu de [!DNL https] (sécurisée). (CORE-15587)
* Correction d’un problème qui bloquait les notifications chez certains nouveaux clients. (CORE-15240)

## 14 juin 2018 {#section_7ABC327992CB46B0B8E4A631B8B68899}

Correctifs et améliorations pour juin 2018.

* Activation d’un lien d’accès au RGPD pour les administrateurs. (CORE-11731)
* Mise à jour de la fonction de commentaires bêta pour limiter les types de fichiers pouvant être joints aux commentaires. (CORE-10474)
* Résolution d’un problème lors de la suppression d’audiences de la bibliothèque d’audiences. (CORE-12792)
* Résolution d’un problème entraînant l’affichage d’un écran noir lors de l’accès aux liens de Workspace à l’aide de Federated ID. (CORE-11620)

## 10 mai 2018 {#section_498AF78DA17C4720AA0F32B51493E550}

Nouvelles fonctions et correctifs de l’interface [!DNL Adobe Experience Cloud].

| Fonction | Description |
|--- |--- |
| Nouvelle page d’entrée Administration | Lorsque vous vous connectez à Experience Cloud et naviguez vers la page Administration, une nouvelle interface intuitive vous permet d’accéder rapidement aux solutions et services principaux Experience Cloud. |
**Correctifs**

* Correction d’un problème qui entrainait l’échec du téléchargement d’une image à cause d’une mise à jour Scene7. (CORE-12746)
* Réalisation des mises à jour pour abandonner la prise en charge du protocole TLS 1.0, comme stipulé par la norme PCI afin de supprimer les failles de sécurité. (CORE-7695)

## 26 octobre 2017 {#section_11195859B4094177A939C0561428B525}

**Problème connu**

De nombreuses notifications de maintenance relatives aux mises à jour de maintenances et de produit planifiées ne figurent pas dans le courrier électronique de résumé des notifications. Nous nous employons à ce que toutes les notifications de maintenance figurent dans le courrier électronique de résumé.

## mardi 8 août 2017 {#section_2313A875454044F490B418506DD24593}

| Fonction | Description |
|--- |--- |
| Notifications : paramètres granulaires | Vous pouvez activer les notifications pour les activités et événements relatifs aux produits et solutions, y compris les notifications concernant l’activité de téléchargement [Attributs du client](../attributes/attributes.md). |
| Notifications : notifications de maintenance | Dans les paramètres de notification, il est possible d’activer les notifications de maintenance relatives aux produits et aux solutions. |
| Admin Console pour les solutions Experience Cloud | Les nouveaux clients Experience Cloud peuvent commencer à utiliser Admin Console, un emplacement central leur permettant de gérer leurs droits Adobe dans l’ensemble de leur organisation.<br>La migration vers Admin Console pour la gestion des utilisateurs sera effectuée par vagues. Adobe vous contactera (administrateurs système) lorsqu’il sera temps de procéder à la migration.<br>Administrateurs d’Analytics : voir [Migration d’Analytics](https://docs.adobe.com/content/help/en/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.html). |

## 22 mai 2017 {#section_242FE649FA1B4BFA88EC6E353D175ACC}

| Fonction | Description |
|--- |--- |
| Mappage de suites de rapports en bloc | Dans Administration &gt; Mappage de suites de rapports, vous pouvez désormais sélectionner plusieurs suites de rapports, puis les mapper à une organisation. (Auparavant, vous deviez les mapper individuellement.)  <br>[Le mappage de plusieurs suites de rapports](../core-services/core-services.md) à une organisation unique permet d’activer des fonctionnalités et services inter-solutions dans Experience Cloud. |
| Mises à jour des audiences Experience Cloud | **Application de suite de rapports**<br>Vous pouvez désormais appliquer une suite de rapports à toutes vos [règles d’audience](../audience-library/t-audience-create.md). (Auparavant, vous deviez spécifier une suite de rapports dans chaque définition de règle.) <br>**Props et Variables**<br>Vous pouvez désormais inclure des propriétés et des variables par défaut d’Analytics (en plus des eVars et des événements) dans les audiences en temps réel. |

## 8 novembre 2016 - 16.11.1 {#section_7065A9BCCDF544C2BB37E9A7D661EA6A}

| Fonction | Description |
|--- |--- |
| Mise à jour de la section Profil et mots de passe | Les utilisateurs ne peuvent plus modifier les informations de profil utilisateur IMS sous Détails personnels dans Modifier le profil &gt; Profil et mots de passe. Ils sont redirigés à la place vers `accounts.adobe.com`. Tous les types d’identité sont concernés (Adobe ID, Enterprise et Federated). |

**Correctifs**

* Correction d’un problème lié aux mots de passe techniques qui engendrait une erreur lors du partage de dossiers entre Creative Cloud et Experience Cloud. (MAC-31067, MAC-32014)
* Correction d’un problème lié au téléchargement de certains types de fichiers (fichiers PDF compris) qui a été détecté dans Assets Core Service après la version d’octobre. (MAC-32517)
