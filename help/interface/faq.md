---
description: Découvrez la prise en charge des navigateurs et obtenez des réponses aux questions fréquentes à l’intention des administrateurs dans Adobe Experience Cloud.
keywords: services principaux, Experience Cloud, Experience Platform, Analytics, Target, gestion des utilisateurs.
solution: Experience Cloud
title: 'Questions fréquentes à propos d’Experience Cloud '
index: true
feature: Admin Console
topic: Administration
role: Administrator
level: Experienced
exl-id: 062576da-328e-4b46-9e71-5a25733d607a
source-git-commit: ebefd433e96da422674e7ee71c8988d4011fed11
workflow-type: tm+mt
source-wordcount: '777'
ht-degree: 87%

---

# Questions fréquentes à propos d’Experience Cloud

Découvrez la prise en charge des navigateurs ainsi que les questions fréquentes et réponses à l’intention des administrateurs dans Experience Cloud.

## Quels navigateurs sont pris en charge dans Experience Cloud ?

* Microsoft® Edge (versions actuelle et antérieures)
* Google Chrome (versions actuelle et antérieures)
* Mozilla Firefox (versions actuelle et antérieures)
* Safari (versions actuelle et antérieures)
* Opera (versions actuelle et antérieures)

## Comment savoir si mes solutions sont activées pour les services principaux ?

Si votre mise en œuvre n’a pas été configurée pour les services principaux, consultez la section [Activation de vos solutions pour les services principaux](core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C), qui décrit comment :

1. [Rejoindre Experience Cloud et devenir administrateur](core-services.md#section_2423F0BD3DF642658103310EE5EA6154)
1. [Mettre en œuvre le service Experience Cloud ID à l’aide d’Experience Platform Launch](https://experienceleague.adobe.com/docs/launch/using/get-started/quick-start.html?lang=en).
1. [Mapper des suites de rapports à une organisation Experience Cloud](core-services.md#concept_apg_zq2_rw)
1. [(Analytics uniquement) Moderniser le code AppMeasurement d’Analytics](core-services.md#section_1798D9D0F05C47E29816AC4EEB9A0913)
1. [(Adobe Target uniquement) Moderniser la mise en œuvre d’Adobe Target](core-services.md#section_C2F4493C7A36406DAE2266B429A4BD24)
1. [Vérification de la mise en œuvre](core-services.md#section_E641782A0F4F44AF8C9C91216BE330D5)
1. [Gérer les utilisateurs et les produits](core-services.md#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF)
1. [Commencer à utiliser les services principaux](core-services.md#section_960C06093623462E8EA247B3E97274A1)

Pour obtenir de l’aide, [contactez l’assistance d’Adobe](https://experienceleague.adobe.com/?support-solution=General&amp;lang=fr#support).

## Y a-t-il des frais pour l’accès à Experience Cloud ?

Non. Experience Cloud est inclus sans frais supplémentaires. Toutefois, certains services de base pourraient entraîner des coûts supplémentaires.

## Pourquoi ma société doit-elle se connecter par le biais de l’interface d’Experience Cloud ?

Les fonctions de l’interface d’Experience Cloud seront utiles à votre société. Il s’agit également du chemin d’accès standard aux solutions à l’avenir, qui remplacera éventuellement d’autres flux de connexion de solution individuels. La connexion par l’intermédiaire d’Experience Cloud facilite une transition plus fluide ultérieurement.

## Comment résoudre les questions liées à la migration de ma société ?

[Contactez l’assistance Adobe](https://experienceleague.adobe.com/?support-solution=General#support).

## Qu’est-ce que l’_attribution de privilèges d’accès_ ?

Dans Experience Cloud, l’attribution de privilèges d’accès signifie ce qui suit :

* Vos utilisateurs peuvent commencer à se connecter à [!DNL Experience Cloud] et à lier des solutions.
* Ils peuvent commencer à utiliser les fonctionnalités disponibles dans Experience Cloud, telles que Personnes.
* Vous pouvez vous préparer à supprimer votre processus de connexion spécifique à une solution.
* Vous pouvez conserver le contrôle de l’accès aux solutions.

## Comment gérer les utilisateurs et les profils de produits ?

* Consultez le [Guide d’utilisation d’Admin Console](https://helpx.adobe.com/fr/enterprise/admin-guide.html) pour obtenir de l’aide.

* Les droits des utilisateurs et la gestion des produits sont effectués dans la balise [Adobe Admin Console](https://adminconsole.adobe.com/enterprise) (lien du produit).

* **Important :** pour les administrateurs d’Analytics, voir [Gestion des utilisateurs d’Analytics dans Admin Console](https://experienceleague.adobe.com/docs/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.html?lang=en) au sujet de la migration des ID d’utilisateur des outils d’administration Analytics vers Admin Console.

## Que faire si quelqu’un ne parvient pas à se connecter à l’interface d’Experience Cloud ?

Les administrateurs Admin Console peuvent accorder l’accès aux utilisateurs. Les utilisateurs reçoivent des e-mails contenant des instructions de connexion.

Il se peut que vous deviez [contacter l’assistance Adobe](https://experienceleague.adobe.com/?support-solution=General#support) pour vérifier que votre société a reçu l’intégralité des privilèges d’accès.

## Où peut se rendre un utilisateur pour gérer la liaison de comptes ?

Il se peut que certains utilisateurs doivent lier leur compte de solution (Analytics) à leur Adobe ID ou à leur Enterprise ID.

Reportez-vous à la section [Liaison d’un compte de solution à un Adobe ID](organizations.md#task_FD389E78640848919E247AC5E95B8369)

## Comment gérer les profils de comptes d’utilisateurs et les organisations ?

Reportez-vous à la page [Gestion des comptes d’utilisateurs](organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1).

## Qu’est-ce qu’une organisation ?

Une *organisation* est l’entité qui permet à un administrateur de configurer des groupes et des utilisateurs et de contrôler l’authentification unique dans Experience Cloud. L’organisation fonctionne comme une société de connexion qui couvre tous les produits et solutions Experience Cloud. La plupart du temps, une organisation désigne votre nom de société. Cependant, une société peut avoir plusieurs organisations.

## Où trouver mon ID d’organisation IMS ?

Voir [Recherche de votre ID d’organisation](organizations.md).

L’ID d’organisation est affiché sur la page d’entrée d’Experience Cloud et sur la [page d’entrée Admin Console](https://adminconsole.adobe.com).

Les administrateurs peuvent également se connecter au Admin Console (en se rendant sur [https://adminconsole.adobe.com](https://adminconsole.adobe.com#)) pour une organisation spécifique. Votre ID d’organisation IMS apparaît alors dans l’URL.

Par exemple, dans l’URL suivante :

`https://adminconsole.adobe.com/C538193582390300A495CC9@AdobeOrg/overview`

L’ID est :

`C538193582390300A495CC9@AdobeOrg`

## Que faire quand l’un de mes utilisateurs quitte ma société ?

Son accès doit être supprimé de la solution. Il ne pourra plus accéder au produit par l’intermédiaire d’Experience Cloud ni par connexion directe. Vous devez également le supprimer au niveau d’Experience Cloud.

## Qu’est-ce qu’un Adobe ID ?

Voir [Types d’identité](https://helpx.adobe.com/fr/enterprise/using/identity.html).

## Puis-je lier les comptes de solution de mes utilisateurs ?

Non. Les utilisateurs doivent lier leurs propres solutions à leurs noms d’utilisateur et mots de passe.

## Pourquoi Social est-il visible alors que ma société n’y a pas souscrit ?

Adobe Social peut être vendu avec Analytics. Par conséquent, si vous disposez d’Analytics, vous verrez cette solution, mais vous n’y aurez pas accès, sauf si vous l’avez achetée.