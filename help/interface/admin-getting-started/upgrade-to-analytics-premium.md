---
description: Les administrateurs peuvent prendre connaissance des exigences et conditions prévisibles lors de la mise à niveau vers Analytics Premium et trouver de l’aide en tant qu’administrateur d’Experience Cloud.
keywords: upgrading
seo-description: Les administrateurs peuvent prendre connaissance des exigences et conditions prévisibles lors de la mise à niveau vers Analytics Premium et trouver de l’aide en tant qu’administrateur d’Experience Cloud.
seo-title: Mise à niveau vers Analytics Premium et Experience Cloud
solution: Experience Cloud
title: Mise à niveau vers Analytics Premium et Experience Cloud
topic: Premium
uuid: 450a601c-d199-4e90-b525-19bd9f9576d2
translation-type: tm+mt
source-git-commit: 43de353155c640b3ddc519147c94d7e9ffcafe4e

---


# Mise à niveau vers Analytics Premium et Experience Cloud

Les administrateurs peuvent prendre connaissance des exigences et conditions prévisibles lors de la mise à niveau vers Analytics Premium et trouver de l’aide en tant qu’administrateur d’Experience Cloud.

## Analytics Premium {#section_7F50AD7906544F899B844BE31D3BB507}

La mise à niveau vers Adobe Analytics Premium vous permet de bénéficier de toutes les fonctionnalités ou de tous les produits disponibles dans Analytics Standard, notamment l’Data Warehouse, les Ad Hoc Analysis, le Report Builder et les Data Connectors. (Ces produits ont été vendus séparément aux clients utilisant la solution ponctuelle SiteCatalyst.)

Analytics Premium offre les avantages suivants :

* Accès à 250 variables de conversion (eVars)
* [Analyses des applications mobiles](https://docs.adobe.com/content/help/en/mobile-services/using/home.html)
* Data Workbench (requête de données visuelle, attribution basée sur des règles, analyses cross-canal)

>[!NOTE]
>
>Aucune migration n’est nécessaire lors de la mise à niveau, mais vous devez tenir compte des points suivants :
>
>* Les eVars 76-250 (SiteCatalyst) et 100-250 (Standard) seront visibles dans les outils d’administration, mais ne seront pas encore activées.>
>* L’analyse des contributions est activée par Adobe. Il ne changera pas d’emplacement (il est toujours disponible sur la page Détection des anomalies), mais il désormais automatiquement l’analyse de tous les points de données.>


## Analytics Premium : formule complète {#section_BFAD815EDF364845A52B340B2FD5B64C}

Dans Analytics Premium Complete, vous bénéficiez de toutes les fonctionnalités d’ [Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), ainsi que des mises à niveau suivantes :

| Produit | Mises à niveau |
|--- |--- |
| Reports &amp; Analytics | <ul><li>[Analyse des contributions](https://docs.adobe.com/content/help/en/analytics/analyze/analysis-workspace/virtual-analyst/contribution-analysis/ca-tokens.html)</li><li>[Attributs du client](../attributes/attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1) (jusqu’à 200 attributs)</li></ul> |
| Data Workbench | <ul><li>Attribution algorithmique</li><li>Espaces de travail prédéfinis</li></ul> |
| Plateforme Analytics | [Flux](https://helpx.adobe.com/analytics/kb/getting-started-with-livestream-api.html) en direct (données brutes, , déclencheurs) |

## Intelligence prédictive {#section_B407932C07A7476F83FB0275C3FB63DC}

La mise à niveau vers Predictive Intelligence active [Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507) plus :

| Produit | Mises à niveau |
|---|---|
| Reports &amp; Analytics | [Analyse des contributions](https://docs.adobe.com/content/help/en/analytics/analyze/analysis-workspace/virtual-analyst/contribution-analysis/ca-tokens.html) |
| Data Workbench | Espaces de travail prédéfinis pour  les qualifications  des et le marketing prédictif. |
| Plateforme Analytics | Flux en direct ( et déclencheurs) |

## Vision à 360 degrés des clients {#section_3B2AC245388248688067DC9A48957AFB}

Mise à niveau vers le client 360   d’ [Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507) plus :

| Produit | Mises à niveau |
|--- |--- |
| [Attributs du client](../attributes/attributes.md) | Attributs du client (analyses et partage de segment) |
| Data Workbench | <ul><li>Attributs du client dérivés</li><li>Espaces de travail prédéfinis pour  découverte </li></ul> |
| Plateforme Analytics | [Attributs du client](../attributes/attributes.md) |

## Attribution avancée {#section_9E4986A8389946CCAA7D003268343296}

Attribution avancée  accès  à [Analytics Premium](../admin-getting-started/upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), plus Attribution algorithmique dans les Outils de données (25 % du volume des appels au serveur).

## Exigences liées à Data Workbench  {#section_D959CA68D6DB42C38707F8E0CA3654CC}

Les utilisateurs peuvent demander à ce que toutes les licences clientes soient mises à jour pour prendre en compte la version Premium en envoyant un courrier électronique à l’adresse `dwb@adobe.com`. Cela active des fonctionnalités telles que l’attribution algorithmique.

L’équipe des opérations techniques (TechOps) examine votre contrat et détermine l’infrastructure administrée adéquate, en augmentant ou en réduisant les capacités, puis elle assure la coordination avec vous au moyen du gestionnaire de compte ou du service de conseils pour déployer les modifications.

Les logiciels s’exécutant sur site doivent être désactivés, Cela inclut les capteurs, ce qui signifie que vous devrez vous assurer d’un suivi correct au moyen des balises Analytics.

## Experience Cloud - Administration des utilisateurs et des produits {#section_6471C54454024301B2E0B687F79F6738}

Experience Cloud et les services principaux sont accessibles aux utilisateurs d’Analytics Standard et Premium, à condition que vous ayez suivi la modernisation de la mise en œuvre décrite dans [Prise en main - Activation de vos solutions pour les services principaux](../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C). (Ce processus vous permet de moderniser votre mise en œuvre et de devenir administrateur dans Experience Cloud.)

Une fois que vous avez rejoint Experience Cloud, vous pouvez vous connecter au moyen d’Experience Cloud à l’adresse [!DNL experiencecloud.adobe.com] et commencer à utiliser les services principaux (dont les attributs du client, les audiences et l’analyse d’applications mobiles).

### Administration des utilisateurs et des groupes

La gestion des utilisateurs s’effectue dans la Console [d’administration](https://helpx.adobe.com/enterprise/help/aedash.html) Adobe (lien du produit).

Vous pouvez définir un mappage 1:1 entre un groupe créé dans Adobe Admin Console et un groupe de solutions (comme Adobe Analytics). Par la suite, un nouvel utilisateur ajouté à ce groupe Admin Console mappé aura un compte de solution Analytics automatiquement créé et lié à son Adobe ID. (Les utilisateurs existants doivent lier manuellement les informations d’identification de leur compte de solution pour accéder aux solutions via la connexion à Experience Cloud.)

>[!NOTE]
>
>Vous pouvez mapper plusieurs groupes de solutions à un groupe Admin Console. Adobe recommande toutefois un mappage 1:1. Le mappage préalable des groupes vous permet d’inviter, de créer, d’autoriser et d’ajouter plusieurs utilisateurs en téléchargeant un fichier CSV.
