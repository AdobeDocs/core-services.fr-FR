---
description: Questions fréquentes et réponses à l’intention des administrateurs dans Experience Cloud.
keywords: core services, Experience Cloud, Experience Platform, Analytics, Target, user management.
seo-description: Questions fréquentes et réponses à l’intention des administrateurs dans Experience Cloud.
seo-title: Questions fréquentes à propos des services principaux d’Experience Cloud.
solution: Adobe Experience Cloud
title: Questions fréquentes
index: true
translation-type: tm+mt
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e

---


# Questions fréquentes sur Experience Cloud

Questions fréquentes et réponses à l’intention des administrateurs dans Experience Cloud.

## Comment savoir si mes solutions sont activées pour les services principaux ?

Si votre mise en œuvre n’a pas été configurée pour les services principaux, consultez la section [Activation de vos solutions pour les services principaux](../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C), qui décrit comment :

1. [Rejoindre Experience Cloud et devenir administrateur](../core-services/core-services.md#section_2423F0BD3DF642658103310EE5EA6154)
1. [Mettez en oeuvre le service Experience Cloud ID à l’aide du lancement](https://docs.adobe.com/content/help/en/launch/using/intro/get-started/quick-start.html)de la plateforme d’expérience.
1. [Mapper des suites de rapports à une organisation Experience Cloud](../core-services/core-services.md#concept_apg_zq2_rw)
1. [(Analytics uniquement) Moderniser votre code AppMeasurement Analytics](../core-services/core-services.md#section_1798D9D0F05C47E29816AC4EEB9A0913)
1. [( Adobe uniquement) Moderniser votre mise en oeuvre de Adobe](../core-services/core-services.md#section_C2F4493C7A36406DAE2266B429A4BD24)
1. [Vérification de l’implémentation des services principaux](../core-services/core-services.md#section_E641782A0F4F44AF8C9C91216BE330D5)
1. [Gérer les utilisateurs et les produits](../core-services/core-services.md#section_B6E95F4E0E12483CB9DA99CBC0C5A4AF)
1. [Commencer à utiliser les services principaux](../core-services/core-services.md#section_960C06093623462E8EA247B3E97274A1)

Pour obtenir de l’aide, [contactez l’assistance](https://helpx.adobe.com/marketing-cloud/contact-support.html)d’Adobe.

## Y a-t-il des frais pour l’accès à Experience Cloud ?

Non. Experience Cloud est inclus sans frais supplémentaires. Toutefois, certains services de base peuvent entraîner des coûts supplémentaires.

## Pourquoi ma société doit-elle se connecter par le biais de l’interface d’Experience Cloud ?

Les fonctions de l’interface d’Experience Cloud seront utiles à votre société. À partir de maintenant, cette interface constituera aussi le chemin d’accès standard aux solutions et remplacera à terme d’autres flux individuels de connexion aux solutions. La connexion par le biais d’Experience Cloud facilitera la  ultérieurement.

## Comment résoudre les questions liées à la migration de ma société ?

[Contactez l’assistance Adobe](https://helpx.adobe.com/marketing-cloud/contact-support.html).

## Qu’est-ce que _l’approvisionnement ?_

Dans Experience Cloud, l’attribution de privilèges d’accès signifie ce qui suit :

* Vos utilisateurs peuvent commencer à se connecter à [!DNL Experience Cloud] et à lier des solutions.
* Ils peuvent commencer à utiliser les fonctionnalités disponibles dans Experience Cloud, telles que Personnes.
* Vous pouvez vous préparer à mettre fin à votre processus de connexion spécifique à une solution.
* Vous pouvez conserver les  aux solutions.

## Comment gérer les utilisateurs et les profils de produits ?

* Consultez le Guide [de l&#39;utilisateur de la Console](https://helpx.adobe.com/enterprise/administering/user-guide.html) d&#39;administration pour obtenir de l&#39;aide.

* La gestion des droits des utilisateurs et des produits s’effectue dans [Adobe Admin Console](https://adminconsole.adobe.com/enterprise) (lien du produit).

* **Important :** Pour les administrateurs d’Analytics, voir [Gestion des utilisateurs d’Analytics dans la Console](https://docs.adobe.com/content/help/en/analytics/admin/user-product-management/user-management/migrate-users/c-migration-tool.html) d’administration à propos de la migration des ID utilisateur des outils d’administration Analytics vers la Console d’administration.

## Que faire si quelqu’un ne parvient pas à se connecter à l’interface d’Experience Cloud ?

Les administrateurs Admin Console peuvent accorder l’accès aux utilisateurs. Les utilisateurs reçoivent des courriers électroniques contenant des instructions de connexion.

You might need to [Contact Adobe Support](https://helpx.adobe.com/marketing-cloud/contact-support.html) to verify that your company has been fully provisioned.

## Où peut se rendre un utilisateur pour gérer la liaison de comptes ?

Il se peut que certains utilisateurs doivent lier leur compte de solution (Analytics) à leur Adobe ID ou à leur Enterprise ID.

See [Link a solution account to an Adobe ID](../admin-getting-started/organizations.md#task_FD389E78640848919E247AC5E95B8369).

## Comment gérer les profils de comptes d’utilisateurs et les organisations ?

Reportez-vous à la page [Gestion des comptes utilisateur](../admin-getting-started/organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1).

## Qu’est-ce qu’une organisation ?

Une *organisation* est l’entité qui permet à un administrateur de configurer des groupes et des utilisateurs et de contrôler l’authentification unique dans Experience Cloud. L’organisation fonctionne comme une société de connexion qui couvre tous les produits et solutions Experience Cloud. La plupart du temps, une organisation est votre  de nom. Cependant, un peut avoir de nombreuses organisations.

## Où trouver mon ID d’organisation IMS ?

Voir [Recherche de votre ID d’organisation](organizations.md).

L’ID d’organisation est affiché sur la page d’entrée d’Experience Cloud et sur la [page d’accueil Admin Console](https://adminconsole.adobe.com).

Alternatively, administrators can log into the Admin console (Navigate to [https://adminconsole.adobe.com](https://adminconsole.adobe.com#)) for a specific organization, and you will be able to see your IMS org ID in the URL.

Par exemple, dans l’URL suivante :

`https://adminconsole.adobe.com/C538193582390300A495CC9@AdobeOrg/overview`

l’ID est :

`C538193582390300A495CC9@AdobeOrg`

## Que faire quand l’un de mes utilisateurs quitte ma société ?

Leur accès doit être supprimé de la solution. Ils ne pourront plus accéder au produit par l’intermédiaire d’Experience Cloud ni par connexion directe. Vous devez également les supprimer au niveau d’Experience Cloud.

## Qu’est-ce qu’un Adobe ID ?

Voir Types [d’identité](https://helpx.adobe.com/enterprise/help/identity.html).

## Puis-je lier les comptes de solution de mes utilisateurs ?

Non. Les utilisateurs doivent lier leurs propres solutions à leurs noms d’utilisateur et mots de passe.

## Pourquoi Social est-il visible alors que ma société n’y a pas souscrit ?

Adobe Social peut être vendu avec Analytics. Par conséquent, si vous disposez d’Analytics, vous verrez cette solution, mais vous n’y aurez accès que si vous l’avez achetée.
