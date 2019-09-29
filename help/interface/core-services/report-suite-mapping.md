---
description: Découvrez comment mapper une ou plusieurs suites de rapports à une organisation.
seo-description: Découvrez comment mapper une ou plusieurs suites de rapports à une organisation.
seo-title: Mappage de suites de rapports à une organisation
title: Mappage de suites de rapports à une organisation
uuid: b983d5a6-b3d0-4137-ac53-bc5681d3e58b
translation-type: tm+mt
source-git-commit: d9d6cebc0e9e14eac2471dc79b91276a154e35e0

---


# Mappage de suites de rapports à une organisation {#topic_7C4740559EAC4E0FA5F8DEF886B580DA}

Découvrez comment mapper une ou plusieurs suites de rapports à une organisation.

Les services Experience Cloud (tels que le service Experience Cloud ID et le service principal Personnes) sont associés à une organisation Experience Cloud plutôt qu’à une suite de rapports individuelle. Afin de garantir le bon fonctionnement de ces services, chaque suite de rapports Analytics doit être mappée à une organisation. Le processus de mappage :

* définit une organisation Experience Cloud comme l’organisation principale de la suite de rapports ;
* ne modifie pas les utilisateurs qui peuvent accéder à une suite de rapports (l’accès reste déterminé par le compte de connexion Adobe Analytics de chaque utilisateur).


**Conditions**

Vous devez être administrateur Analytics d’une société de connexion ayant accès à la suite de rapports que vous souhaitez mapper. En outre, ce compte doit être [lié à une organisation Experience Cloud](../admin-getting-started/organizations.md#topic_C31CB834F109465A82ED57FF0563B3F1) pour mapper des suites de rapports à cette organisation.

Les organisations sont grisées si vous ne disposez pas des autorisations d’administrateur Analytics pour une société de connexion sous cette organisation ayant accès à la suite de rapports.

## Mappage d’une suite de rapports à une organisation {#task_23993FE78DF6455FA8D7BE60686EA16C}

1. Cliquez sur **[!UICONTROL Experience Cloud]** &gt; **[!UICONTROL Administration]** &gt; **[!UICONTROL Mappage de suites de rapports]**

   Vous pouvez également utiliser une [URL directe](https://audience.marketing.adobe.com/rsmapping/ui.html).

1. Pour afficher les sociétés de connexion ayant accès à chaque suite de rapports, cliquez sur **[!UICONTROL Visible pour les connexions d’entreprises]**.

   Cette vue a pour but de vous aider à prendre une décision éclairée concernant le mappage.

1. Cliquez sur le menu déroulant dans la colonne **[!UICONTROL Organisation mappée]** en regard d’une suite de rapports et sélectionnez l’organisation à laquelle vous souhaitez mapper la suite de rapports.

   Reportez-vous à la section suivante pour obtenir des conseils sur la sélection d’une organisation Experience Cloud.

## Mappage de plusieurs suites de rapports à une organisation {#task_94955B0D8ABA4CB1A38746ECF8E32711}

1. Cliquez sur **[!UICONTROL Experience Cloud]** &gt; **[!UICONTROL Administration]** &gt; **[!UICONTROL Mappage de suites de rapports]**.

   Vous pouvez également utiliser une [URL directe](https://audience.marketing.adobe.com/rsmapping/ui.html).

1. Sélectionnez les suites de rapports que vous souhaitez mapper.

   ![](assets/rs-mapping-multiple.png)

1. Sélectionnez l’organisation (Outdoors Inc, dans cet exemple), puis cliquez sur **[!UICONTROL Sélectionner]**.

   Reportez-vous à la section suivante pour obtenir des conseils sur la sélection d’une organisation Experience Cloud.

1. Cliquez sur **[!UICONTROL Enregistrer le mappage]**.

## Astuces pour sélectionner une organisation Experience Cloud {#mapping-tips}

Cette section contient des astuces pour vous aider à sélectionner l’organisation Experience Cloud à laquelle mapper une suite de rapports.

**Quelle organisation dois-je choisir ?**

Si le service d’Experience Cloud ID est actuellement déployé sur la suite de rapports, assurez-vous que l’organisation que vous sélectionnez dans l’outil de mappage des suites de rapports correspond à celle spécifiée dans le fichier [!DNL visitorAPI.js] sur votre site. Vous pouvez suivre les instructions de la section [Test et vérification du service d’Experience Cloud ID](https://marketing.adobe.com/resources/help/en_US/mcvid/mcvid-test-verify.html) pour trouver l’ID d’organisation utilisé par le service d’identification des visiteurs.

Si le service d’identification des visiteurs n’est pas encore déployé sur les sites qui collectent des données pour la suite de rapports et que vous déployez ultérieurement le service d’identification des visiteurs Experience Cloud, vous devrez vous assurer que votre déploiement correspond à l’organisation que vous avez sélectionnée dans l’outil de mappage des suites de rapports.

**Pourquoi certaines organisations sont-elles grisées ?**

Cela indique que vous ne disposez pas des privilèges suffisants pour mapper la suite de rapports à l’organisation grisée. Examinez l’exemple suivant :

![](assets/rs-mapping.png)Sur ce schéma, la clé bleue représente les privilèges d’administrateur. Les lignes grises indiquent la visibilité.

Cet utilisateur a accès à deux organisations Experience Cloud. Il a effectué les opérations suivantes :

* Lié son compte administrateur dans la société de connexion Analytics chapek à son compte d’organisation Experience Cloud Chapek Corp.
* Lié son compte non-administrateur dans la société de connexion Analytics doohan à son compte d’organisation Experience Cloud Chapek Corp.
* Lié son compte non-administrateur dans la société de connexion Analytics nigel à son compte d’organisation Experience Cloud Nigel Inc.

Les points suivants répertorient les actions de mappage que cet utilisateur peut et ne peut pas effectuer concernant ces suites de rapports :

* La suite de rapports Chapek-prod peut être mappée à l’organisation Chapek Corp, car cet utilisateur est administrateur d’une société de connexion Analytics liée (chapek) et son compte est lié à cette organisation.
* La suite de rapports Nigel-prod ne peut pas être liée par cet utilisateur, car il n’est pas administrateur d’une société de connexion pour laquelle cette suite de rapports est visible.
* La suite de rapports Doohan-prod peut être mappée à Chapek Corp, car cet utilisateur est administrateur d’une société de connexion (chapek) liée à l’organisation Experience Cloud (notez qu’il n’est pas administrateur de la société de connexion Analytics doohan). Il est important de souligner que la suite de rapports doohan-prod peut également être mappée à l’organisation Experience Cloud Nigel Inc, même si cet utilisateur ne peut pas procéder au mappage. Dans ce cas, les deux organisations Experience Cloud apparaissent dans la liste, mais Nigel Inc est grisé. Avant le mappage, cet utilisateur doit consulter un administrateur de la société de connexion nigel pour déterminer quelle organisation est la plus adaptée au mappage. L’interface utilisateur affiche un avertissement de conflit potentiel si vous sélectionnez une organisation qui diffère de celle sous laquelle la suite de rapports a été créée à l’origine.

## Questions fréquentes {#section_099E485805994C929FF9C9F75219BEE1}

**Pourquoi mes suites de rapports ne sont-elles pas toutes visibles ?**

Certaines de vos suites de rapports peuvent être visibles sous une autre société de connexion. Vous pouvez modifier la société de connexion active à l’aide du menu déroulant en haut de l’écran.

**Que faire si je ne reconnais pas certaines des organisations figurant dans le menu déroulant pour l’une de mes suites de rapports ?**

La liste répertorie toutes les organisations auxquelles votre suite de rapports peut être mappée, même si vous ne disposez pas des autorisations nécessaires pour le faire. Si vous ne savez pas si la suite de rapports doit être mappée à l’une des suites de rapports grisées dans la liste, consultez un administrateur Experience Cloud de votre organisation afin de déterminer le meilleur choix.

**Que faire si je ne reconnais pas certaines des sociétés de connexion répertoriées pour une suite de rapports dans la colonne « Visible pour les connexions d’entreprises » ?**

À un moment donné, cette suite de rapports a été partagée avec une autre société de connexion faisant peut-être partie d’une organisation Experience Cloud différente.

**Que signifie cette erreur de conflit potentiel de la suite de rapports générée par une autre organisation ? En quoi est-ce important ?**

Il s’agit d’une notification ayant pour but de vous aider à prendre une décision informée concernant le mappage de vos suites de rapports. Nous voulons souligner que la suite de rapports a été créée à l’origine sous une autre organisation, au cas où cette dernière soit plus appropriée à la suite de rapports.

**Comment savoir si une suite de rapports est mappée ?**

Les suites de rapports mappées s’affichent dans un format non modifiable. Si vous avez besoin de modifier un mappage, contactez l’assistance clientèle.

**Que faire si je connais uniquement l’ID d’organisation de mon organisation Experience Cloud ? Comment rechercher le nom associé à mon ID d’organisation ?**

Vous trouverez le nom de votre organisation dans [Paramètres des organisations et des comptes](https://marketing.adobe.com/resources/help/en_US/mcloud/?f=organizations).

**Une date apparaît dans la colonne « Date de mappage ». Qui a procédé au mappage ?**

Vous pouvez vous reporter au journal des modifications de la suite de rapports dans l’interface d’Analytics pour consulter l’ID utilisateur qui a procédé au changement. Recherchez l’événement « Suite associée à l’organisation IMS ».
