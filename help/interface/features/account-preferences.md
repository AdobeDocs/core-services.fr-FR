---
title: Préférences et notifications du compte
description: Découvrez les profils d’utilisation, les préférences de compte et les données d’utilisation des produits dans Experience Cloud. Abonnez-vous aux notifications de produits par e-mail et  [!DNL Slack], et configurez des alertes de produits.
solution: Experience Cloud
feature: Account Preferences, Notifications, Alerts
topic: Administration
role: Admin
level: Intermediate
exl-id: 1e34c6b2-a792-41c4-adb7-583de596237f
source-git-commit: c447723f4d6c57bdccad6c4a8996693aec4a56fe
workflow-type: tm+mt
source-wordcount: '788'
ht-degree: 6%

---

# Préférences et notifications du compte

Pour trouver les préférences Experience Cloud, cliquez sur **[!UICONTROL Profile]** ![préférences](../assets/preferences-icon-sm.png) dans l’en-tête, puis cliquez sur **[!UICONTROL Preferences]**.

![préférences](../assets/preferences-navigation.png){width="100" zoomable="yes"}

Sur la page [!UICONTROL Experience Cloud preferences], vous pouvez gérer les fonctionnalités de compte suivantes :

| Fonctionnalité | Description |
|--- |--- |
| [!UICONTROL Profile] | Mettez à jour votre [profil de compte Adobe](https://account.adobe.com/profile). <p>La photo et le nom de votre profil s’affichent lorsque vous vous connectez à Adobe.com, aux produits et services Adobe et sur des sites publics tels que [!DNL Behance]. |
| [!UICONTROL General] | Sélectionnez une [organisation](../administration/organizations.md).<p>Cette organisation est celle utilisée par défaut lorsque vous vous connectez à Experience Cloud. |
| [!UICONTROL Product usage data] | Vous pouvez contrôler les données d’utilisation des produits partagées avec Adobe lors de l’utilisation d’applications Experience Cloud. Il s’agit de données sur la manière dont vous utilisez nos produits, et non du contenu ou des données de votre organisation elle-même. Adobe utilise ces informations pour améliorer ses produits, bénéficier d’une meilleure prise en charge intégrée au produit et personnaliser l’expérience et les communications de nos clients. <p>Pour en savoir plus, voir [Données d’utilisation des produits](#product-usage-data) (sur cette page). |
| [!UICONTROL Notifications] | Configurez comment et quand vous souhaitez recevoir des notifications et des alertes relatives aux produits [notifications](#subscribe-to-notifications-in-experience-cloud) : <ul><li>Sélectionnez les produits auxquels vous souhaitez vous abonner pour recevoir des alertes</li><li>Configurer le type de notification ([!UICONTROL in-app], [!UICONTROL email] ou [Slack](#slack-notifications))</li><li>Indiquez la fréquence à laquelle vous souhaitez recevoir les e-mails de notification. (Non envoyé, instantané, quotidien ou hebdomadaire.)</li><li>Déterminez la priorité de l’alerte. Les alertes in-app s’affichent dans le coin supérieur droit de la fenêtre pendant quelques secondes. Vous pouvez également spécifier si les alertes doivent s’afficher jusqu’à ce que vous les supprimiez.</li></ul> |

## [!UICONTROL Product usage data]

Les données d’utilisation de produit que vous choisissez de partager avec Adobe comprennent les types d’informations suivants sur la manière dont vous utilisez et interagissez avec les applications Adobe :

* Informations sur le navigateur et l’appareil, telles que le modèle de l’appareil et le système d’exploitation, informations sur le logiciel et le matériel, paramètres du navigateur et de l’appareil, identifiants uniques (tels que l’adresse IP, l’ID de cookie ou l’ID d’appareil), quantité de mémoire installée, paramètres de langue et résolution d’écran.
* la façon dont vous interagissez avec les applications Adobe Experience Cloud, y compris les fonctionnalités que vous utilisez et les options que vous sélectionnez ;
* des informations sur les produits Adobe, telles que le numéro de version ;
* des informations sur votre contenu et vos documents, telles que le nombre de pages et les identifiants uniques, mais pas le contenu lui-même ;
* Informations sur l’utilisation du contenu, telles que le nombre de fois où vous accédez au contenu et la manière dont vous interagissez avec votre contenu dans l’application.
* Journaux des plantages et des erreurs.

Adobe utilise ces informations pour améliorer ses produits, vous offrir une assistance sur le produit et par l’intermédiaire de l’assistance clientèle, ainsi que pour personnaliser votre expérience et les communications de notre part. En savoir plus sur les [expériences personnalisées](personalized-learning.md).

## Abonnement aux notifications dans Experience Cloud

Vous pouvez sélectionner les produits et les catégories auxquels vous souhaitez vous abonner. Les notifications apparaissent dans la fenêtre contextuelle [!UICONTROL Notifications] (in-app), dans votre e-mail ou dans [Slack](#slack-notifications) (en fonction de vos abonnements).

Les notifications par e-mail et Slack sont utiles dans les cas où vous n’êtes pas connecté à Experience Cloud.

### Abonnement aux notifications in-app et par e-mail

1. Accédez à Experience Cloud [préférences](https://experience.adobe.com/preferences).

1. Sous **[!UICONTROL Notifications]**, activez **[!UICONTROL In-app]** ou **[!UICONTROL Email]**.

   Les modifications apportées aux notifications sont enregistrées automatiquement.

### Abonnement aux notifications [!DNL Slack]

Vous pouvez configurer les préférences de votre compte pour envoyer des notifications Experience Cloud à un canal [!DNL Slack].

**Conditions préalables**

* Vous devez disposer d’un compte Experience Cloud.
* Vous devez disposer d&#39;un compte [!DNL Slack]. Votre administrateur [!DNL Slack] active l’intégration d’Experience Cloud à [!DNL Slack].
* Vous devez faire partie d’au moins un espace de travail [!DNL Slack].

**Pour vous abonner aux notifications [!DNL Slack]**

1. Accédez à Experience Cloud [Préférences](https://experience.adobe.com/preferences).

1. Localisez [!DNL Slack], puis cliquez sur **[!UICONTROL Add to Slack]**.

   ![Ajouter à Slack](../assets/add-to-slack.png)

   Si [!DNL Slack] est installé, l’application s’ouvre et un message de demande d’autorisation s’affiche. Si Slack n’est pas installé, vous devez [demander l’autorisation](#slack-troubleshoot).

1. Cliquez sur **[!UICONTROL Allow]**.

1. Sous **[!UICONTROL Notifications]**, activez les notifications [!DNL Slack] pour les produits et catégories de votre choix.

   ![Notifications Slack](../assets/slack.png)

   Les mises à jour des notifications sont automatiquement enregistrées.

### Demander l’autorisation dans [!DNL Slack] (dépannage)

Si [!DNL Slack] n’est pas installé, un message de _[!UICONTROL Request to install]_s’affiche lorsque Slack s’ouvre après avoir cliqué sur **[!UICONTROL Add to Slack]**. Par exemple :

![Demander l’intégration Slack](../assets/slack-workspace.png)

**Pour demander des autorisations dans Slack**

1. Dans [!DNL Slack], sélectionnez l’espace de travail dans le menu **[!UICONTROL Workspace]** (coin supérieur droit).

1. Pour demander l’approbation de la demande pour le gestionnaire d’espace de travail [!DNL Slack], cliquez sur **[!UICONTROL Submit]**.

1. Vous recevrez une notification en [!DNL Slack] une fois la demande d’application approuvée.

1. Après avoir reçu [!DNL Slack] approbation, revenez à Experience Cloud **[!UICONTROL Notifications]** et suivez les étapes pour [vous abonner à Slack](#slack-notifications) (décrites ci-dessus).

### Ce que vous verrez dans [!DNL Slack]

Une fois l’intégration de [!DNL Slack] terminée, les notifications [!DNL Slack] affichent les informations suivantes :

* Le message personnel sera reçu du nom de l&#39;application _Adobe[!DNL Experience Cloud]_.
* Le message inclut le logo du produit pour l’application particulière, telle que Adobe [!DNL Experience Platform], Adobe [!DNL Experience Manager], etc.
* Un lien pour afficher toutes les notifications sur Experience Cloud.
* Lien permettant de gérer les préférences de notification sur Experience Cloud.

## Affichage des [!UICONTROL notifications] et des annonces dans Experience Cloud

Dans l’en-tête du [!DNL Experience Cloud], vous pouvez afficher les notifications auxquelles vous [vous êtes abonné](#notifications), ainsi que les annonces.

1. Cliquez sur l’icône représentant une cloche dans l’en-tête. ![Notifications et annonces](../assets/bell-icon.png)

1. Cliquez sur **[!UICONTROL Notifications]** ou sur **[!UICONTROL Announcements]**.

   C’est là que vous recevez des informations importantes sur les produits, votre collaboration avec d’autres utilisateurs et d’autres mises à jour pertinentes. Les mises à jour comprennent les mises à jour de produits, les avis de maintenance, les éléments partagés et les demandes d’approbation.
