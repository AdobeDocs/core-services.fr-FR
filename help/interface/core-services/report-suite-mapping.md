---
description: Découvrez comment mapper une ou plusieurs suites de rapports à une organisation.
seo-description: Découvrez comment mapper une ou plusieurs suites de rapports à une organisation.
seo-title: Mappage de suites de rapports à une organisation
title: Mappage de suites de rapports à une organisation
uuid: b983d5a6-b3d0-4137-ac53-bc5681d3e58b
translation-type: tm+mt
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e

---


# Mappage de suites de rapports à une organisation {#topic_7C4740559EAC4E0FA5F8DEF886B580DA}

Découvrez comment mapper une ou plusieurs suites de rapports à une organisation.

Les services Experience Cloud (tels que Experience Cloud ID Service et le service principal People) sont associés à une organisation plutôt qu’à une suite de rapports individuelle. Afin de garantir le bon fonctionnement de ces services, chaque suite de rapports Analytics doit être mappée à une organisation. Processus de mappage :

* Définit une organisation Experience Cloud comme organisation principale pour la suite de rapports.
* Ne modifie pas l’accès à une suite de rapports (l’accès est toujours déterminé par le compte de connexion Adobe Analytics pour chaque utilisateur).

## Conditions

Vous devez être administrateur Analytics d’une société de connexion ayant accès à la suite de rapports que vous souhaitez mapper. De plus, ce compte doit être [lié à une organisation](../admin-getting-started/organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1) Experience Cloud pour mapper les suites de rapports avec cette organisation.

Les organisations sont grisées si vous ne disposez pas des autorisations d’administrateur Analytics pour une société de connexion sous cette organisation ayant accès à la suite de rapports.

## Mappage d’une suite de rapports à une organisation {#task_23993FE78DF6455FA8D7BE60686EA16C}

1. Click **[!UICONTROL Experience Cloud]** > **[!UICONTROL Administration]** > **[!UICONTROL Report Suite Mapping]**

1. Pour afficher les sociétés de connexion ayant accès à chaque suite de rapports, cliquez sur **[!UICONTROL Visible pour les connexions d’entreprises]**.

   Cette vue a pour but de vous aider à prendre une décision éclairée concernant le mappage.

1. Cliquez sur le menu déroulant dans la colonne **[!UICONTROL Organisation mappée]** en regard d’une suite de rapports et sélectionnez l’organisation à laquelle vous souhaitez mapper la suite de rapports.

   Reportez-vous à la section suivante pour obtenir des conseils sur la sélection d’une organisation Experience Cloud.

## Mappage de plusieurs suites de rapports à une organisation {#task_94955B0D8ABA4CB1A38746ECF8E32711}

1. Click **[!UICONTROL Experience Cloud]** > **[!UICONTROL Administration]** > **[!UICONTROL Report Suite Mapping]**.

1. Sélectionnez les suites de rapports que vous souhaitez mapper.

   ![](assets/rs-mapping-multiple.png)

1. Sélectionnez l’organisation (Outdoors Inc, dans cet exemple), puis cliquez sur **[!UICONTROL Sélectionner]**.

   Reportez-vous à la section suivante pour obtenir des conseils sur la sélection d’une organisation Experience Cloud.

1. Cliquez sur **[!UICONTROL Enregistrer le mappage]**.

## Astuces pour sélectionner une organisation Experience Cloud {#mapping-tips}

Cette section contient des conseils pour vous aider à sélectionner l’organisation Experience Cloud à laquelle mapper une suite de rapports.

### Quelle organisation dois-je choisir ?

If the Experience Cloud ID Service is currently deployed on the report suite, ensure the organization you select in the Report Suite Mapping tool is the same organization specified in the [!DNL visitorAPI.js] file on your site. You can use the instructions in [Test and Verify the Experience Cloud ID Service](https://docs.adobe.com/content/help/en/id-service/using/implementation-guides/test-verify.html) to find the org ID that is being used by the Visitor ID service.

Si le service d’ID de n’est pas encore déployé sur les sites qui collectent des données pour la suite de rapports, si vous déployez le service d’ID de d’Experience Cloud à l’avenir, vous devrez vous assurer que votre déploiement correspond à celui de l’entreprise que vous avez choisie dans l’outil de mappage de Report Suite.

### Pourquoi certaines organisations sont-elles grisées ?

Cela indique que vous ne disposez pas des privilèges suffisants pour mapper la suite de rapports à l’organisation grisée. Examinez l’exemple suivant :


![](assets/rs-mapping.png)

Sur ce schéma, la clé bleue représente les privilèges d’administrateur. Les lignes grises indiquent la visibilité.

Cet utilisateur a accès à deux organisations Experience Cloud. Il a réalisé ce qui suit :

* Liait son compte administrateur dans le de connexion [!UICONTROL chapek] Analytics à son compte d’organisation [!UICONTROL Chapek] Corp Experience Cloud.
* Liait son compte non administrateur dans le de connexion [!UICONTROL doohan] Analytics à son compte d’organisation [!UICONTROL Chapek] Corp Experience Cloud.
* Liait son compte non-administrateur dans le de connexion d’Analytics à son compte d’entreprise Nigel Inc Experience Cloud.

Les points suivants  les actions de mappage que cet utilisateur peut et ne peut pas effectuer concernant ces suites de rapports :

* [!UICONTROL La suite de rapports Chapek-prod] peut être mappée à [!UICONTROL Chapek] Corp org, car cet utilisateur est l’administrateur d’un de connexion Analytics lié ([!UICONTROL chapek]) et son compte est lié à cette organisation.
* [!UICONTROL La suite de rapports Nigel-prod] ne peut pas être liée par cet utilisateur, car il n’est administrateur dans aucun de connexion auquel cette suite de rapports est visible.
* [!UICONTROL La suite de rapports Doohan-prod] peut être mappée à [!UICONTROL Chapek Corp] car cet utilisateur est l’administrateur d’un  de connexion ([!UICONTROL chapek]) lié à l’organisation Experience Cloud (notez qu’il n’est pas l’administrateur du de connexion Adobe Analytics). It is important to be aware that the [!UICONTROL doohan-prod] report suite is also eligible to be mapped to the Nigel Inc Experience Cloud org, even though this user cannot perform that mapping. In this case, both Experience Cloud organizations are displayed in the list, but [!UICONTROL Nigel Inc] is grayed out. Avant le mappage, cet utilisateur doit consulter un administrateur de la société de connexion nigel pour déterminer quelle organisation est la plus adaptée au mappage. L’interface utilisateur affiche un avertissement de conflit potentiel si vous sélectionnez une organisation, il s’agit d’une organisation différente de celle sous laquelle la suite de rapports a été créée à l’origine.

## Questions fréquentes {#section_099E485805994C929FF9C9F75219BEE1}

### Pourquoi est-ce que je ne vois pas toutes mes suites de rapports ?

Certaines de vos suites de rapports peuvent être visibles sous une autre société de connexion. Vous pouvez modifier le de connexion actuel à l’aide de la liste déroulante en haut de l’écran.

### Que se passe-t-il si je ne reconnais pas certaines des organisations répertoriées dans la liste déroulante pour l’une de mes suites de rapports ?

The list shows you all the *possible* organizations your report suite could be mapped to, even you don’t have permission to map to all those report suites. Si vous ne savez pas si la suite de rapports doit être mappée à l’une des suites de rapports grisées du , consultez un administrateur Experience Cloud de votre entreprise pour déterminer le meilleur choix.

### Que se passe-t-il si je ne reconnais pas certains des  de connexion répertoriés pour une suite de rapports dans la colonne &quot;Visible to Login&quot; ?

À un moment donné, cette suite de rapports a été partagée avec un autre de connexion qui peut faire partie d’une autre organisation Experience Cloud.

### Que signifie cette erreur de conflit potentiel de la suite de rapports générée par une autre organisation ? Pourquoi est-ce important ?

Il s’agit d’une notification ayant pour but de vous aider à prendre une décision informée concernant le mappage de vos suites de rapports. Nous voulons vous informer que la suite de rapports a été créée à l’origine sous une autre organisation au cas où cette organisation serait plus appropriée pour cette suite de rapports.

### Comment savoir si une suite de rapports est mappée ?

Les suites de rapports mappées s’affichent dans un format non modifiable. Si vous devez modifier un mappage, contactez le service à la clientèle.

### Que faire si je connais uniquement l’ID d’organisation de mon organisation Experience Cloud ? Comment rechercher le nom associé à mon ID d’organisation ?

Vous pouvez trouver le nom de votre organisation dans [Organisations et Paramètres](https://docs.adobe.com/content/help/en/core-services/interface/manage-users-and-products/organizations.html)du compte.

### Une date apparaît dans la colonne « Date de mappage ». Qui a fait cette cartographie ?

Vous pouvez vous reporter au journal des modifications de la suite de rapports dans l’interface d’Analytics pour consulter l’ID utilisateur qui a procédé au changement. Recherchez la  &quot;Suite associée à l’organisation IMS&quot;.
