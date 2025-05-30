---
description: Découvrez les organisations (identifiant d’organisation IMS) et la liaison des comptes de solutions à Experience Cloud.
solution: Experience Cloud
title: Liaison d’organisations et de comptes
uuid: ae47ad18-ac33-4efa-8b68-2bfaf77397aa
feature: Organizations
topic: Administration
role: Admin
level: Experienced
exl-id: 6eb58530-2a7a-48c7-9a5b-48a6e980a034
source-git-commit: f83ddfe82a55c6b88cf35a14b030d9b82c17f16d
workflow-type: tm+mt
source-wordcount: '585'
ht-degree: 50%

---

# Organisations dans Experience Cloud

Un *organisation* (ID d’organisation) est l’entité qui permet à un administrateur de configurer des groupes et des utilisateurs et de contrôler l’authentification unique dans Experience Cloud.

Lʼorganisation fonctionne comme une entreprise de connexion qui inclut tous les produits et applications Experience Cloud. La plupart du temps, une organisation désigne votre nom de société. Cependant, une société peut avoir plusieurs organisations.

![Organisations Experience Cloud](../assets/organizations-menu.png)

Pour vérifier que vous vous êtes connecté à l’organisation appropriée, cliquez sur **[!UICONTROL Profil]** pour afficher le nom d’organisation par défaut. Si vous avez accès à plusieurs organisations, vous pouvez également afficher et passer à une autre organisation dans la barre d’en-tête.

>[!NOTE]
>
>Le passage d’une organisation à l’autre vous permet d’accéder à Admin Console pour cette organisation spécifique. Si l’organisation souhaitée n’apparaît pas dans la liste, vous devrez peut-être demander l’accès à un administrateur ou une administratrice de cette organisation. (Si vous devez fusionner plusieurs Admin Consoles, contactez le service clientèle d’Adobe pour obtenir de l’aide.)

## Federated ID

Si votre entreprise utilise des Federated ID, Experience Cloud vous permet de vous connecter à l’aide de l’authentification unique de votre entreprise sans avoir à saisir votre adresse e-mail et votre mot de passe. Ajoutez `#/sso:@domain` à l’URL d’Experience Cloud (`https://experience.adobe.com`) pour accomplir cette tâche.

Par exemple, pour une organisation avec des Federated ID et le domaine `adobecustomer.com`, définissez votre lien URL sur `https://experience.adobe.com/#/sso:@adobecustomer.com`. Vous pouvez également accéder directement à une application spécifique en marquant cette URL avec le chemin de l’application. (Par exemple, pour Adobe Analytics, `https://experience.adobe.com/#/sso:@adobecustomer.com/analytics`.)

## Afficher l’ID de votre organisation {#concept_EA8AEE5B02CF46ACBDAD6A8508646255}

Vous pouvez localiser l’ID d’organisation affecté à des fins d’assistance. Vous pouvez vérifier que vous vous trouvez dans la bonne organisation ou changer d’organisation à l’aide du sélecteur **[!UICONTROL Organisation]** dans l’en-tête.

L’ID de l’organisation est l’identifiant associé à votre entreprise Experience Cloud provisionnée. Cet identifiant est une chaîne alphanumérique de 24 caractères, suivie de (et qui doit inclure) `@AdobeOrg`.

Vous pouvez afficher votre ID d’organisation ainsi que d’autres informations de compte à l’aide du raccourci clavier **Ctrl+i** depuis n’importe quelle page sur `https://experience.adobe.com`.

**Pour afficher l’ID de votre organisation**

1. Dans [Experience Cloud](https://experience.adobe.com?lang=fr), appuyez sur **Ctrl+i** sur le clavier.

   ![Identifiant d’organisation affecté](../assets/assigned-organization.png)

1. Sous **[!UICONTROL Informations utilisateur]**, recherchez **[!UICONTROL ID d’organisation actuel]** et vous pouvez localiser l’ID d’organisation.

   Les administrateurs peuvent également se connecter à Admin Console (en accédant à [https://adminconsole.adobe.com](https://adminconsole.adobe.com)) et afficher votre ID d’organisation dans l’URL.

   Par exemple, dans l’URL suivante :

   `https://adminconsole.adobe.com/C538193582390300A495CC9@AdobeOrg/overview`

   L’ID est :

   `C538193582390300A495CC9@AdobeOrg`

## Liaison dʼun compte dʼapplication à un Adobe ID {#task_FD389E78640848919E247AC5E95B8369}

En général, les administrateurs Experience Cloud accordent lʼaccès aux applications et aux services. Dans de rares cas, vous pouvez lier les informations d’identification de l’application à une Adobe ID.

1. Suivez les étapes de votre invitation par e-mail à Experience Cloud.

1. Connectez-vous à l’aide de votre Adobe ID ou de votre Enterprise ID.

1. Cliquez sur le **[!UICONTROL sélecteur d’applications]**. ( ![menu](../assets/apps-icon.png)).

   ![Liaison dʼun compte dʼapplication à un Adobe ID](../assets/solutions-active.png)

   Les applications auxquelles vous avez accès sont indiquées à l’aide d’une couleur.

1. Cliquez sur l’application de votre choix.

   ![Cliquez sur votre application](../assets/analytics-link-accounts.png)

   Si vous faites partie du groupe approprié (et disposez des autorisations nécessaires pour accéder à lʼapplication), mais nʼavez pas encore lié les informations d’identification de votre compte à votre Adobe ID, ce type de message sʼaffiche.

1. Cliquez sur **[!UICONTROL Lier le compte]**, puis fournissez vos informations d’identification.

## Spécifier une organisation par défaut {#concept_6A191B42A9874A9780882903BA18F071}

Vous pouvez spécifier une organisation par défaut à utiliser lorsque vous vous connectez.

1. Dans l&#39;en-tête, cliquez sur **[!UICONTROL Profil]**, puis sur Préférences.

1. Sous [!UICONTROL Général], sélectionnez une organisation par défaut.


![Modification du profil](../assets/edit-profile.png)

## Résoudre les problèmes de liaison de comptes {#concept_DFCB29A3B4834FC59AA29E0BBA301584}

Aide pour résoudre les problèmes qui se produisent lors de la liaison de comptes.

En règle générale, la liaison de comptes échoue, car l’Adobe ID est lié à un utilisateur précédent. Lorsque la liaison de comptes échoue, vous pouvez :

* [contacter l’assistance Adobe](https://experienceleague.adobe.com/fr?support-solution=General&amp;lang=fr#support) ;
* accéder à votre application en suivant la procédure de connexion standard pendant que nous résolvons le problème.
