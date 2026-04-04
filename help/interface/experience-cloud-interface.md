---
description: Découvrez comment vous connecter et les composants de lʼinterface centrale dʼExperience Cloud. Découvrez la recherche globale, les préférences de votre compte, comment naviguer dans lʼinterface et obtenir de lʼaide.
solution: Experience Cloud
title: Composants de l’interface utilisateur centrale dʼExperience Cloud
feature: Central Interface Components
topic: Administration
role: Admin, User
level: Beginner, Intermediate, Experienced
source-git-commit: 0ce4fa63a4babc195f89c595009adcf19f34cdd9
workflow-type: tm+mt
source-wordcount: '698'
ht-degree: 78%

---

# Composants de l’interface centrale d’Experience Cloud

Les composants de l’interface centrale d’Experience Cloud incluent des fonctionnalités qui vous permettent d’effectuer les opérations suivantes :

* Connexion et accès à vos applications et services
* Recherche d’objets commerciaux et d’aide sur un produit à l’aide d’une recherche globale
* Gestion des préférences du compte (alertes, notifications et abonnements)

## Prise en charge des navigateurs dans Experience Cloud

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

## Prise en charge linguistique dans Experience Cloud

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

## Connectez-vous à Experience Cloud

Connectez-vous et vérifiez que vous vous trouvez dans la bonne organisation.

1. Accédez à [Adobe Experience Cloud](https://experience.adobe.com?lang=fr).
1. Cliquez sur **[!UICONTROL Sign in with an Adobe ID]**.
1. Vérifiez que vous vous trouvez dans la bonne organisation.

   ![Vérification de votre organisation](assets/organizations-menu.png)

   Pour vérifier que vous vous êtes connecté à l’organisation appropriée, cliquez sur **[!UICONTROL Profile]** pour afficher le nom de l’organisation. Si vous avez accès à plusieurs organisations, vous pouvez également afficher une autre organisation et passer à une autre à l’aide du sélecteur de **[!UICONTROL Organization]**.

   Si votre entreprise utilise des Federated ID, Experience Cloud vous permet de vous connecter à l’aide de l’authentification unique de votre entreprise sans avoir à saisir votre adresse e-mail et votre mot de passe. Ajoutez `#/sso:@domain` à l’URL d’Experience Cloud (`https://experience.adobe.com`) pour accomplir cette tâche.

   Par exemple, pour une organisation avec des Federated ID et le domaine `example.com`, définissez votre lien URL sur `https://experience.adobe.com/#/sso:@example.com`. Vous pouvez également accéder directement à une application spécifique en marquant cette URL avec le chemin de l’application. (Par exemple, pour Adobe Analytics, `https://experience.adobe.com/#/sso:@example.com/analytics`.)

## Accès aux applications Experience Cloud

Une fois connecté à Experience Cloud, vous pouvez accéder rapidement à l’ensemble de vos applications, services et organisations à partir de l’en-tête unifié.

Cliquez sur le sélecteur d’applications ![menu](assets/menu-icon.png) pour accéder aux services Experience Cloud que vous détenez.

![Accès aux applications Experience Cloud](assets/platform-core-services.png)

## Recherche et assistance dans Experience Cloud

La recherche Experience Cloud vous permet de rechercher de l’aide (documentation, tutoriels et cours) sur [Experience League](https://experienceleague.adobe.com/fr?lang=fr#home).

![Recherche et assistance dans Experience Cloud](assets/search-menu.png)

Le menu [!UICONTROL Help] permet également d&#39;accéder aux éléments suivants :

* **[!UICONTROL Support]:** Créez un ticket d’assistance ou contactez [!UICONTROL Support] à l’aide de Twitter.
* **[!UICONTROL Feedback]:** Contactez Adobe à l’aide des Commentaires et faites-nous savoir ce que vous en pensez.
* **[!UICONTROL Status]:** accédez à `https://status.adobe.com/fr-fr/experience_cloud` et vérifiez l’état opérationnel et la [!UICONTROL Manage Subscriptions] du produit.
* **[!UICONTROL Developer Connection]:** Navigation pour `adobe.io` et rechercher la documentation destinée aux développeurs.

## Préférences de compte

Dans le menu des préférences du compte, vous pouvez :

* Spécifier un thème sombre (toutes les applications ne prennent pas en charge ce thème) ;
* Rechercher des organisations
* Vous déconnecter ;
* Configurer des [préférences, notifications et abonnements](#preferences) relatives au compte ;

### Gestion des [!UICONTROL Preferences] Experience Cloud

Les préférences Experience Cloud incluent les notifications, les abonnements et les alertes.

* Cliquez sur **[!UICONTROL Preferences]** dans le menu de votre compte ![préférences](assets/preferences-icon-sm.png) pour gérer les préférences.

![Gestion dʼExperience Cloud](assets/preferences-page.png)

Sur [!UICONTROL Experience Cloud preferences], vous pouvez configurer les fonctionnalités suivantes :

| Fonctionnalité | Description |
| --- | --- |
| Organisation par défaut | Sélectionnez l’organisation que vous souhaitez voir lorsque vous lancez Experience Cloud. |
| [!UICONTROL Subscriptions] | Sélectionnez les produits et catégories auxquels vous souhaitez vous abonner. Notifications dans la fenêtre contextuelle [!UICONTROL Notifications] et dans votre e-mail. |
| [!UICONTROL Priority] | Sélectionnez les catégories qui doivent être considérées comme prioritaires. Ces catégories sont marquées d’une balise Élevée et peuvent être configurées pour une diffusion telle que des alertes. |
| [!UICONTROL Alerts] | Sélectionnez les notifications pour lesquelles vous souhaitez afficher les alertes dans votre navigateur. Les alertes s’affichent dans le coin supérieur droit de la fenêtre pendant quelques secondes. |
| E-mails | Indiquez la fréquence à laquelle vous souhaitez recevoir les e-mails de notification. (Non envoyé, instantané, quotidien ou hebdomadaire.) |

{style="table-layout:auto"}

## Notifications et annonces

Cliquez sur **[!UICONTROL Notifications]** pour afficher les notifications qui sont importantes pour vous et les annonces d’Adobe.

![Notifications et annonces](assets/notifications-menu-small.png)

Vous pouvez configurer des notifications dans les [Préférences Experience Cloud](#preferences).
