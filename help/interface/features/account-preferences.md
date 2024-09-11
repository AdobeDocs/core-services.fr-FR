---
title: Préférences et notifications de compte
description: Découvrez les profils utilisateur et les préférences de compte dans Experience Cloud. Abonnez-vous aux notifications de produit pour les emails et  [!DNL Slack], et configurez des alertes de produit.
solution: Experience Cloud
feature: Account Preferences, Notifications, Alerts
topic: Administration
role: Admin
level: Intermediate
exl-id: 1e34c6b2-a792-41c4-adb7-583de596237f
source-git-commit: 0b2cae6b7aec7e91ac4b46de4d844dd2269095a9
workflow-type: tm+mt
source-wordcount: '664'
ht-degree: 22%

---

# Préférences de compte et notifications {#preferences}

Les [préférences](https://experience.adobe.com/preferences) de l&#39;Experience Cloud incluent des notifications (in-app, email et [!DNL Slack]), des abonnements et des alertes.

Dans les préférences, vous pouvez :

* Rechercher des [Organisations](../administration/organizations.md) ;
* Spécifiez un thème sombre (toutes les applications ne prennent pas en charge ce thème).
* Configurez les préférences, notifications et abonnements du compte pour les utilisateurs.
* Déconnectez-vous d’Experience Cloud.

## Gestion des préférences

Pour gérer les préférences, sélectionnez **[!UICONTROL Préférences]** dans les ![Préférences](../assets/preferences-icon-sm.png) du menu de votre compte.

Dans [!UICONTROL Préférences Experience Cloud], vous pouvez configurer les fonctionnalités suivantes :

| Fonctionnalité | Description |
|--- |--- |
| [Organisation](../administration/organizations.md) par défaut | Sélectionnez l’organisation que vous souhaitez voir lorsque vous lancez Experience Cloud. |
| [!UICONTROL Collecte de données de produit] | Sélectionnez les technologies qu’Adobe peut utiliser pour collecter des données sur la manière dont vous utilisez vos produits Adobe. |
| [Notifications](#notifications-and-announcements) | Activez les notifications [!UICONTROL in-app], [!UICONTROL email] ou [Slack](#slack-notifications). |
| [!UICONTROL Promotions et recommandations d’apprentissage personnalisées] | Sélectionnez l’emplacement où vous souhaitez recevoir [une aide personnalisée](personalized-learning.md) pour vos produits d’Adobe. Cette aide est disponible par courrier électronique, dans le produit et dans les communautés Experience League. |
| [!UICONTROL Abonnements] | Sélectionnez les produits et catégories auxquels vous souhaitez vous abonner. Notifications dans la fenêtre contextuelle [!UICONTROL Notifications] et dans votre email. |
| [!UICONTROL Priorité] | Sélectionnez les catégories qui doivent être considérées comme prioritaires. Ces catégories sont marquées d’une balise [!UICONTROL High] et peuvent être configurées pour une diffusion telle que des alertes. |
| [!UICONTROL Alertes] | Sélectionnez les notifications pour lesquelles vous souhaitez afficher les alertes dans votre navigateur. Les alertes s’affichent dans le coin supérieur droit de la fenêtre pendant quelques secondes. |
| E-mails | Indiquez la fréquence à laquelle vous souhaitez recevoir les e-mails de notification. (Non envoyé, instantané, quotidien ou hebdomadaire.) |

## Abonnement aux notifications dans Experience Cloud {#notifications}

Vous pouvez sélectionner les produits et catégories auxquels vous souhaitez vous abonner. Les notifications apparaissent dans la fenêtre contextuelle [!UICONTROL  Notifications] (in-app), dans votre email, ou dans [Slack](#slack-notifications) (selon vos abonnements).

Les notifications par courrier électronique et Slack sont utiles lorsque vous n’êtes pas connecté à Experience Cloud.

### Abonnement aux notifications in-app et par e-mail

1. Accédez à l’Experience Cloud [preferences](https://experience.adobe.com/preferences).

1. Sous **[!UICONTROL Notifications]**, activez **[!UICONTROL In-app]** ou **[!UICONTROL Email]**.

   Les modifications apportées aux notifications sont enregistrées automatiquement.

### Abonnez-vous aux notifications [!DNL Slack] {#slack}

Vous pouvez configurer vos préférences de compte pour envoyer des notifications Experience Cloud à un canal [!DNL Slack].

**Conditions préalables**

* Vous devez avoir un compte Experience Cloud.
* Vous devez avoir un compte [!DNL Slack]. Votre administrateur [!DNL Slack] active l&#39;intégration de l&#39;Experience Cloud avec [!DNL Slack].
* Vous devez faire partie d’au moins un espace de travail [!DNL Slack].

**Pour vous abonner aux [!DNL Slack] notifications**

1. Accédez à l’Experience Cloud [Preferences](https://experience.adobe.com/preferences).

1. Recherchez [!DNL Slack], puis cliquez sur **[!UICONTROL Ajouter au Slack]**.

   ![Ajouter au Slack](../assets/add-to-slack.png)

   Si [!DNL Slack] est installé, l’application s’ouvre et un message de demande d’autorisation s’affiche. Si Slack n&#39;est pas installé, vous devez [demander l&#39;autorisation](#slack-troubleshoot).

1. Cliquez sur **[!UICONTROL Autoriser]**.

1. Sous **[!UICONTROL Notifications]**, activez les [!DNL Slack] notifications pour les produits et catégories de votre choix.

   ![Notifications de Slack](../assets/slack.png)

   Les mises à jour des notifications sont automatiquement enregistrées.

### Demande d’autorisation dans [!DNL Slack] (dépannage) {#slack-troubleshoot}

Si [!DNL Slack] n&#39;est pas installé, un message _[!UICONTROL Demande d&#39;installation]_ s&#39;affiche lorsque le Slack s&#39;ouvre après avoir cliqué sur **[!UICONTROL Ajouter au Slack]**. Par exemple :

![Intégration de Slack de demandes](../assets/slack-workspace.png)

**Pour demander des autorisations en Slack**

1. Dans [!DNL Slack], sélectionnez l’espace de travail dans le menu **[!UICONTROL Workspace]** (coin supérieur droit).

1. Pour demander l’approbation de la demande pour le gestionnaire d’espace de travail [!DNL Slack], cliquez sur **[!UICONTROL Submit]**.

1. Vous recevrez une notification dans [!DNL Slack] après l’approbation de la demande d’application.

1. Une fois que vous avez reçu l’approbation [!DNL Slack], revenez à l’Experience Cloud **[!UICONTROL Notifications]** et suivez les étapes pour [vous abonner à Slack](#slack-notifications) (décrites ci-dessus).

### Ce que vous verrez dans [!DNL Slack]

Après l’intégration réussie de [!DNL Slack], les notifications [!DNL Slack] affichent les informations suivantes :

* Le message personnel sera reçu à partir du nom de l&#39;application _Adobe[!DNL Experience Cloud]_.
* Le message inclut le logo du produit pour l’application spécifique, tel que l’Adobe [!DNL Experience Platform], l’Adobe [!DNL Experience Manager], etc.
* Lien permettant d’afficher toutes les notifications sur Experience Cloud.
* Lien permettant de gérer les préférences de notification sur Experience Cloud.

## Afficher des [!UICONTROL notifications] et des annonces dans Experience Cloud {#view-notifications}

Dans l’en-tête [!DNL Experience Cloud], vous pouvez afficher les notifications auxquelles vous êtes [abonné](#notifications), ainsi que les annonces.

1. Cliquez sur l’icône représentant une cloche dans l’en-tête . ![Notifications et annonces](../assets/bell-icon.png)

1. Cliquez sur **[!UICONTROL Notifications]** ou **[!UICONTROL Annonces]**.

   Cet emplacement vous permet de recevoir des informations importantes sur les produits, votre collaboration avec d’autres utilisateurs et d’autres mises à jour pertinentes. Les mises à jour comprennent les versions de produit, les avis de maintenance, les éléments partagés et les demandes d’approbation.
