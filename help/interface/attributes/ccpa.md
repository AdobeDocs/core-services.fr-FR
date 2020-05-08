---
title: Customer Attributs Support for California Consumer Privacy Act
description: Customer Attributs Support for California Consumer Privacy Act
translation-type: tm+mt
source-git-commit: 8709449909ce4fbd441d77fb4bbfb0b7758e805d
workflow-type: tm+mt
source-wordcount: '433'
ht-degree: 4%

---


# Prise en charge des attributs du client pour la California Consumer Privacy Act

Cette page décrit la prise en charge des attributs  du client par la California Consumer Privacy Act (CCPA).

>[!IMPORTANT]
>
>Le contenu de ce document ne constitue pas un avis juridique et ne vise pas à remplacer un avis juridique. Consultez votre conseiller juridique pour obtenir des conseils concernant l&#39;ACFPC.

L’ACCP est la nouvelle loi californienne sur la protection des renseignements personnels, qui entre en vigueur le 1er janvier 2020. L&#39;ACCP accorde aux résidents de Californie de nouveaux droits concernant leurs renseignements personnels et impose des responsabilités en matière de protection des données à certaines entités qui font des affaires en Californie. L&#39;ACPCS accorde aux consommateurs le droit d&#39;accéder à leurs renseignements personnels et de les supprimer ainsi que le droit de opt-out de certaines activités qui sont admissibles à la &quot;vente&quot; de renseignements personnels à un tiers.

En tant qu’entreprise, vous déterminerez les données personnelles traitées et stockées par Adobe Experience Cloud en votre nom.

En tant que prestataire, Adobe Experience Cloud fournit une assistance à votre entreprise afin qu’elle puisse s’acquitter de ses obligations en vertu de l’ACCP qui s’appliquent à l’utilisation des produits et services Experience Cloud, y compris la gestion des demandes d’accès et de suppression d’informations personnelles.

Ce document décrit comment les attributs  clients prennent en charge les droits d’accès et de suppression des données CCPA de vos personnes à l’aide de l’API et de l’interface utilisateur d’Adobe Experience Platform Privacy Service.

Pour plus d’informations sur les services de confidentialité d’Adobe pour CCPA, voir le Centre [de confidentialité d’](https://www.adobe.com/privacy/ccpa.html)Adobe.

## Configuration requise pour envoyer des demandes d’attributs [!UICONTROL client]

Pour envoyer des demandes d’accès et de suppression de données pour les attributs du client, vous devez :

1. Identifiez les éléments suivants :

   * Identifiant de l’organisation IMS
   * ID d&#39;alias de la source de données CRS sur laquelle vous souhaitez agir
   * ID de gestion de la relation client du profil sur lequel vous souhaitez agir
   Un ID d’organisation IMS est une chaîne alphanumérique de 24 caractères annexée à @AdobeOrg. Si votre équipe marketing ou votre administrateur système interne Adobe ne connaît pas l’ID d’organisation IMS de votre entreprise, contactez le service à la clientèle Adobe à l’adresse gdprsupport@adobe.com. Vous aurez besoin de l’ID d’organisation IMS pour envoyer des requêtes à l’API de confidentialité.

1. Dans [!UICONTROL Privacy Service], vous pouvez envoyer des requêtes d’accès et de suppression aux attributs du client, et vérifier l’état des requêtes existantes.

## Valeurs de champ requises dans les requêtes JSON d’attributs  client

&quot;contexte de société&quot; :

* &quot;espace de nommage&quot; : **imsOrgID**
* &quot;value&quot; : &lt;*votre valeur* d’ID d’organisation IMS>

&quot;users&quot; :

* &quot;key&quot; : &lt;*habituellement le nom du client*>

* &quot;action&quot; : **accès** ou **supprimer**

* &quot;ID utilisateur&quot; :

   * &quot;espace de nommage&quot; : &lt;ID *d&#39;alias de la source* de données CRS>

   * &quot;type&quot; : **integrationCode**

   * &quot;value&quot; : &lt;ID ** CRM>

* &quot;include&quot; : **CRS** (qui est le produit Adobe qui s’applique à la demande)

* &quot;réglementation&quot; : **ccpa** (qui est le règlement sur la protection des renseignements personnels qui s&#39;applique à la demande)

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

## Champs de données renvoyés pour les demandes d’accès

```
attributes:
{
"value”:<*value*>,
"key”:<*key*>,
"displayName”:<*displayName*>
}
```
