---
title: 'Prise en charge des attributs du client pour le RGPD (Règlement général sur la protection des données) '
description: En savoir plus sur la prise en charge des attributs du client pour la réglementation générale de la protection des données
translation-type: tm+mt
source-git-commit: 3f26c1af19a0838913eec2b4135304f5f3fcf0b4
workflow-type: tm+mt
source-wordcount: '432'
ht-degree: 97%

---


# Prise en charge des attributs du client pour le Règlement général sur la protection des données

Cette page décrit comment les attributs du client prennent en charge le Règlement général sur la protection des données (RGPD).

>[!IMPORTANT]
>
>Le contenu de ce document ne constitue pas un avis juridique et ne vise pas à remplacer un avis juridique. Consultez votre service juridique pour obtenir des conseils concernant le RGPD.

Le [Règlement général sur la protection des données](https://www.adobe.com/fr/privacy/general-data-protection-regulation/what-is-gdpr.html), qui est entré en vigueur le 25 mai 2018, donne à tous les particuliers (personnes concernées) à l’intérieur des frontières de l’Union européenne (UE) le contrôle de leurs données à caractère personnel. Il simplifie également l’environnement réglementaire pour le commerce international. Cette loi s’applique à toutes les entreprises (contrôleur de données) qui offrent des biens ou des services consistant à contrôler le comportement de ou à collecter des données personnelles sur, des individus situés à l’intérieur des frontières de l’UE, au moment du traitement de leurs données à caractère personnel, quel que soit le lieu d’activité du contrôleur de données.

Adobe Experience Cloud agit en tant que responsable du traitement de données pour toutes les données personnelles qu’il reçoit et stocke pour le compte de ses clients. En tant que contrôleur de données, vous déterminez les données personnelles qu’Adobe Experience Cloud traite et stocke pour vous.

Ce document décrit comment les [!UICONTROL attributs du client] prennent en charge les droits d’accès et de suppression des données des personnes concernées selon le RGPD à l’aide de l’API Adobe Experience Platform Privacy Service et de l’interface utilisateur Privacy Service.

Pour plus d’informations sur ce que le RGPD signifie pour votre entreprise, consultez [RGPD et votre entreprise](https://www.adobe.com/fr/privacy/general-data-protection-regulation.html).

## Configuration requise pour envoyer des requêtes relatives aux [!UICONTROL attributs du client]

Pour envoyer des requêtes d’accès et de suppression de données pour les [!UICONTROL attributs du client], vous devez :

1. Identifier les éléments suivants :

   * Identifiant de l’organisation IMS
   * ID d’alias de la source de données CRS sur laquelle vous souhaitez agir
   * ID de gestion de la relation client (CRM) du profil sur lequel vous souhaitez agir

   Un identifiant de l’organisation IMS est une chaîne alphanumérique de 24 caractères à laquelle est ajouté @AdobeOrg. Si votre équipe marketing ou votre administrateur système Adobe interne ne connaît pas l’identifiant de l’organisation IMS de votre entreprise, contactez l’Assistance clientèle Adobe à l’adresse gdprsupport@adobe.com. Vous aurez besoin de l’identifiant de l’organisation IMS pour envoyer des requêtes à l’API de confidentialité.

1. Dans [!UICONTROL Privacy Service], vous pouvez envoyer des requêtes d’accès et de suppression aux attributs du client, et vérifier le statut des requêtes existantes.

## Valeurs de champ requises dans les requêtes JSON relatives aux [!UICONTROL attributs du client]

« contexte de société » :

* « espace de noms » : **imsOrgID**
* « value » : &lt;*votre valeur d’identifiant de l’organisation IMS*>

« utilisateurs » :

* « clé » : &lt;*habituellement le nom du client*>

* « action » : **accès** ou **suppression**

* « identifiants d’utilisateurs » :

   * « espace de noms » : &lt;*ID d’alias de la source de données CRS*>

   * « type » : **integrationCode**

   * « valeur » : &lt;*ID CRM*>

* « inclure » : **CRS** (qui est le produit Adobe qui s’applique à la requête)

* « réglementation » : **gdpr** (qui est le règlement sur la protection des données confidentielles qui s’applique à la requête)

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
