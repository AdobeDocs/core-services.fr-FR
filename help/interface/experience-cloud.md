---
description: Découvrez les composants de l’interface centrale d’Experience Cloud. Obtenez de l’aide sur l’administration des utilisateurs et utilisatrices et des produits dans Admin Console et activez les applications pour les services Experience Cloud. Obtenez de l’aide sur la bibliothèque d’audiences, les attributs du client ou de la cliente, Experience Cloud Assets, etc.
title: Documentation de l’interface d’Experience Cloud
uuid: aec6f689-e617-4876-ae6c-e961cfcb991a
feature: Central Interface Components
topic: Administration
role: Admin
level: Experienced
exl-id: aedad5cb-3282-4a97-8e7e-6d65f7b75ba9
source-git-commit: 163dc8ef83fb83a0e51879520bcb3ae697c95144
workflow-type: tm+mt
source-wordcount: '508'
ht-degree: 97%

---

# Vue d’ensemble de lʼinterface centrale dʼExperience Cloud

[Experience Cloud](https://experience.adobe.com) désigne la famille intégrée d’applications, de produits et de services de marketing numérique d’Adobe. Grâce à son interface intuitive, vous pouvez accéder rapidement à vos applications cloud, fonctionnalités de produit et services.

![Experience Cloud](assets/landing.png)

Dans l’en-tête d’Experience Cloud, vous pouvez :

* Accéder à tous vos services et applications Experience Cloud
* Dans le menu Aide, recherchez la documentation du produit, des tutoriels et des publications de la communauté. Affichez les résultats dans Experience League.
* Effectuez une recherche globale d’objets métier dans le champ de recherche (pour les utilisateurs et utilisatrices d’Experience Platform uniquement).
* Gérer les [préférences](features/account-preferences.md) du compte (alertes, notifications et abonnements)

## Connectez-vous à Experience Cloud {#signin}

Connectez-vous et vérifiez que vous vous trouvez dans la bonne [organisation](administration/organizations.md).

1. Accédez à [Adobe Experience Cloud](https://experience.adobe.com).
1. Saisissez votre adresse e-mail d’Adobe, puis cliquez sur **[!UICONTROL Continuer]**.
1. Cliquez sur un compte.
1. Saisissez votre mot de passe.
1. Assurez-vous que vous êtes dans la bonne organisation.

   ![Vérification que vous vous trouvez dans la bonne organisation](assets/organizations-menu.png)

   **Vérification de votre organisation**

   L’ [organisation](administration/organizations.md) s’affiche dans l’en-tête de l’interface.

   Si votre entreprise utilise des Federated ID, Experience Cloud vous permet de vous connecter à l’aide de l’authentification unique de votre entreprise sans avoir à saisir votre adresse e-mail et votre mot de passe. Ajoutez `#/sso:@domain` à l’URL d’Experience Cloud (`https://experience.adobe.com`) pour accomplir cette tâche.

   Par exemple, pour une organisation avec des Federated ID et le domaine `adobecustomer.com`, définissez votre lien URL sur `https://experience.adobe.com/#/sso:@adobecustomer.com`. Vous pouvez également accéder directement à une application spécifique en marquant cette URL avec le chemin de l’application. (Par exemple, pour Adobe Analytics, `https://experience.adobe.com/#/sso:@adobecustomer.com/analytics`.)

## Accès aux applications Experience Cloud {#navigation}

Une fois connecté à Experience Cloud, vous pouvez accéder rapidement à l’ensemble de vos applications, services et organisations à partir de l’en-tête unifié.

Pour accéder aux applications et services Experience Cloud configurés pour vous au sein de votre entreprise, accédez au ![menu](assets/apps-icon.png) du sélecteur dʼapplications.

![Accès aux applications Experience Cloud](assets/platform-core-services.png)

## Obtention d’aide et de support {#support}

Accédez à la formation et à l’aide en utilisant le **[!UICONTROL centre d’aide]** (![ressource](assets/help-icon.png)) dans l’en-tête : vous y trouverez le contenu de l’aide (documentation, tutoriels et cours) sur [Experience League](https://experienceleague.adobe.com/?lang=fr#home), ainsi que des ressources supplémentaires pour des applications individuelles. Vous pouvez également envoyer des commentaires ouverts et créer des tickets dʼassistance prioritaires.

![Obtention dʼaide et de support](assets/search-menu.png)

Le menu [!UICONTROL Aide] vous donne également accès aux éléments suivants :

* **[!UICONTROL Support] :** créez un ticket d’assistance ou contactez l’[!UICONTROL assistance] technique à l’aide de Twitter.
* **[!UICONTROL Commentaires] :** partagez vos commentaires au sujet de votre expérience relative à Experience Cloud. Vos commentaires sont utilisés pour améliorer les produits et services d’Adobe.
* **[!UICONTROL Statut] :** accédez à `https://status.adobe.com/experience_cloud` et vérifiez le statut opérationnel du produit et [!UICONTROL gérez les abonnements].
* **[!UICONTROL Developer Connection] :** navigation vers `adobe.io` et recherche de la documentation destinée aux développeurs.

## Gérer votre profil d’utilisation

Dans le menu du [!UICONTROL profil], vous pouvez :

* Spécifier un thème sombre (toutes les applications ne prennent pas en charge ce thème).
* Gérer les [préférences](features/account-preferences.md) Experience Cloud
* Sélectionner ou rechercher une [organisation](administration/organizations.md)
* Afficher les [!UICONTROL informations juridiques]
* Se déconnecter
* Configurer des préférences, notifications et abonnements relatives au compte ;

## Afficher des notifications et des annonces dans le produit {#notifications}

Cliquez sur l’icône représentant une cloche pour afficher les notifications et les annonces. Les annonces peuvent être pertinentes et exploitables. Cela inclut notamment les mises à jour de produits, les avis de maintenance, les éléments partagés et les demandes d’approbation.

![Notifications et annonces](assets/notifications-menu-small.png)

Pour gérer les notifications et les alertes, voir la section [ Préférences de compte et notifications](features/account-preferences.md).
