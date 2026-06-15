---
description: Découvrez comment les termes du produit et de l’interface Adobe diffèrent entre les solutions d’expérience client, Experience Cloud, Creative Cloud, Experience League et d’autres expériences d’assistance.
solution: Experience Cloud
title: Terminologie
feature-set: Experience Cloud Services
feature: Central Interface Components
topic: Administration
role: Admin
level: Experienced
exl-id: 3799f806-2794-43ab-9e70-06ee693871e7
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2:
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2:
  - id: b75843fa-0a67-4a44-a6b1-cc627b0481dc
  - id: bdea9bc8-5600-45db-b85e-d74bb59dfcff
  - id: fef08361-6ac5-460c-93fe-d063e40b6a49
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2:
  - id: a004cc84-67b9-4a33-a3a7-8ec7273ef4dc
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
  - id: f4e6943a-c91a-4134-a2c7-f4f20cfff2f0
source-git-commit: 50012e2564e88e1a6e16578e3331136c7df0cb21
workflow-type: tm+mt
source-wordcount: 692
ht-degree: 5%

---

# Terminologie

<!--
TQID: https://experienceleague.adobe.com/6wm7HcuAbaV1iV3AgN55dY5WR---BnMM7lJgN0HZDsk
-->

Utilisez ce tableau lorsque le même mot apparaît dans différentes expériences Adobe (expérience client d’entreprise, applications marketing, applications de conception ou sites d’assistance). Il ne s’agit pas d’un glossaire complet. Consultez l’aide spécifique au produit sur [&#128279;](https://experienceleague.adobe.com/fr) pour obtenir des définitions détaillées.

| Terme | Dans CX Enterprise et ce guide | Autre utilisation courante d’Adobe |
| --- | --- | --- |
| **Adobe CX Entreprise** | Expérience web unifiée sur `experience.adobe.com`, dans laquelle vous ouvrez des applications marketing, définissez des préférences et des notifications, et atteignez les services d’interface partagés (par exemple, les attributs du client et la [bibliothèque d’audiences](../services/audiences/overview.md)). Anciennement *Adobe Experience Cloud*. | Pas le même produit que **&#x200B;**&#x200B;(infrastructure de données client, sandbox, jeux de données). Pas **&#x200B;**&#x200B;(applications de conception et de médias). |
| **Adobe Experience Platform** | S’affiche lorsque vous connectez des agents de collecte de données, d’identité ou de plateforme à vos solutions ; certaines fonctionnalités de recherche de navigation et d’IA sont prises en charge par Platform. | Plateforme de données et d’orchestration. N’utilisez pas « Experience Platform » lorsque vous parlez du shell d’entreprise CX ou de la page d’accueil. |
| **Experience League** | Où l’aide et les liens internes au produit vous permettent d’accéder à **documentation**, **tutoriels**, listes de lecture d’apprentissage, notes de mise à jour et contexte de la communauté pour les solutions Adobe. Commencez à [l’accueil &#x200B;](https://experienceleague.adobe.com/fr). | Complète le **[Centre d’aide Adobe](https://helpx.adobe.com/fr/support.html)**, qui met l’accent sur les **compte**, **plan**, **facturation**, les téléchargements et le dépannage interproduits pour les individus et les équipes. Utilisez le Centre d’aide pour les réinitialisations de mot de passe, les modifications de plan et des tâches similaires ; utilisez Experience League pour le contenu pratique du produit. |
| **Assistant IA / IA dédiée aux agences** | Assistants intégrés au produit et agents orchestrés décrits dans les rubriques d’IA de ce guide. L’accès et les crédits dépendent des droits sur les produits. | D’autres surfaces Adobe (par exemple, **Firefly** ou **Express**) utilisent des fonctionnalités d’« IA » avec différentes portées et politiques. |
| **Organisation** | Votre **organisation IMS** : limite pour les licences d’entreprise, les annuaires d’utilisateurs, l’authentification unique et l’administration Admin Console dans l’entreprise CX. Voir [Liaison d’organisations et de comptes](../administration/organizations.md). | Il ne s’agit pas d’une *suite de rapports* Analytics, d’une *propriété* Target ou d’un *sandbox* Experience Platform (il s’agit de conteneurs spécifiques aux produits). |
| **Admin Console** | Plan de contrôle d’entreprise au `adminconsole.adobe.com` pour les utilisateurs, les profils de produit et l’identité ; lié à partir des rubriques CX Enterprise **Administration**. Voir [Gestion des utilisateurs et des produits](../administration/admin-console.md). | Différent de **administrateur intégré au produit** dans chaque application (par exemple, les outils d’administration Analytics ou les écrans d’autorisations Journey Optimizer). |
| **Profil de produit** | Offre groupée de licences dans Admin Console qui accorde l’accès à un produit ou à une fonctionnalité. Les utilisateurs doivent appartenir à un profil pour pouvoir y accéder. Voir [Gestion des produits et des profils](https://helpx.adobe.com/fr/enterprise/using/manage-products.html). | Non interchangeables avec chaque nom d’« espace de travail », de « conteneur » ou de « propriété » intégré au produit ; ils varient selon la solution. |
| **Liaison de comptes** | La connexion d’une connexion à l’application (par exemple, les informations d’identification Analytics ou Target) à votre Adobe ID pour l’organisation afin que les services reconnaissent un utilisateur. Voir [Liaison d’organisations et de comptes](../administration/organizations.md). | Différent de la configuration **synchronisation des annuaires**, **SSO** ou **fédération** (il s’agit de décisions d’identité à l’échelle de l’organisation dans Admin Console). |
| **Service Experience Cloud ID/ECID** | Identifiant visiteur persistant utilisé dans les solutions ; souvent déployé avec des balises ou une SDK Web. Toujours généralement référencée sous le nom **Experience Cloud ID** ou **MID** dans les anciennes discussions Analytics. Voir la présentation du service [ID](https://experienceleague.adobe.com/docs/id-service/using/home.html?lang=fr). | Distinct du nom de cookie hérité d’une seule application ou des concepts de graphique d’identité **&#x200B;**, bien qu’ils puissent être associés dans une implémentation. |
| **Attributs du client** | Attributs CRM ou d’entreprise que vous chargez et mappez pour une utilisation dans Analytics, Target et les workflows associés via le service Personnes. Voir les rubriques [Attributs du client](../services/customer-attributes/attributes.md). | N’associez pas aux **caractéristiques** seules ou à chaque champ de profil **Real-Time CDP** sans vérifier la limite du produit. |
| **Bibliothèque d’audiences** | Interface utilisateur d’entreprise CX pour composer et partager des audiences dans les applications intégrées. | **&#x200B;**&#x200B;et **Target** utilisent également les « audiences », mais les règles de segmentation et les destinations diffèrent selon les produits. |
| **Segment** (Analytics) | Une définition d’audience basée sur des règles que vous pouvez créer dans Adobe Analytics et, lorsqu’elle est prise en charge, publier vers les audiences partagées. | Dans **&#x200B;**, les segments se combinent **caractéristiques** ; les noms se chevauchent, mais l’implémentation n’est pas identique. Dans **Target**, les libellés « audiences » ont remplacé les anciens libellés « segment » à de nombreux endroits. |
| **Assets (Experience Cloud Assets)** | Dossiers et fichiers partagés pour la collaboration entre les workflows marketing d&#39;entreprise CX et les utilisateurs **&#x200B;**&#x200B;approuvés. Voir [Présentation d’](../services/assets/experience-cloud-assets.md). | Dans **&#x200B;**, « ressources » signifie généralement des fichiers de conception (PSD, AI, INDD). Même mot, modèle de partage et de gouvernance différent. |

{style="table-layout:auto"}

