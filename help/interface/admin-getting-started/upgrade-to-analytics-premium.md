---
description: Les administrateurs peuvent prendre connaissance des exigences et conditions prévisibles lors de la mise à niveau vers Analytics Premium et trouver de l’aide en tant qu’administrateur d’Experience Cloud.
keywords: mise à niveau
seo-description: Les administrateurs peuvent prendre connaissance des exigences et conditions prévisibles lors de la mise à niveau vers Analytics Premium et trouver de l’aide en tant qu’administrateur d’Experience Cloud.
seo-title: Mise à niveau vers Analytics Premium et Experience Cloud
solution: Experience Cloud
title: Mise à niveau vers Analytics Premium et Experience Cloud
topic: Premium
uuid: 450 a 601 c-d 199-4 e 90-b 525-19 bd 9 f 9576 d 2
translation-type: tm+mt
source-git-commit: 979b2202a70e2a5362aa86a65a17d7c4279b3a1a

---


# Mise à niveau vers Analytics Premium et Experience Cloud

Les administrateurs peuvent prendre connaissance des exigences et conditions prévisibles lors de la mise à niveau vers Analytics Premium et trouver de l’aide en tant qu’administrateur d’Experience Cloud.


## Analytics Premium {#section_7F50AD7906544F899B844BE31D3BB507}

La mise à niveau vers Adobe Analytics Premium vous permet de bénéficier de toutes les fonctionnalités ou de tous les produits disponibles dans Analytics Standard, notamment l’entrepôt de données, les Ad Hoc Analysis, le Report Builder et les Data Connectors. (Ces produits étaient vendus séparément aux clients qui utilisaient la solution SiteCatalyst.)

Analytics Premium

* Accès à 250 variables de conversion (eVar)
* [Analyse d’applications mobiles](https://marketing.adobe.com/resources/help/en_US/mobile/)
* Data Workbench (requête de données visuelle, attribution basée sur des règles, analyses cross-canal)



>[!NOTE]
>
>Aucune migration n’est nécessaire lors de la mise à niveau. Vous devez toutefois tenir compte des points suivants :
>
>* Les eVars 76 à 250 (SiteCatalyst) et 100 à 250 (Standard) sont visibles dans Outils d’administration, mais ne sont pas encore activés.&gt;
>* L’analyse des contributions est activée par Adobe. Son emplacement n’est pas modifié (elle est toujours accessible sur la page de détection des anomalies), mais elle commence désormais à analyser automatiquement tous les points de données.&gt;


Les sections suivantes indiquent où trouver de l’aide selon les fonctionnalités achetées :

* [Analytics Premium : formule complète](../admin-getting-started/upgrade-to-analytics-premium.md#section_BFAD815EDF364845A52B340B2FD5B64C)
* [Intelligence prédictive](../admin-getting-started/upgrade-to-analytics-premium.md#section_B407932C07A7476F83FB0275C3FB63DC)
* [Vision à 360 degrés des clients](../admin-getting-started/upgrade-to-analytics-premium.md#section_3B2AC245388248688067DC9A48957AFB)
* [Attribution avancée](../admin-getting-started/upgrade-to-analytics-premium.md#section_9E4986A8389946CCAA7D003268343296)
* [Exigences liées à l’Data Workbench](../admin-getting-started/upgrade-to-analytics-premium.md#section_D959CA68D6DB42C38707F8E0CA3654CC)
* [Experience Cloud](../admin-getting-started/upgrade-to-analytics-premium.md#section_6471C54454024301B2E0B687F79F6738)



## Analytics Premium : formule complète {#section_BFAD815EDF364845A52B340B2FD5B64C}

Dans la formule complète d’Analytics Premium, vous bénéficiez de toutes les fonctionnalités d’[Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), ainsi que des mises à niveau suivantes :

| Produit | Mises à niveau |
|--- |--- |
| Reports &amp; Analytics | <ul><li>[Analyse des contributions](https://marketing.adobe.com/resources/help/en_US/analytics/contribution/)</li><li>[Attributs du client](../attributes/attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1) (jusqu’à 200 attributs)</li></ul> |
| Data Workbench | <ul><li>Attribution algorithmique</li><li>Espaces de travail préconfigurés</li></ul> |
| Plate-forme Analytics | [Flux en direct](https://marketing.adobe.com/developer/documentation/analytics-live-stream/overview-1) (données brutes, tableaux de bord, triggers) |


## Intelligence prédictive {#section_B407932C07A7476F83FB0275C3FB63DC}

La mise à niveau vers l’intelligence prédictive active [Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), plus :

| Produit | Mises à niveau |
|---|---|
| Reports &amp; Analytics | [Analyse des contributions](https://marketing.adobe.com/resources/help/en_US/analytics/contribution/) |
| Data Workbench | Espaces de travail préconfigurés pour les qualifications d’audiences et le marketing prédictif. |
| Plate-forme Analytics | Flux en direct (tableaux de bord et triggers) |


## Clients 360 {#section_3B2AC245388248688067DC9A48957AFB}

La mise à niveau vers la vision à 360 degrés des clients permet l’accès à [Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), plus :

| Produit | Mises à niveau |
|--- |--- |
| [Attributs du client](../attributes/attributes.md) | Attributs du client (analyses et partage de segment) |
| Data Workbench | <ul><li>Attributs du client dérivés</li><li>Espaces de travail préconfigurés pour la découverte d’audiences</li></ul> |
| Plate-forme Analytics | [Attributs du client](../attributes/attributes.md) |


## Attribution avancée {#section_9E4986A8389946CCAA7D003268343296}

L’attribution avancée permet l’accès à [Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), ainsi qu’à l’attribution algorithmique dans l’Data Workbench (25 % du volume des appels au serveur).

## Exigences liées à l’Data Workbench {#section_D959CA68D6DB42C38707F8E0CA3654CC}

Les utilisateurs peuvent demander à ce que toutes les licences clientes soient mises à jour pour prendre en compte la version Premium en envoyant un courrier électronique à l’adresse `dwb@adobe.com`. Cette mise à jour active des fonctionnalités telles que l’attribution algorithmique.

L’équipe des opérations techniques (TechOps) examine votre contrat et détermine l’infrastructure administrée adéquate, en augmentant ou en réduisant les capacités, puis elle assure la coordination avec vous au moyen du gestionnaire de compte ou du service de conseils pour déployer les modifications. 

Les logiciels s’exécutant sur site doivent être désactivés, notamment Sensors, ce qui signifie que vous devrez vous assurer d’un suivi correct par le biais des balises Analytics.

**Analytics Premium : formule complète** et **attribution avancée**

Pour l’attribution basée sur des règles dans les modèles prédéfinis, voir [Attribution basée sur des règles](https://marketing.adobe.com/resources/help/en_US/insight/client/?f=c_rules_attrib).

Pour l’attribution algorithmique, voir [Attribution adéquate](https://marketing.adobe.com/resources/help/en_US/insight/client/?f=c_attrib_algorithmic).

**Intelligence prédictive**

Dans l’Data Workbench, l’intelligence prédictive comprend les visualisations suivantes :

* [Score de propension d’audience](https://marketing.adobe.com/resources/help/en_US/insight/client/?f=c_visitor_propensity)
* [Clusterisation de visiteur](https://marketing.adobe.com/resources/help/en_US/insight/client/?f=c_visitor_cluster)
* [Analyse des corrélations](https://marketing.adobe.com/resources/help/en_US/insight/client/?f=c_correlation_analysis)


**Vision à 360 degrés des clients** et **attribution avancée**

Voir l’attribution basée sur des règles Analytics dans les modèles prédéfinis dans [Attribution basée sur des règles](https://marketing.adobe.com/resources/help/en_US/insight/client/?f=c_rules_attrib).

Voir les modèles d’attribution algorithmique dans [Attribution adéquate](https://marketing.adobe.com/resources/help/en_US/insight/client/?f=c_attrib_algorithmic)..

## Experience Cloud - Administration des utilisateurs et des produits {#section_6471C54454024301B2E0B687F79F6738}

Experience Cloud et les services principaux sont accessibles aux utilisateurs d&#39;Analytics Standard et Premium, à condition que vous ayez suivi la modernisation de la mise en œuvre décrite dans [Prise en main - Activation de vos solutions pour les services principaux](../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C). (Ce processus vous permet de moderniser votre mise en œuvre et de devenir administrateur dans Experience Cloud.)

Une fois que vous avez rejoint Experience Cloud, vous pouvez vous connecter au moyen d’Experience Cloud à l’adresse [!DNL marketing.adobe.com] et commencer à utiliser les services principaux (dont les attributs du client, les audiences et l’analyse d’applications mobiles).

**Administration des utilisateurs et des groupes**

La gestion des utilisateurs s’effectue dans [Adobe Admin Console](https://helpx.adobe.com/enterprise/help/aedash.html) (lien du produit).

Vous pouvez définir un mappage 1:1 entre un groupe créé dans Adobe Admin Console et un groupe de solutions (comme Adobe Analytics). Par la suite, un nouvel utilisateur ajouté à ce groupe Admin Console mappé aura un compte de solution Analytics automatiquement créé et lié à son Adobe ID. (Les utilisateurs existants doivent lier manuellement les informations d’identification de leur compte de solution pour accéder à des solutions par l’intermédiaire de la connexion Experience Cloud.)


>[!NOTE]
>
>Vous pouvez mapper plusieurs groupes de solutions à un groupe de la console d&#39;administration. Adobe recommande toutefois un mappage 1:1. Le mappage préalable des groupes permet d’inviter, de créer, d’autoriser et d’ajouter plusieurs utilisateurs en transférant un fichier CSV.

