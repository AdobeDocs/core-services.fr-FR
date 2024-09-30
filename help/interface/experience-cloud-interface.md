---
description: Découvrez comment vous connecter et les composants de lʼinterface centrale dʼExperience Cloud. Découvrez la recherche globale, les préférences de votre compte, comment naviguer dans lʼinterface et obtenir de lʼaide.
solution: Experience Cloud
title: Composants de l’interface utilisateur centrale dʼExperience Cloud
feature: Central Interface Components
topic: Administration
role: Admin, User
level: Beginner, Intermediate, Experienced
source-git-commit: e523471b6dd67cf8213ead3208347fd3aa32a164
workflow-type: tm+mt
source-wordcount: '724'
ht-degree: 91%

---

# Aide de l’interface d’Experience Cloud

Les composants de l’interface centrale d’Experience Cloud incluent des fonctionnalités qui vous permettent d’effectuer les opérations suivantes :

* Connexion et accès à vos applications et services
* Recherche d’objets commerciaux et d’aide sur un produit à l’aide d’une recherche globale
* Gestion des préférences du compte (alertes, notifications et abonnements)

## Prise en charge des navigateurs dans Experience Cloud {#browser}

Pour des performances optimales, Experience Cloud est optimisé pour les navigateurs les plus populaires, notamment la dernière version, ainsi que les deux versions précédentes.

* Chrome
* Edge
* Firefox
* Opera
* Safari

Si votre navigateur n’est pas répertorié, il peut tout de même être pris en charge, mais il est recommandé d’utiliser l’un des navigateurs répertoriés.

>[!NOTE]
>
>Toutes les applications s’exécutant sur un domaine Experience Cloud ne prennent pas en charge tous les navigateurs. Si vous n’êtes pas sûr, consultez la documentation d’une application spécifique.

## Prise en charge linguistique dans Experience Cloud {#languages}

Experience Cloud prend en charge les langues préférées de chaque utilisateur ou utilisatrice, telles que définies dans les préférences de votre compte d’utilisateur Adobe. Les langues actuellement prises en charge sont les suivantes :

* Chinois
* Anglais
* Français
* Allemand
* Italien
* Japonais
* Coréen
* brésilien
* Espagnol
* Taïwanais

Bien que toutes les équipes d’applications se soient engagées à assurer la prise en charge linguistique globale, toutes les applications ne sont pas proposées dans toutes les langues mentionnées ci-dessus. Si votre langue principale n’est pas prise en charge dans une application Experience Cloud, vous pouvez également définir une langue secondaire par défaut, le cas échéant. Accédez aux [Préférences utilisateur dʼExperience Cloud](https://experience.adobe.com/preferences) pour effectuer ces actions.

## Connectez-vous à Experience Cloud {#signin}

Connectez-vous et vérifiez que vous vous trouvez dans la bonne [organisation](organizations.md).

1. Accédez à [Adobe Experience Cloud](https://experience.adobe.com).
1. Sélectionnez **[!UICONTROL Se connecter avec un Adobe ID]**.
1. Vérifiez que vous vous trouvez dans la bonne organisation.

   ![Vérification de votre organisation](assets/organizations-menu.png)

   Pour vérifier que vous vous êtes connecté à votre [organisation](organizations.md) correcte, cliquez sur **[!UICONTROL Profil]** pour afficher le nom de l’organisation. Si vous avez accès à plusieurs organisations, vous pouvez également afficher et passer à une autre organisation à l’aide du sélecteur **[!UICONTROL Organization]** .

   Si votre entreprise utilise des Federated ID, Experience Cloud vous permet de vous connecter à l’aide de l’authentification unique de votre entreprise sans avoir à saisir votre adresse e-mail et votre mot de passe. Ajoutez `#/sso:@domain` à l’URL d’Experience Cloud (`https://experience.adobe.com`) pour accomplir cette tâche.

   Par exemple, pour une organisation avec des Federated ID et le domaine `adobecustomer.com`, définissez votre lien URL sur `https://experience.adobe.com/#/sso:@adobecustomer.com`. Vous pouvez également accéder directement à une application spécifique en marquant cette URL avec le chemin de l’application. (Par exemple, pour Adobe Analytics, `https://experience.adobe.com/#/sso:@adobecustomer.com/analytics`.)

## Accès aux applications Experience Cloud {#navigation}

Une fois connecté à Experience Cloud, vous pouvez accéder rapidement à l’ensemble de vos applications, services et organisations à partir de l’en-tête unifié.

Sélectionnez le sélecteur d’applications ![menu](assets/menu-icon.png) pour accéder aux services Experience Cloud que vous détenez.

![Accès aux applications Experience Cloud](assets/platform-core-services.png)

## Recherche et assistance dans Experience Cloud {#search-support}

La recherche Experience Cloud vous permet de rechercher de l’aide (documentation, tutoriels et cours) sur [Experience League](https://experienceleague.adobe.com/?lang=fr#home).

![Recherche et assistance dans Experience Cloud](assets/search-menu.png)

Le menu [!UICONTROL Aide] vous donne également accès aux éléments suivants :

* **[!UICONTROL Support] :** créez un ticket d’assistance ou contactez l’[!UICONTROL assistance] technique à l’aide de Twitter.
* **[!UICONTROL Commentaires] :** contactez Adobe à l’aide des Commentaires et faites-nous savoir ce que vous pensez.
* **[!UICONTROL Statut] :** accédez à `https://status.adobe.com/experience_cloud` et vérifiez le statut opérationnel du produit et [!UICONTROL gérez les abonnements].
* **[!UICONTROL Developer Connection] :** navigation vers `adobe.io` et recherche de la documentation destinée aux développeurs.

## Préférences de compte {#account-menu}

Dans le menu des préférences du compte, vous pouvez :

* Spécifier un thème sombre (toutes les applications ne prennent pas en charge ce thème) ;
* Rechercher des [Organisations](organizations.md) ;
* Vous déconnecter ;
* Configurer des [préférences, notifications et abonnements](#preferences) relatives au compte ;

### Gérer les [!UICONTROL préférences] Experience Cloud {#preferences}

Les préférences Experience Cloud incluent les notifications, les abonnements et les alertes.

Sélectionnez **[!UICONTROL Préférences]** dans le menu de votre compte ![Préférences](assets/preferences-icon-sm.png) pour gérer les préférences.

![Gestion dʼExperience Cloud](assets/preferences-page.png)

Dans [!UICONTROL Préférences Experience Cloud], vous pouvez configurer les fonctionnalités suivantes :

| Fonctionnalité | Description |
|--- |--- |
| [Organisation](organizations.md) par défaut | Sélectionnez l’organisation que vous souhaitez voir lorsque vous lancez Experience Cloud. |
| [!UICONTROL Abonnements] | Sélectionnez les produits et catégories auxquels vous souhaitez vous abonner. Notifications dans la fenêtre contextuelle [!UICONTROL Notifications] et sur votre adresse e-mail. |
| [!UICONTROL Priorité] | Sélectionnez les catégories qui doivent être considérées comme prioritaires. Ces catégories sont marquées d’une balise Élevée et peuvent être configurées pour une diffusion telle que des alertes. |
| [!UICONTROL Alertes] | Sélectionnez les notifications pour lesquelles vous souhaitez afficher les alertes dans votre navigateur. Les alertes s’affichent dans le coin supérieur droit de la fenêtre pendant quelques secondes. |
| E-mails | Indiquez la fréquence à laquelle vous souhaitez recevoir les e-mails de notification. (Non envoyé, instantané, quotidien ou hebdomadaire.) |

{style="table-layout:auto"}

## Notifications et annonces {#notifications}

Sélectionnez **[!UICONTROL Notifications]** pour afficher les notifications qui sont importantes pour vous et les annonces dʼAdobe.

![Notifications et annonces](assets/notifications-menu-small.png)

Vous pouvez configurer des notifications dans les [Préférences Experience Cloud](#preferences).
