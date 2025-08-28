---
title: Prise en charge [!DNL Customer attributes] du règlement général sur la protection des données
description: Découvrez la prise en charge des attributs du client pour le Règlement général sur la protection des données
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 02417c0c-6780-4699-9470-f1685c3cd25d
source-git-commit: 21120abb5ab0fcc8d556012851548f39f3875038
workflow-type: tm+mt
source-wordcount: '394'
ht-degree: 95%

---

# Prise en charge des [!DNL Customer Attributes] pour le Règlement général sur la protection des données

Cette page décrit comment les [!DNL Customer Attributes] prennent en charge le Règlement général sur la protection des données (RGPD).

>[!IMPORTANT]
>
>Le contenu de ce document ne constitue pas un avis juridique et ne vise pas à remplacer un avis juridique. Consultez votre service juridique pour obtenir des conseils concernant le RGPD.

Le [Règlement général sur la protection des données](https://business.adobe.com/fr/privacy/general-data-protection-regulation.html), qui est entré en vigueur le 25 mai 2018, donne à tous les particuliers (titulaires de données) à l’intérieur des frontières de l’Union européenne (UE) le contrôle de leurs données à caractère personnel. Il simplifie également l’environnement réglementaire pour le commerce international. Cette loi s’applique à toutes les entreprises (contrôleur de données) qui offrent des biens ou des services consistant à contrôler le comportement de ou à collecter des données personnelles sur, des individus situés à l’intérieur des frontières de l’UE, au moment du traitement de leurs données à caractère personnel, quel que soit le lieu d’activité du contrôleur de données.

Adobe Experience Cloud agit en tant que responsable du traitement de données pour toutes les données personnelles qu’il reçoit et stocke pour le compte de ses clients. En tant que contrôleur de données, vous déterminez les données personnelles qu’Adobe Experience Cloud traite et stocke pour vous.

Ce document décrit comment les [!DNL Customer Attributes] prennent en charge les droits d’accès et de suppression des données des personnes titulaires de données selon le RGPD à l’aide de l’API Adobe Experience Platform Privacy Service et de l’interface utilisateur Privacy Service.

Pour plus d’informations sur ce que le RGPD signifie pour votre entreprise, consultez [RGPD et votre entreprise](https://business.adobe.com/fr/privacy/general-data-protection-regulation.html).

## Configuration requise pour envoyer des demandes relatives aux [!DNL Customer Attributes]

Pour envoyer des demandes d’accès et de suppression de données pour les [!DNL Customer Attributes], vous devez procéder comme suit :

1. Identifier les éléments suivants :

   * [ID d’organisation](../../administration/organizations.md)
   * ID d’alias de la source de données CRS sur laquelle vous souhaitez agir
   * ID de gestion de la relation client (CRM) du profil sur lequel vous souhaitez agir

   Votre [ID d’organisation](../../administration/organizations.md) consiste en une chaîne alphanumérique de 24 caractères suivie de @AdobeOrg. Vous avez besoin de l’ID d’organisation pour envoyer des requêtes à l’API Privacy. Contactez l’assistance clientèle d’Adobe à l’adresse `gdprsupport@adobe.com` si vous ne parvenez pas à localiser l’ID.

1. Dans [!UICONTROL Privacy Service], vous pouvez envoyer des demandes d’accès et de suppression pour les [!DNL Customer Attributes], et vérifier le statut des demandes existantes.

## Valeurs de champ requises dans les demandes JSON relatives aux [!DNL Customer Attributes]

&quot;company context&quot; :

* &quot;namespace&quot; : **imsOrgID**
* &quot;value&quot; : &lt;*votre valeur d’identifiant de l’organisation IMS*>

&quot;users&quot; :

* &quot;key&quot; : &lt;*habituellement le nom du client*>
* &quot;action&quot; : **accès** « access » ou **suppression** « delete »
* &quot;user IDs&quot; :
   * &quot;namespace&quot; : &lt;*ID d’alias de la source de données CRS*>
   * &quot;type&quot; : **integrationCode**
   * &quot;value&quot; : &lt;*ID CRM*>
* &quot;include&quot; : **CRS** (qui est le produit Adobe qui s’applique à la requête)
* &quot;regulation&quot; : **gdpr** (qui est le règlement sur la protection des données confidentielles qui s’applique à la requête)

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
