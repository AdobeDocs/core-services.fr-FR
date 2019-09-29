---
description: Questions fréquentes et réponses à l’intention des administrateurs dans Experience Cloud.
keywords: services principaux
seo-description: Questions fréquentes et réponses à l’intention des administrateurs dans Experience Cloud.
seo-title: Questions fréquentes
solution: Experience Cloud
title: Questions fréquentes
uuid: 3ed0b4eb-690f-4c14-a31c-0cc1118fb3b4
translation-type: tm+mt
source-git-commit: 9c9b5250ec4143b396623341ecfeb61244469754

---


# Questions fréquentes

Questions fréquentes et réponses à l’intention des administrateurs dans Experience Cloud.

**Comment savoir si mes solutions sont activées pour les services principaux ?**

Si votre mise en œuvre n’a pas été configurée pour les services principaux, consultez la section [Activation de vos solutions pour les services principaux](../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C), qui décrit comment :


1. [Rejoindre Experience Cloud et devenir administrateur](../core-services/core-services.md#section_2423F0BD3DF642658103310EE5EA6154)
1. [Mettre en œuvre le service d’Experience Cloud ID à l’aide du gestionnaire dynamique de balises](../core-services/core-services.md#section_3C9F6DF37C654D939625BB4D485E4354) (ou du nouveau [Launch, d’Adobe](https://marketing.adobe.com/resources/help/en_US/experience-cloud/launch/))
1. [Mapper des suites de rapports à une organisation Experience Cloud](../core-services/core-services.md#concept_apg_zq2_rw)
1. [(Analytics uniquement) Moderniser le code AppMeasurement d’Analytics](../core-services/core-services.md#section_1798D9D0F05C47E29816AC4EEB9A0913)
1. [(Target uniquement) Moderniser la mise en œuvre d’Adobe Target](../core-services/core-services.md#section_C2F4493C7A36406DAE2266B429A4BD24)
1. [Vérifier la mise en œuvre des services principaux](../core-services/core-services.md#section_E641782A0F4F44AF8C9C91216BE330D5)
1. [Gérer les utilisateurs et les produits](../core-services/core-services.md#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF)
1. [Commencer à utiliser les services principaux](../core-services/core-services.md#section_960C06093623462E8EA247B3E97274A1)




Pour obtenir une aide supplémentaire, [contactez l’assistance Adobe](https://helpx.adobe.com/marketing-cloud/contact-support.html).

**Y a-t-il des frais pour l’accès à Experience Cloud ?**

Non. Experience Cloud est inclus sans frais supplémentaires. Toutefois, certains services principaux peuvent s’accompagner de frais supplémentaires.

**Pourquoi ma société doit-elle se connecter par le biais de l’interface d’Experience Cloud ?**

Les fonctions de l’interface d’Experience Cloud seront utiles à votre société. À partir de maintenant, cette interface constituera aussi le chemin d’accès standard aux solutions et remplacera à terme d’autres flux individuels de connexion aux solutions. La connexion par le biais d’Experience Cloud facilitera la transition par la suite.

**Comment résoudre les questions liées à la migration de ma société ?**

[Contactez l’assistance Adobe](https://helpx.adobe.com/marketing-cloud/contact-support.html).

**Qu’est-ce que *`provisioning`* ?**

Dans Experience Cloud, l’attribution de privilèges d’accès signifie ce qui suit :

* Vos utilisateurs peuvent commencer à se connecter à [!DNL Experience Cloud] et à lier des solutions.
* Ils peuvent commencer à utiliser les fonctionnalités disponibles dans Experience Cloud, telles que Personnes.
* Préparez-vous à désactiver votre processus de connexion spécifique à chaque solution.
* Vous pouvez conserver le contrôle d’accès aux solutions.

**Comment gérer les utilisateurs et les profils de produits ?**

* Consultez le [Guide de l’utilisateur d’Admin Console](https://helpx.adobe.com/enterprise/administering/user-guide.html) pour obtenir de l’aide.

* La gestion des droits des utilisateurs et des produits s’effectue dans [Adobe Admin Console](https://adminconsole.adobe.com/enterprise) (lien du produit).

* **Important :** Si vous êtes un administrateur Analytics, consultez [Gestion des utilisateurs Analytics dans Admin Console](https://marketing.adobe.com/resources/help/en_US/experience-cloud/admin-console/analytics-migration/) pour en savoir plus sur la migration des ID d’utilisateur des outils d’administration Analytics à Admin Console.

**Que faire si quelqu’un ne parvient pas à se connecter à l’interface d’Experience Cloud ?**

Les administrateurs Admin Console peuvent accorder l’accès aux utilisateurs. Des courriers électroniques comprenant des instructions de connexion sont envoyés aux utilisateurs.

Il se peut que vous deviez [contacter l’assistance Adobe](https://helpx.adobe.com/marketing-cloud/contact-support.html) pour vérifier que votre société a reçu l’intégralité des privilèges d’accès.

**Où peut se rendre un utilisateur pour gérer la liaison de comptes ?**

Il se peut que certains utilisateurs doivent lier leur compte de solution (Analytics) à leur Adobe ID ou à leur Enterprise ID.

Voir [Liaison d’un compte de solution à un Adobe ID](../admin-getting-started/organizations.md#task_FD389E78640848919E247AC5E95B8369).

**Comment gérer les profils de comptes d’utilisateurs et les organisations ?**

Reportez-vous à la page [Gestion des comptes utilisateur](../admin-getting-started/organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1).

**Qu’est-ce qu’une organisation ?**

Une *organisation* est l’entité qui permet à un administrateur de configurer des groupes et des utilisateurs et de contrôler l’authentification unique dans Experience Cloud. L’organisation fonctionne comme une société de connexion qui couvre tous les produits et solutions Experience Cloud. L’organisation correspond le plus souvent au nom de votre société. Toutefois, une société peut détenir plusieurs organisations.

**Où trouver mon ID d’organisation IMS ?**

Voir [Recherche de votre ID d’organisation](organizations.md).

L’ID d’organisation est affiché sur la page d’entrée d’Experience Cloud et sur la [page d’accueil Admin Console](https://adminconsole.adobe.com).

Les administrateurs peuvent aussi se connecter à Admin Console (en se rendant sur [https://adminconsole.adobe.com](https://adminconsole.adobe.com#)) pour une organisation spécifique. Votre ID d’organisation IMS apparaîtra alors dans l’URL.

Par exemple, dans l’URL suivante :

`https://adminconsole.adobe.com/C538193582390300A495CC9@AdobeOrg/overview`

l’ID est :

`C538193582390300A495CC9@AdobeOrg`

**Que faire quand l’un de mes utilisateurs quitte ma société ?**

Leur accès doit être supprimé de la solution. Ils ne pourront plus accéder au produit par l’intermédiaire d’Experience Cloud ni par connexion directe. Vous pouvez également supprimer leur accès au niveau d’Experience Cloud.

**Qu’est-ce qu’un Adobe ID ?**

Voir [Types d’identité](https://helpx.adobe.com/enterprise/help/identity.html).

**Puis-je lier les comptes de solution de mes utilisateurs ?**

Non. Les utilisateurs doivent lier leurs propres solutions à leurs nom d’utilisateur et mot de passe.

**Pourquoi Social est-il visible alors que ma société n’y a pas souscrit ?**

Adobe Social peut être vendu avec Analytics. Par conséquent, cette solution est visible si vous possédez Analytics ; vous ne pourrez toutefois pas y accéder si vous ne l’avez pas achetée.

**Comment partager un rapport ou une campagne dans Experience Cloud ?**

Un rapport Analytics ou une campagne Target sont des exemples de ressources que vous pouvez partager dans le [Flux](../feed.md#concept_9256B8768A294009A777282DD8719213)
