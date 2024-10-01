---
description: Découvrez les composants de l’interface centrale d’Experience Cloud. Obtenez de l’aide sur l’administration des utilisateurs et utilisatrices et des produits dans Admin Console et activez les applications pour les services Experience Cloud. Obtenez de l’aide sur la bibliothèque d’audiences, les attributs du client ou de la cliente, Experience Cloud Assets, etc.
title: Documentation de l’interface d’Experience Cloud
uuid: aec6f689-e617-4876-ae6c-e961cfcb991a
feature: Central Interface Components
topic: Administration
role: Admin
level: Experienced
exl-id: aedad5cb-3282-4a97-8e7e-6d65f7b75ba9
source-git-commit: 5df8104d3d148cc7bda823b27bf96429ddb6018d
workflow-type: tm+mt
source-wordcount: '790'
ht-degree: 80%

---

# Vue d’ensemble de lʼinterface centrale dʼExperience Cloud

[Experience Cloud](https://experience.adobe.com) désigne la famille intégrée d’applications, de produits et de services de marketing numérique d’Adobe. Grâce à son interface intuitive, vous pouvez accéder rapidement à vos applications cloud, fonctionnalités de produit et services.

![Experience Cloud](assets/landing.png)

Dans l’en-tête d’Experience Cloud, vous pouvez :

* Accès à tous les services et applications Experience Cloud
* Dans le menu Aide, recherchez la documentation du produit, des tutoriels et des publications de la communauté. Affichez les résultats dans Experience League.
* Effectuez une recherche globale d’objets métier dans le champ de recherche (pour les utilisateurs et utilisatrices d’Experience Platform uniquement).
* Gérer les [préférences](features/account-preferences.md) de votre compte (alertes, notifications et abonnements)

## Connectez-vous à Experience Cloud {#signin}

Connectez-vous et vérifiez que vous vous trouvez dans la bonne [organisation](administration/organizations.md).

1. Accédez à [Adobe Experience Cloud](https://experience.adobe.com).
1. Saisissez votre adresse e-mail Adobe, puis sélectionnez **[!UICONTROL Continuer]**.
1. Sélectionnez un compte.
1. Saisissez votre mot de passe.
1. Assurez-vous que vous êtes dans la bonne organisation.

   ![Vérification que vous vous trouvez dans la bonne organisation](assets/organizations-menu.png)

   **Vérification de votre organisation**

   L’ [organisation](administration/organizations.md) s’affiche dans l’en-tête de l’interface.

   Si votre entreprise utilise des Federated ID, Experience Cloud vous permet de vous connecter à l’aide de l’authentification unique de votre entreprise sans avoir à saisir votre adresse e-mail et votre mot de passe. Ajoutez `#/sso:@domain` à l’URL d’Experience Cloud (`https://experience.adobe.com`) pour accomplir cette tâche.

   Par exemple, pour une organisation avec des Federated ID et le domaine `adobecustomer.com`, définissez votre lien URL sur `https://experience.adobe.com/#/sso:@adobecustomer.com`. Vous pouvez également accéder directement à une application spécifique en marquant cette URL avec le chemin de l’application. (Par exemple, pour Adobe Analytics, `https://experience.adobe.com/#/sso:@adobecustomer.com/analytics`.)

## Accès aux applications Experience Cloud {#navigation}

Une fois connecté à Experience Cloud, vous pouvez accéder rapidement à l’ensemble de vos applications, services et organisations à partir de l’en-tête unifié.

Pour accéder aux applications et services Experience Cloud configurés pour vous au sein de votre entreprise, accédez au ![menu](assets/menu-icon.png) du sélecteur dʼapplications.

![Accès aux applications Experience Cloud](assets/platform-core-services.png)

## Obtention d’aide et de support {#support}

Accédez à l’apprentissage et à l’aide en utilisant le **[!UICONTROL centre d’aide]** (![ressource](assets/help-icon.png)) dans l’en-tête, y compris le contenu d’aide (documentation, tutoriels et cours) sur [Experience League](https://experienceleague.adobe.com/?lang=fr#home), ainsi que des ressources supplémentaires pour des applications individuelles. Vous pouvez également envoyer des commentaires ouverts et créer des tickets dʼassistance prioritaires.

![Obtention dʼaide et de support](assets/search-menu.png)

Le menu [!UICONTROL Aide] vous donne également accès aux éléments suivants :

* **[!UICONTROL Support] :** créez un ticket d’assistance ou contactez l’[!UICONTROL assistance] technique à l’aide de Twitter.
* **[!UICONTROL Commentaires] :** partagez vos commentaires au sujet de votre expérience relative à Experience Cloud. Vos commentaires sont utilisés pour améliorer les produits et services d’Adobe.
* **[!UICONTROL Statut] :** accédez à `https://status.adobe.com/experience_cloud` et vérifiez le statut opérationnel du produit et [!UICONTROL gérez les abonnements].
* **[!UICONTROL Developer Connection] :** navigation vers `adobe.io` et recherche de la documentation destinée aux développeurs.

## Gestion de votre profil utilisateur

Dans le menu [!UICONTROL Profile], vous pouvez :

* Spécifier un thème sombre (toutes les applications ne prennent pas en charge ce thème) ;
* Gérer les [préférences](features/account-preferences.md) Experience Cloud
* Sélectionnez ou recherchez une [organisation](administration/organizations.md)
* Afficher [!UICONTROL Informations juridiques]
* Vous déconnecter ;
* Configurer des préférences, notifications et abonnements relatives au compte ;

## Affichage des notifications et des annonces dans le produit {#notifications}

Cliquez sur l’icône représentant une cloche pour afficher les notifications et les annonces. Les annonces peuvent être des mises à jour pertinentes et exploitables, notamment des mises à jour de produits, des avis de maintenance, des articles partagés et des demandes d’approbation.

![Notifications et annonces](assets/notifications-menu-small.png)

Pour gérer les notifications et les alertes, voir [ Préférences de compte et notifications](features/account-preferences.md)


## Nouveautés

Découvrez les dernières améliorations apportées aux composants de l’interface centrale d’Experience Cloud.

>[!BEGINTABS]

>[!TAB Intégration de Slack avec Experience Cloud]

Vous pouvez configurer vos préférences de compte pour envoyer des notifications Experience Cloud à un canal [!DNL Slack].

[!BADGE Version bêta]{type=Informative url="https://experienceleague.adobe.com/en/docs/core-services/interface/features/account-preferences#notifications" tooltip="En savoir plus sur Slack"}


>[!TAB Nouvelle interface utilisateur web de Campaign]

Découvrez la nouvelle interface utilisateur d’Adobe Campaign. Plus moderne, intuitive et dynamique.

[![Image](assets/do-not-localize/learn-more-button.svg)](start/campaign-ui.md#ac-web-ui)


>[!TAB Modifications à venir du canal de notifications push]

Certaines modifications importantes apportées au service Android FCM (Firebase Cloud Messaging) seront publiées en 2024 et pourront avoir une incidence sur votre mise en œuvre d’Adobe Campaign. Il se peut que la configuration de vos services d’abonnement pour les notifications push Android doive être mise à jour pour prendre en charge cette modification. Vous pouvez déjà vérifier et agir.

[![image](assets/do-not-localize/learn-more-button.svg)](../technotes/upgrades/push-technote.md)



>[!ENDTABS]

## Commencer avec les principes de base

<table style="table-layout:fixed">
  <tr style="border: 0;">
    <td>
    <a href="start/whats-new.md"><img src="assets/do-not-localize/start-capabilities.png"></a>
    <div><strong>Fonctionnalités clés</strong><br/> Découvrez les principales fonctionnalités d’Adobe Campaign v8 pour la gestion de campagnes cross-canal.</div>
    </td>
    <td>
    <a href="start/connect.md"><img src="assets/do-not-localize/start-connect.jpeg"></a>
    <div><strong>Se connecter à Campaign v8</strong><br/> Découvrez comment vous connecter à Adobe Campaign v8 et démarrer votre parcours de gestion de campagne en installant et en configurant la console cliente.</div><br/>
    </td>
    <td>
    <a href="start/create-message.md"><img src="assets/do-not-localize/start-send.jpeg"></a>
    <div><strong>Envoyer des messages</strong><br/> Découvrez comment envoyer des messages sur différents canaux tels que des e-mails, des SMS, des notifications push, etc.
    </div></td>
    <td>
    <a href="audiences/create-profiles.md"><img src="assets/do-not-localize/start-profiles.png"></a>
    <div><strong>Importer des profils</strong><br/> Explorez avec facilité la création de profils dans la base de données Adobe Campaign v8. Ajoutez des profils manuellement ou en les important, affinez les données client et personnalisez les campagnes en un tour de main.</div>
    </td>
  </tr>
  <tr style="border: 0;">
    <td align="center"><a href="start/whats-new.md"><img src="assets/do-not-localize/learn-more-button.svg"></a></td>
    <td align="center"><a href="start/connect.md"><img src="assets/do-not-localize/learn-more-button.svg"></a></td>
    <td align="center"><a href="start/create-message.md"><img src="assets/do-not-localize/learn-more-button.svg"></a></td>
    <td align="center"><a href="audiences/create-profiles.md"><img src="assets/do-not-localize/learn-more-button.svg"></a></td>
    </tr>
</table>

## Explorer la documentation

<table style="table-layout:auto">
  <tr style="border: 0;">
    <td>
      <img src="assets/do-not-localize/icon-start.svg" width="35px">
    <br/>
      <strong>Prise en main</strong><br/> <a href="start/campaign-ui.md">Interface utilisateur</a> – <a href="start/ac-components.md">Composants et processus</a> – <a href="start/v7-to-v8.md">De Classic v7 à v8</a> – <a href="start/campaign-faq.md">FAQ</a>
    </td>
    <td>
      <img src="assets/do-not-localize/icon-experience.svg" width="35px">
    <br/>
      <strong>Expérience du client ou de la cliente</strong><br/> <a href="../automation/workflow/about-workflows.md" target="_blank">Automatiser avec des workflows</a> – <a href="../automation/campaigns/set-up-campaigns.md" target="_blank">Orchestration des campagnes</a> – <a href="interaction/interaction.md">Gestion des décisions</a> – <a href="send/personalize.md">Personnalisation</a>
    </td>
    <td>
      <img src="assets/do-not-localize/icon-send.svg" width="35px">
    <br/>
      <strong>Envoyer des messages</strong><br/> <a href="start/create-message.md">Prise en main</a> – <a href="send/preview-and-proof.md">Aperçu et BAT</a> – <a href="send/predictive.md">Optimisation de l’heure d’envoi</a> – <a href="reporting/gs-reporting.md">Rapports et analyses</a>
    </td>
  </tr>
  <tr style="border: 0;">
    <td>
      <img src="assets/do-not-localize/icon_profile-audience.svg" width="35px">
    <br/>
      <strong>Profils et audiences</strong><br/> <a href="audiences/create-profiles.md">Ajouter des profils</a> – <a href="audiences/create-audiences.md">Créer des audiences</a> – <a href="start/subscriptions.md">Gérer des abonnements</a> – <a href="start/privacy.md">Confidentialité</a>
    </td>
    <td>
      <img src="assets/do-not-localize/icon-configure.svg" width="35px">
    <br/>
      <strong>Architecture et configuration</strong><br/> <a href="architecture/architecture.md">Architecture</a> – <a href="start/implement.md">Implémentation de Campaign v8</a> – <a href="connect/integration.md">Connexion à d’autres solutions</a> – <a href="start/gs-permissions.md">Utilisateurs, utilisatrices et autorisations</a>
    </td>
    <td>
      <img src="assets/do-not-localize/icon-dev.svg" width="35px">
    <br/>
      <strong>Ressources du développeur</strong><br/><a href="dev/datamodel.md">Modèle de données Campaign v8</a> - <a href="dev/schemas.md">Schémas</a> - <a href="dev/api.md">API</a>
    </td>
  </tr>
</table>

## Ressources supplémentaires

[Description du produit Adobe Campaign v8](https://helpx.adobe.com/fr/legal/product-descriptions/adobe-campaign-managed-cloud-services.html){target="_blank"} - [Documentation de l’interface d’utilisation d’Adobe Campaign Web](https://experienceleague.adobe.com/docs/campaign-web/v8/campaign-web-home.html?lang=fr){target="_blank"} - [Tutoriels](https://experienceleague.adobe.com/docs/campaign-learn/tutorials/overview.html?lang=fr){target="_blank"} - Guide d’automatisation [[!DNL Adobe Campaign] ](https://experienceleague.adobe.com/docs/campaign/automation/home.html?lang=fr){target="_blank"} - [Panneau de Contrôle de Campaign v8](https://experienceleague.adobe.com/docs/control-panel/using/discover-control-panel/key-features.html?lang=fr){target="_blank"}

