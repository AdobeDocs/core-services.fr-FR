---
title: Prise en charge des attributs du client pour la réglementation générale de la protection des données
description: Prise en charge des attributs du client pour la réglementation générale de la protection des données
translation-type: tm+mt
source-git-commit: 3a86aed0794c3e35cc028e5bfde5dafcb2285fc8
workflow-type: tm+mt
source-wordcount: '426'
ht-degree: 5%

---


# Prise en charge des attributs du client pour la réglementation générale de la protection des données


>[!IMPORTANT]
>
>Le contenu de ce document ne constitue pas un avis juridique et ne vise pas à remplacer un avis juridique. Consultez votre conseiller juridique pour obtenir des conseils concernant le Règlement général sur la protection des données.

Le règlement [](https://www.adobe.com/privacy/general-data-protection-regulation/what-is-gdpr.html) général sur la protection des données (RGPD), en vigueur depuis le 25 mai 2018, donne à toutes les personnes (personnes concernées) à l&#39;intérieur des frontières de l&#39;Union européenne (UE) le contrôle de leurs données à caractère personnel et simplifie l&#39;environnement réglementaire pour le commerce international. Cette loi s&#39;applique à toutes les entreprises (contrôleurs de données) qui offre des biens ou des services à des individus situés à l&#39;intérieur des frontières de l&#39;UE, qui contrôlent leur comportement ou collectent des données à caractère personnel au moment du traitement de leurs données à caractère personnel, quel que soit le lieu d&#39;activité du contrôleur de données.

Adobe Experience Cloud agit en tant que traitement de données pour toutes les données personnelles qu’il reçoit et stocke pour le compte de ses clients. En tant que contrôleur de données, vous déterminez les données personnelles traitées et stockées par Adobe Experience Cloud en votre nom.

Ce document décrit comment les attributs du client prennent en charge les droits d’accès aux données GDPR de vos sujets de données et les droits de suppression à l’aide de l’API et de l’interface utilisateur d’Adobe Experience Platform Privacy Service.

Pour plus d&#39;informations sur ce que le RGMD signifie pour votre entreprise, consultez [RGMD et Votre entreprise](https://www.adobe.com/fr/privacy/general-data-protection-regulation.html).

## Configuration requise pour envoyer des requêtes pour les attributs du client

Pour envoyer des demandes d’accès et de suppression de données pour les attributs du client, vous devez :

1. Identifiez les éléments suivants :

* Identifiant de l’organisation IMS
* ID d&#39;alias de la source de données CRS sur laquelle vous souhaitez agir
* ID de gestion de la relation client du profil sur lequel vous souhaitez agir

Un ID d’organisation IMS est une chaîne alphanumérique de 24 caractères annexée à @AdobeOrg. Si votre équipe marketing ou votre administrateur système interne Adobe ne connaît pas l’ID d’organisation IMS de votre entreprise, contactez le service à la clientèle Adobe à l’adresse gdprsupport@adobe.com. Vous aurez besoin de l’ID d’organisation IMS pour envoyer des requêtes à l’API de confidentialité.

2. Utilisez l’interface utilisateur de Privacy Service pour envoyer des demandes d’accès et de suppression aux attributs du client, ainsi que pour vérifier l’état des demandes existantes.

## Valeurs de champ requises dans les demandes JSON d’attributs du client

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

* &quot;réglementation&quot; : **gdpr** (qui est le règlement sur la protection des renseignements personnels qui s&#39;applique à la demande)

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

## Champs de données renvoyés pour les demandes d&#39;accès

```
attributes:
{
"value”:<*value*>,
"key”:<*key*>,
"displayName”:<*displayName*>
}
```
