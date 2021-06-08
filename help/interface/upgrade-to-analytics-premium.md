---
description: Découvrez les conditions requises et ce quʼoffre la mise à niveau vers Analytics Premium.
keywords: Mise à niveau vers Adobe Analytics Premium
solution: Experience Cloud
title: 'Mettez à niveau vers Analytics Premium et Experience Cloud '
topic: Administration
uuid: 450a601c-d199-4e90-b525-19bd9f9576d2
feature: Admin Console
role: Administrator
level: Experienced
exl-id: 746d396d-9629-42db-8c55-07d2d24e4611
source-git-commit: ebefd433e96da422674e7ee71c8988d4011fed11
workflow-type: tm+mt
source-wordcount: '616'
ht-degree: 70%

---

# Mise à niveau vers Analytics Premium et Experience Cloud

Les administrateurs peuvent prendre connaissance des exigences et conditions prévisibles lors de la mise à niveau vers Analytics Premium et trouver de l’aide en tant qu’administrateur d’Experience Cloud.

## Analytics Premium {#section_7F50AD7906544F899B844BE31D3BB507}

La mise à niveau vers Adobe Analytics Premium vous permet de bénéficier de toutes les fonctionnalités ou de tous les produits disponibles dans Analytics Standard, notamment l’Data Warehouse, les Ad Hoc Analysis, le Report Builder et les Data Connectors.

Analytics Premium offre les avantages suivants :

* Accès à 250 variables de conversion (eVars)
* [Analyse des applications mobiles](https://experienceleague.adobe.com/docs/mobile-services/using/home.html?lang=en)
* Data Workbench (requête de données visuelle, attribution basée sur des règles, analyses cross-canal)

>[!NOTE]
>
>Aucune migration n’est nécessaire lors de la mise à niveau, mais certains points doivent être pris en compte :
>
>* Les eVars 76-250 et 100-250 (Standard) sont visibles dans les outils d’administration, mais ne sont pas activées.
>* L’analyse des contributions est activée par Adobe. Elle ne modifie pas l’emplacement (elle est toujours disponible sur la page Détection des anomalies), mais elle commence automatiquement à analyser tous les points de données.


## Analytics Premium : formule complète {#section_BFAD815EDF364845A52B340B2FD5B64C}

Dans Analytics Premium Complete, vous bénéficiez de toutes les fonctionnalités d’ [Analytics Premium](upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), ainsi que des mises à niveau suivantes :

| Produit | Mises à niveau |
|--- |--- |
| Reports &amp; Analytics | <ul><li>[Analyse des contributions](https://experienceleague.adobe.com/docs/analytics/analyze/analysis-workspace/virtual-analyst/contribution-analysis/ca-tokens.html?lang=en)</li><li>[Attributs du client](attributes.md#concept_ACFEE7C8B8E94875BA0825CDF4913AF1) (jusqu’à 200 attributs)</li></ul> |
| Data Workbench | <ul><li>Attribution algorithmique</li><li>Espaces de travail préconfigurés</li></ul> |
| Plateforme Analytics | [Flux en direct](https://github.com/AdobeDocs/analytics-1.4-apis/blob/master/docs/live-stream-api/index.md) (données brutes, tableaux de bord, triggers) |

## Intelligence prédictive {#section_B407932C07A7476F83FB0275C3FB63DC}

La mise à niveau vers Predictive Intelligence active [Analytics Premium](upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), plus :

| Produit | Mises à niveau |
|---|---|
| Reports &amp; Analytics | [Analyse des contributions](https://experienceleague.adobe.com/docs/analytics/analyze/analysis-workspace/virtual-analyst/contribution-analysis/ca-tokens.html?lang=en) |
| Data Workbench | Espaces de travail préconfigurés pour les qualifications en audience et le marketing prédictif |
| Plateforme Analytics | Flux en direct (tableaux de bord et triggers) |

## Vision à 360 degrés des clients {#section_3B2AC245388248688067DC9A48957AFB}

La mise à niveau vers la vision à 360 degrés des clients permet l’accès à [Analytics Premium](upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), plus :

| Produit | Mises à niveau |
|--- |--- |
| [Attributs du client](attributes.md) | Attributs du client (analyses et partage de segment) |
| Data Workbench | <ul><li>Attributs du client dérivés</li><li>Espaces de travail préconfigurés pour la détection des audiences</li></ul> |
| Plateforme Analytics | [Attributs du client](attributes.md) |

## Attribution avancée {#section_9E4986A8389946CCAA7D003268343296}

Attribution avancée donne l’accès à [Analytics Premium](upgrade-to-analytics-premium.md#section_7F50AD7906544F899B844BE31D3BB507), ainsi qu’à l’attribution algorithmique dans Data Workbench (25 % du volume des appels au serveur).

## Exigences liées à Data Workbench {#section_D959CA68D6DB42C38707F8E0CA3654CC}

Les utilisateurs peuvent demander à ce que toutes les licences clientes soient mises à jour pour prendre en compte la version Premium en envoyant un courrier électronique à l’adresse `dwb@adobe.com`. Cette mise à jour active des fonctionnalités telles que l’attribution algorithmique.

Les opérations techniques passent en revue votre contrat et déterminent l’infrastructure gérée appropriée, augmentant ou réduisant les capacités, puis se coordonnent avec vous, par l’intermédiaire du gestionnaire de compte ou du service de conseil, pour déployer les modifications.

Les logiciels s’exécutant sur site doivent être désactivés, Ce logiciel inclut Capteurs, ce qui signifie que vous devez assurer un suivi correct par le biais de balises [!DNL Analytics].

## Experience Cloud - Administration des utilisateurs et des produits {#section_6471C54454024301B2E0B687F79F6738}

Les services principaux et Experience Cloud sont disponibles pour les utilisateurs d’Analytics Standard et Premium, si vous avez suivi la modernisation de l’implémentation décrite dans [Prise en main - Activation de vos solutions pour les services principaux](core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C). (Ce processus vous permet de moderniser votre mise en œuvre et de devenir administrateur dans Experience Cloud.)

Une fois que vous avez rejoint Experience Cloud, vous pouvez vous connecter au moyen d’Experience Cloud à l’adresse [!DNL experience.adobe.com] et commencer à utiliser les services principaux (dont les attributs du client, les audiences et l’analyse d’applications mobiles).

### Administration des utilisateurs et des groupes

La gestion des utilisateurs s’effectue dans [Adobe Admin Console](https://helpx.adobe.com/fr/enterprise/using/admin-console.html) (lien du produit).

Vous pouvez définir un mappage 1:1 entre un groupe créé dans Adobe Admin Console et un groupe de solutions (comme Adobe Analytics). Par la suite, un nouvel utilisateur ajouté au groupe de Admin Console mappés dispose d’un compte de solution Analytics automatiquement créé et lié à l’Adobe ID de l’utilisateur. (Les utilisateurs existants doivent lier manuellement les informations de connexion de leur compte de solution pour accéder aux solutions via la connexion à Experience Cloud.)

>[!NOTE]
>
>Vous pouvez mapper plusieurs groupes de solutions à un groupe Admin Console. Adobe recommande toutefois un mappage 1:1. Le mappage préalable des groupes vous permet d’inviter, de créer, d’autoriser et d’ajouter plusieurs utilisateurs en chargeant un fichier CSV.