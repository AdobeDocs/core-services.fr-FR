---
description: Découvrez comment utiliser les offres et partager des champs dans Adobe Campaign Standard.
seo-description: Découvrez comment utiliser les offres et partager des champs dans Adobe Campaign Standard.
seo-title: Campaign
title: Campaign
uuid: ceeec50c-6441-4ced-915b-c73f349f7a21
index: y
internal: n
snippet: y
translation-type: tm+mt
source-git-commit: 2f0c2eb70313c42da9e7ac1d75429ec768dea10d

---


# Campaign{#campaign}

Découvrez comment utiliser les offres et partager des champs dans Adobe Campaign Standard.

Après avoir créé au moins une offre de secours et une offre générale, vous pouvez créer une activité d’offre à l’aide d’un courrier électronique dans Campaign Standard. Une activité d’offre ne peut être créée que dans une campagne par courrier électronique ordinaire. Il ne peut pas être ajouté à une campagne de messagerie transactionnelle (par exemple, un courrier électronique récurrent déclenché par un événement, tel qu’un courrier électronique d’abandon de panier).

Une activité d’offre vous invite à sélectionner un groupe d’offres et une offre de secours qui peuvent être affichées à un emplacement dans un modèle de courrier électronique. La meilleure offre à diffuser est sélectionnée parmi ces offres au moment de la préparation du courrier électronique, en fonction du placement, de la date, du statut de l’offre et des données de profil du client.

## Partager des attributs de la gestion des [!UICONTROL offres à partir de la campagne]{#task_4DFA9A20D7B04E1F9AFF4774D67B6EBC}

Lors de la création d’une offre dans la gestion des [!UICONTROL offres], vous pouvez définir des règles d’éligibilité qui limitent les profils susceptibles de recevoir certaines offres. Ces règles d’éligibilité peuvent être définies en fonction d’attributs (ou de champs) existant dans le profil de campagne. Ces champs doivent être partagés à partir de Campaign avant qu’ils ne s’affichent dans le créateur de règles d’éligibilité de Gestion des [!UICONTROL offres] .

>[!NOTE]
>
>Pour partager des attributs, vous devez disposer de droits d’administrateur dans Campaign.

1. Cliquez sur **[!UICONTROL Adobe Campaign]**pour accéder à la navigation.
1. Accédez à **[!UICONTROL Administration]**> Paramètres**[!UICONTROL  de l’]** instance > Gestion des **[!UICONTROL offres]**et cliquez sur**[!UICONTROL  Attributs.]**

   Cette page affiche les attributs qui ont déjà été partagés. Vous pouvez modifier ou supprimer ces attributs.

   ![](assets/campaign-share5.png)

   >[!NOTE]
   >
   >Si un attribut est actuellement utilisé par la gestion des [!UICONTROL offres] dans une règle d’éligibilité, il ne peut pas être supprimé.

1. Cliquez sur **[!UICONTROL Créer]**.

1. Cliquez sur l’icône de dossier pour définir la source de données Campaign et sélectionner l’élément à partager.

   ![](assets/campaign-share7.png)

1. Sélectionnez une étiquette de données de destination.

   Il s’agit du nom de l’attribut qui s’affichera dans le créateur de règles d’éligibilité dans la gestion des [!UICONTROL offres].

1. Cliquez sur **[!UICONTROL Créer]**.

   L’attribut s’affiche dans le créateur de règles d’éligibilité de Gestion des [!UICONTROL offres] lors de la création et de la modification d’offres.

   ![](assets/campaign-share2.png)

## Create an offer activity {#task_F63ADDA52BD949779DB491E4D56E664E}

Insérez une activité d’offre dans une image ou un bloc de texte d’un modèle de courrier électronique dans Campaign Standard.

1. Pour insérer une activité d’offre dans un emplacement d’image, cliquez une fois sur l’image pour afficher l’icône Insérer une offre.

   ![](assets/insert-offer-activity.png)

1. (Alternative) : Pour insérer une activité d’offre dans un bloc de texte, cliquez deux fois sur le bloc de texte pour afficher l’icône Insérer une offre.

1. Renseignez les détails dans l’onglet Détails [!UICONTROL de l’] activité de l’écran [!UICONTROL Créer une activité] d’offre :

   | Champ | Description |
   |---|---|
   | Nom de l’activité | Attribuez un nom à votre activité. Vous ne pouvez pas entrer un nom d’activité déjà utilisé dans une autre activité d’offre. |
   | Emplacement | Sélectionnez l’emplacement qui sera utilisé pour cet emplacement. Cela permet de s’assurer que seules les offres avec une représentation de contenu correspondant à ce placement sont diffusées à un utilisateur. Seules les offres avec cet emplacement sont affichées dans les listes d’offres pendant le reste de la création de l’activité. |

1. Dans l’onglet [!UICONTROL Sélectionner les offres] , sélectionnez les offres à inclure dans l’activité.

   Vous pouvez sélectionner des groupes d’offres à l’aide de libellés ou d’offres individuelles une par une.

   * **Sélection de groupes d’offres à l’aide de libellés :**

      Pour sélectionner des groupes d’offres à l’aide de libellés, cliquez sur l’onglet Créateur **[!UICONTROL de]**règles, puis sur**[!UICONTROL  Ajouter une règle]**d’étiquette. Pour créer des règles afin de déterminer les offres à inclure dans l’activité d’offre, sélectionnez l’étiquette. Un opérateur _ET_ apparaît entre les libellés. Pour changer l’opérateur de _ET_ en _OU_, cliquez sur l’opérateur.

      ![](assets/offer-actvity-rule-builder.png)

   * **Sélection d’offres individuelles :**

      Pour sélectionner des offres individuelles, cliquez sur l’onglet Inventaire **[!UICONTROL des]**offres. Un utilisateur peut effectuer une recherche dans la liste des offres par nom d’offre, ID d’offre ou étiquettes ajoutés à l’offre.

      Cliquez sur le signe plus pour ajouter les offres à la section Offres sélectionnées de la liste.

      ![](assets/create-offer2.png)

      Pour qu’une offre soit disponible à la fois dans le créateur de règles et dans votre stock d’offres, elle doit :

   * Correspond à la date du jour.
   * Avoir un état approuvé.
   * Disposer d’une représentation de contenu avec un emplacement correspondant à celui sélectionné à l’étape 1.

      >[!NOTE]
      >
      >Les offres répertoriées dans l’onglet Inventaire des offres sont filtrées par emplacement et état d’approbation uniquement. Ils n’ont pas été filtrés pour correspondre aux critères de ciblage définis pour le courrier électronique dans Adobe Campaign.

1. Dans l’onglet Offre [!UICONTROL de] secours, sélectionnez une offre de secours. L’offre de secours est envoyée uniquement à un client s’il n’est pas éligible pour d’autres offres. Vous ne pouvez sélectionner qu’une seule offre de secours dans la liste.
1. Affichez le résumé de votre activité d’offre et cliquez sur **[!UICONTROL Terminé]**.

   La meilleure offre à fournir à chaque utilisateur sera déterminée au moment de la préparation du courrier électronique en évaluant les éléments suivants :

* **** Vérification du positionnement : Toutes les offres doivent avoir une représentation de contenu qui correspond à l’emplacement sélectionné dans le cadre de l’activité d’offre. Si un emplacement pour une offre est supprimé entre le moment de création de l’activité et le moment de préparation (si le temps est supérieur à trois minutes), cette offre n’est pas prise en compte.
* **** Vérification de date : Toutes les offres doivent être valides pour la date actuelle (il _ne s’agit pas_ de la date d’envoi de l’offre). La date de préparation de la campagne par courrier électronique est la date qui détermine l’offre à diffuser. Par exemple, si vous préparez une campagne par courrier électronique le 15/15/17 et que l’une des offres sélectionnées n’est pas valide avant le 16/17, l’offre n’est pas diffusée.

* **** Vérification des règles d’éligibilité : Toutes les offres doivent respecter les règles [d’](offers.md#task_6C4AE487377D424FA133ACCA6AF741D4)éligibilité.

* **** Vérification de priorité : Si un utilisateur est éligible à plusieurs offres, la gestion des [!UICONTROL offres] utilise la priorité définie par l’utilisateur pour déterminer l’offre à présenter à chaque utilisateur.

   Votre e-mail est maintenant prêt à être envoyé. Sélectionnez l’onglet [!UICONTROL Rapports] sur la [!DNL Adobe Campaign] page d’accueil pour vérifier les performances de vos offres.

   Pour plus d’informations sur l’utilisation d’Adobe Campaign, consultez les guides suivants :

* [Création d’un courrier électronique](https://docs.campaign.adobe.com/doc/standard/en/CHA_Email_messages_Creating_an_email.html)
* [Envoi d’un courrier électronique](https://docs.adobe.com/content/help/en/campaign-standard/using/testing-and-sending/about-sending-messages-with-campaign.html)
* [A propos des rapports dynamiques](https://docs.campaign.adobe.com/doc/standard/en/RPT_About_reporting_About_dynamic_reports.html)

## Rapports d’offres

Adobe Campaign vous fournit trois dimensions d’offre (offre, activité d’offre, placement d’offre) et une mesure (clics sur une offre) qui vous permettent de surveiller vos offres et de mesurer leur impact. Pour afficher les rapports, accédez à l’onglet Rapports d’Adobe Campaign Standard. Vous pouvez créer votre rapport et faire glisser et déposer différentes dimensions d’offre dans le panneau des rapports pour commencer à filtrer vos données.

![](assets/offers-reports.png)

Pour plus d’informations sur la création de rapports dynamiques dans Campaign, voir [A propos des rapports](https://docs.campaign.adobe.com/doc/standard/en/RPT_About_reporting_About_dynamic_reports.html)dynamiques.