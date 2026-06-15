---
description: Découvrez CX Enterprise (anciennement Experience Cloud). Couvre la connexion, la navigation, la recherche, les préférences, l’administration et les services partagés tels que la bibliothèque d’audiences, les attributs du client et Assets.
title: Guide d’interface et d’administration pour l’entreprise CX
uuid: aec6f689-e617-4876-ae6c-e961cfcb991a
feature: Central Interface Components
topic: Administration
role: Admin
level: Experienced
exl-id: aedad5cb-3282-4a97-8e7e-6d65f7b75ba9
TQID: https://experienceleague.adobe.com/7vFfu0DyoTnsrlrWVApm0LLW4jsC0LoXb55jJ3jdxeY
product_v2:
  - id: e1971122-7081-4556-9222-8a31bd71800c
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2:
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 25446910430bf15dcfa0fc70e25e0681f9faeb95
workflow-type: tm+mt
source-wordcount: 563
ht-degree: 44%

---

# Interface et guide d’administration d’Adobe CX Enterprise

[Adobe CX Enterprise](https://experience.adobe.com?lang=fr) (Customer Experience Enterprise) désigne la famille intégrée d’applications, de produits et de services de marketing numérique d’Adobe. Grâce à son interface intuitive, vous pouvez accéder rapidement à vos applications cloud, fonctionnalités de produit et services.

<!-- ![CX Enterprise](assets/landing.png) -->

À partir de l’en-tête CX Enterprise, vous pouvez :

* Accès à tous vos services et applications CX Enterprise
* Dans le menu Aide, recherchez la documentation du produit, des tutoriels et des publications de la communauté. Affichez les résultats dans Experience League.
* Effectuez une recherche globale d’objets métier dans le champ de recherche (pour les utilisateurs et utilisatrices d’Experience Platform uniquement).
* Gérer les [préférences](features/account-preferences.md) du compte (alertes, notifications et abonnements)

## Se connecter à CX Enterprise

Connectez-vous et vérifiez que vous vous trouvez dans la bonne [organisation](administration/organizations.md).

1. Accédez à [Adobe CX Enterprise](https://experience.adobe.com?lang=fr).
1. Saisissez votre adresse e-mail Adobe, puis cliquez sur **[!UICONTROL Continuer]**.
1. Cliquez sur un compte.
1. Saisissez votre mot de passe.
1. Assurez-vous que vous êtes dans la bonne organisation.

   ![Vérification que vous vous trouvez dans la bonne organisation](assets/organizations-menu.png)

   **Vérification de votre organisation**

   L’ [organisation](administration/organizations.md) s’affiche dans l’en-tête de l’interface.

   Si votre entreprise utilise des Federated ID, CX Enterprise vous permet de vous connecter à l’aide de l’authentification unique de votre entreprise sans avoir à saisir votre adresse e-mail et votre mot de passe. Ajoutez `#/sso:@domain` à l&#39;URL d&#39;entreprise CX (`https://experience.adobe.com`) pour accomplir cette tâche.

   Par exemple, pour une organisation avec des Federated ID et le domaine `example.com`, définissez votre lien URL sur `https://experience.adobe.com/#/sso:@example.com`. Vous pouvez également accéder directement à une application spécifique en marquant cette URL avec le chemin de l’application. (Par exemple, pour Adobe Analytics, `https://experience.adobe.com/#/sso:@example.com/analytics`.)

   **Remarque :** l’administrateur ou l’administratrice de votre organisation peut restreindre l’accès aux produits Adobe par adresses IP. Si tel est le cas, vous pouvez recevoir une erreur après vous être connecté à CX Enterprise ou après avoir basculé vers une organisation avec cette option activée. Pour plus d’informations, consultez la section [Limiter l’accès au produit par adresse IP](https://helpx.adobe.com/fr/enterprise/using/ip-based-access.html).


## Accès aux applications CX Enterprise

Après vous être connecté à CX Enterprise, vous pouvez accéder rapidement à l’ensemble de vos applications, services et organisations à partir de l’en-tête unifié.

Pour accéder aux applications et services CX Enterprise configurés pour vous au sein de votre organisation, accédez au sélecteur d&#39;applications ![menu](assets/apps-icon.png).

![Accès aux applications CX Enterprise](assets/platform-core-services.png)

## Obtention d’aide et de support

Accédez à l’apprentissage et à l’aide à l’aide du **[!UICONTROL Centre d’aide]** (![ressource](assets/help-icon.png)) dans l’en-tête, y compris le contenu de l’aide (documentation, tutoriels et cours) sur [Experience League](https://experienceleague.adobe.com/fr?lang=fr#home), ainsi que des ressources supplémentaires pour des applications individuelles. Vous pouvez également envoyer des commentaires ouverts et créer des tickets dʼassistance prioritaires.

![Obtention dʼaide et de support](assets/search-menu.png)

Le menu [!UICONTROL Aide] vous donne également accès aux éléments suivants :

* **[!UICONTROL Assistance] :** créez un ticket d’assistance ou contactez l’[!UICONTROL assistance] sur Twitter.
* **[!UICONTROL Commentaires] :** partagez vos commentaires au sujet de votre expérience CX Entreprise. Vos commentaires sont utilisés pour améliorer les produits et services d’Adobe.
* **[!UICONTROL Statut] :** accédez à `https://status.adobe.com/fr-fr/experience_cloud` et vérifiez le statut opérationnel du produit et [!UICONTROL Gérer les abonnements].
* **:** Navigation vers `adobe.io` et trouver la documentation destinée aux développeurs.

## Gérer votre profil d’utilisation

Dans le menu [!UICONTROL Profil], vous pouvez effectuer les opérations suivantes :

* Spécifier un thème sombre (toutes les applications ne prennent pas en charge ce thème).
* Gérer CX Enterprise [Préférences](features/account-preferences.md)
* Sélectionner ou rechercher une [organisation](administration/organizations.md)
* Afficher [!UICONTROL Mentions légales]
* Se déconnecter
* Configurer des préférences, notifications et abonnements relatives au compte ;

## Afficher des notifications et des annonces dans le produit

Cliquez sur l’icône représentant une cloche pour afficher les notifications et les annonces. Les annonces peuvent être pertinentes et exploitables. Cela inclut notamment les mises à jour de produits, les avis de maintenance, les éléments partagés et les demandes d’approbation.

![Notifications et annonces](assets/notifications-menu-small.png)

Pour gérer les notifications et les alertes, voir la section [Préférences de compte et notifications](features/account-preferences.md).


