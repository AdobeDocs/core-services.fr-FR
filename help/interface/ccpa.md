---
title: 'Prise en charge des attributs du client pour le California Consumer Privacy Act '
description: Découvrez la prise en charge des attributs du client pour le California Consumer Privacy Act
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 320defc7-2cd5-4481-955d-77cf6fbfef6d
source-git-commit: 55c81003b94b7e033cddb6854b5c1f1c1ffa199c
workflow-type: tm+mt
source-wordcount: '418'
ht-degree: 90%

---

# Prise en charge des attributs du client pour le California Consumer Privacy Act

Cette page décrit la prise en charge des [!UICONTROL attributs du client] pour le California Consumer Privacy Act (CCPA).

>[!IMPORTANT]
>
>Le contenu de ce document ne constitue pas un avis juridique et ne vise pas à en remplacer un. Consultez votre service juridique pour obtenir des conseils concernant le CCPA.

Le CCPA est la nouvelle loi californienne sur la protection des données confidentielles, qui est entrée en vigueur le 1er janvier 2020. Le CCPA accorde aux résidents de Californie de nouveaux droits concernant leurs données confidentielles et impose des responsabilités en matière de protection des données à certaines entités qui exercent leurs activités en Californie. Le CCPA accorde aux consommateurs le droit d’accéder à leurs informations personnelles et de les supprimer ainsi que le droit de se désinscrire de certaines activités qualifiées de « vente » d’informations personnelles à un tiers.

En tant qu’entreprise, vous déterminez les données personnelles qu’Adobe Experience Cloud traite et stocke en votre nom.

En tant que fournisseur, Adobe Experience Cloud fournit une assistance à votre entreprise afin qu’elle remplisse ses obligations en vertu du CCPA, obligations qui s’appliquent à l’utilisation des produits et services Experience Cloud. Cette assistance inclut la gestion des demandes d’accès et de suppression des informations personnelles.

Ce document décrit comment les [!UICONTROL attributs du client] prennent en charge les droits d’accès et de suppression des données CCPA de vos clients à l’aide de l’API et de l’interface utilisateur d’Adobe Experience Platform Privacy Service.

Pour plus d’informations sur les services de confidentialité Adobe pour le CCPA, consultez le [Centre de traitement des données personnelles d’Adobe](https://www.adobe.com/privacy/ccpa.html).

## Configuration requise pour envoyer des requêtes relatives aux [!UICONTROL attributs du client]

Pour envoyer des demandes d’accès et de suppression de données pour les [!UICONTROL attributs du client], vous devez :

1. Identifier les éléments suivants :

   * [Organization ID (ID d’organisation)](#organizations.md)
   * ID d’alias de la source de données CRS sur laquelle vous souhaitez agir
   * ID de gestion de la relation client (CRM) du profil sur lequel vous souhaitez agir

   Votre [ID d’organisation](#organizations.md) est une chaîne alphanumérique de 24 caractères accompagnée de @AdobeOrg. Vous avez besoin de l’ID d’organisation pour envoyer des demandes à l’API de confidentialité. Contactez l’assistance clientèle d’Adobe à l’adresse `gdprsupport@adobe.com` si vous ne parvenez pas à localiser l’identifiant.

1. Dans [!UICONTROL Privacy Service], vous pouvez envoyer des requêtes d’accès et de suppression aux attributs du client, et vérifier le statut des requêtes existantes.

## Valeurs de champ requises dans les demandes JSON relatives aux [!UICONTROL attributs du client]

&quot;company context&quot; :

* &quot;namespace&quot; : **imsOrgID**
* &quot;value&quot; : &lt;*valeur de l’ID d’organisation*>

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

```
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

```
attributes:
{
"value”:<*value*>,
"key”:<*key*>,
"displayName”:<*displayName*>
}
```
