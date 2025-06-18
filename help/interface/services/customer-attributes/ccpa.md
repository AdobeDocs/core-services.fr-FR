---
title: Prise en charge des attributs du client pour la Loi sur la protection des informations personnelles des consommateurs de Californie
description: En savoir plus sur la prise en charge des attributs du client pour la Loi sur la confidentialité des consommateurs de Californie
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 320defc7-2cd5-4481-955d-77cf6fbfef6d
source-git-commit: 361175f290d73f1637673420700874a2415e3fca
workflow-type: tm+mt
source-wordcount: '415'
ht-degree: 57%

---

# Prise en charge des attributs du client pour la Loi sur la protection des informations personnelles des consommateurs de Californie

Cette page décrit la prise en charge [!UICONTROL attributs du client] de la Loi sur la protection des informations personnelles des consommateurs de Californie (CCPA).

>[!IMPORTANT]
>
>Le contenu de ce document ne constitue pas un avis juridique et ne vise pas à en remplacer un. Consultez votre service juridique pour obtenir des conseils concernant le CCPA.

Le CCPA est la nouvelle loi californienne sur la protection des renseignements personnels, qui entre en vigueur le 1er janvier 2020. Le CCPA accorde aux résidents de Californie de nouveaux droits concernant leurs données confidentielles et impose des responsabilités en matière de protection des données à certaines entités qui exercent leurs activités en Californie. Le CCPA accorde aux consommateurs le droit d’accéder à leurs informations personnelles et de les supprimer, ainsi que le droit de se désinscrire de certaines activités qualifiées de « vente » d’informations personnelles à un tiers.

En tant qu’entreprise, vous déterminez les données personnelles qu’Adobe Experience Cloud traite et stocke en votre nom.

En tant que fournisseur, Adobe Experience Cloud fournit une assistance à votre entreprise afin qu’elle remplisse ses obligations en vertu du CCPA, obligations qui s’appliquent à l’utilisation des produits et services Experience Cloud. Cette assistance inclut la gestion des demandes d’accès et de suppression des informations personnelles.

Ce document décrit comment les [!UICONTROL attributs du client] prennent en charge les droits d’accès et de suppression des données CCPA de vos clients à l’aide de l’API Adobe Experience Platform Privacy Service et de l’interface utilisateur de Privacy Service.

Pour plus d’informations sur les services de confidentialité Adobe pour le CCPA, consultez le [Centre de traitement des données personnelles d’Adobe](https://www.adobe.com/privacy/ccpa.html).

## Configuration requise pour envoyer des demandes d’[!UICONTROL attributs du client]

Pour envoyer des demandes d’accès et de suppression de données pour [!UICONTROL attributs du client], vous devez :

1. Identifier les éléments suivants :

   * [ID d’organisation](../../administration/organizations.md)
   * ID d’alias de la source de données CRS sur laquelle vous souhaitez agir
   * ID de gestion de la relation client (CRM) du profil sur lequel vous souhaitez agir

   L’ID d’organisation consiste en une chaîne alphanumérique de 24 caractères suivie de @AdobeOrg. Vous avez besoin de l’ID d’organisation pour envoyer des requêtes à l’API Privacy. Contactez l’assistance clientèle d’Adobe à l’adresse `gdprsupport@adobe.com` si vous ne parvenez pas à localiser l’ID.

1. Dans [!UICONTROL Privacy Service], vous pouvez envoyer des demandes d&#39;accès et de suppression aux attributs du client et vérifier le statut des demandes existantes.

## Valeurs de champ obligatoires dans les [!UICONTROL attributs du client] requêtes JSON

&quot;company context&quot; :

* &quot;namespace&quot; : **imsOrgID**
* « value » : &lt;*valeur de l&#39;identifiant de votre organisation*>

&quot;users&quot; :

* &quot;key&quot; : &lt;*habituellement le nom du client*>
* &quot;action&quot; : **accès** « access » ou **suppression** « delete »
* &quot;user IDs&quot; :
   * &quot;namespace&quot; : &lt;*ID d’alias de la source de données CRS*>
   * &quot;type&quot; : **integrationCode**
   * &quot;value&quot; : &lt;*ID CRM*>
* &quot;include&quot; : **CRS** (qui est le produit Adobe qui s’applique à la requête)
* &quot;regulation&quot; : **ccpa** (qui est le règlement sur la protection des données confidentielles qui s’applique à la requête)

## Exemple de requête JSON

```json
{
  "companyContexts": [
    {
      "namespace": "imsOrgID",
      "value": "<IMS_ORG_ID>"
    }
  ],
  "users": [
    {
      "key": "<KEY>",
      "action": [
        "<access/delete>"
      ],
      "userIDs": [
        {
          "namespace": "<Alias ID of CRS Data Source>",
          "type": "integrationCode",
          "value": "<CRM ID>"
        }
      ]
    }
  ],
  "regulation": "<gdpr/ccpa/pdpa>",
  "include": [
    "CRS"
  ]
}
```

## Champs de données renvoyés pour les requêtes d’accès

```json
attributes:
{
"value": "<*value*>",
"key": "<*key*>",
"displayName": "<*displayName*>"
}
```
