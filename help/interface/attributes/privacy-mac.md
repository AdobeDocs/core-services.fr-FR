---
description: Considérations et bonnes pratiques relatives aux informations d’identification personnelle transférées et utilisées dans Adobe Experience Cloud.
keywords: attributs du client ; services principaux
seo-description: Considérations et bonnes pratiques relatives aux informations d’identification personnelle transférées et utilisées dans Adobe Experience Cloud.
seo-title: Considérations relatives à la confidentialité - attributs du client
solution: Experience Cloud
title: Considérations relatives à la confidentialité - attributs du client
uuid: 5666 dc 4 e -55 fa -4196-9985-cf 530 cfb 9247
translation-type: tm+mt
source-git-commit: 979b2202a70e2a5362aa86a65a17d7c4279b3a1a

---


# Considérations relatives à la confidentialité - attributs du client

Considérations et bonnes pratiques relatives aux informations d’identification personnelle transférées et utilisées dans Adobe Experience Cloud.


<!-- <p>https://wiki.corp.adobe.com/display/omtrplatform/Visitor+Enrichment+and+privacy#VisitorEnrichmentandprivacy-INFORMATIONASSOCIATIONOPTIONS </p> -->


* Prénom et nom
* Adresse du domicile ou autre adresse physique
* Adresse électronique
* Numéro de téléphone
* Numéro de sécurité sociale
* Autre information permettant de contacter physiquement ou en ligne un individu (varie selon les régions ; vérifiez la législation et les réglementations en vigueur au sujet de la confidentialité et des informations d’identification personnelle pour tous les lieux où vous faites affaire)


Adobe fournit des outils grâce auxquels les publicitaires peuvent recueillir des informations sur le comportement des visiteurs de leurs sites ou des utilisateurs de leurs applications. Par ailleurs, les publicitaires peuvent utiliser d’autres outils d’Adobe pour compléter ces informations avec des dossiers hors ligne ou externes sur les usagers qu’ils détiennent déjà dans d’autres systèmes de gestion de l’information.

Souvent, les publicitaires ont recours à cette pratique pour préciser les informations disponibles au moment de prendre des décisions marketing et publicitaires appropriées pour leurs clients. Avec Adobe Analytics et Target, les publicitaires peuvent transférer des informations d’identification personnelle (adresses électroniques par exemple) uniquement une fois qu’elles ont été hachées afin qu’il soit impossible de les utiliser pour contacter la personne qu’elles concernent. Il est possible d’utiliser les informations hachées à des fins d’analyse et de marketing. À titre de rappel, Adobe interdit aux publicitaires de lui envoyer des données sensibles, par exemple des dossiers médicaux, des informations de compte financières et des informations sur les mineurs.

Adobe réalise que ces types de décisions marketing et publicitaires peuvent avoir des implications sur la vie privée des utilisateurs. C’est pourquoi elle a mis en place des mesures de protection de la vie privée afin d’aider les publicitaires à satisfaire les attentes de leurs clients. Adobe recommande aux publicitaires de bien réfléchir aux informations appropriées à des fins marketing et aux circonstances dans lesquels ils peuvent utiliser de telles informations.

**Meilleures pratiques**

Adobe recommande de hacher les informations d’identification personnelle avant de les transférer vers Adobe Analytics ou Target. Il est possible d’utiliser les informations hachées à des fins d’analyse et de marketing. À titre de rappel, Adobe interdit aux publicitaires d’envoyer des données sensibles à Adobe Analytics et Target, par exemple des dossiers médicaux, des informations de compte financières et des informations sur les mineurs.

Adobe recommande aux publicitaires de bien réfléchir aux informations appropriées à des fins marketing et aux circonstances dans lesquels ils peuvent utiliser de telles informations.

La loi relative à la protection de la vie privée ne cessant d’évoluer, Adobe recommande aux publicitaires de respecter trois principes simples :

1. Faites ce que vous dites (dans votre politique de confidentialité).
1. Dites ce que vous faites (dans votre politique de confidentialité).
1. Ne surprenez pas vos clients.

En tenant compte de ceci, Adobe recommande que lorsqu’il associe des activités de navigation à des informations d’identification personnelle, le publicitaire indique par un avis ou autre que le client est authentifié, en incluant par exemple un message de bienvenue dans l’en-tête du site web. Adobe préconise également aux publicitaires de décrire dans leur politique de confidentialité quel type d’informations de navigation sont associées aux informations d’identification personnelle et dans quelles circonstances elles le sont. Enfin, Adobe recommande vivement aux publicitaires de passer en revue les choix de désinscription qu’ils proposent à leurs clients afin de comprendre si et comment ils peuvent utiliser les informations de profil non authentifiées après désinscription.

<!-- <p> <b>Vinay Geol</b> should help craft privacy regarding how all MAC uses privacy/cookies. Privacy implications around each part of the workflow. Moving from CRM to MAC. Can it include PII? What is PII? What isn't PII? </p> 
<p>CRM data is Known Data or Info. Going to combine with activity that occurs when visitor was not authenticated. PII wiki: </p> 
<p>https://wiki.corp.adobe.com/display/omtrplatform/Visitor+Enrichment+and+privacy#VisitorEnrichmentandprivacy-INFORMATIONASSOCIATIONOPTIONS </p> 
<p>Refactoring of implementation docs as it relates to privacy and cookies. </p> 
<p>Add content to https://marketing.adobe.com/resources/help/en_US/mcloud/t-publish-audience-segment.html, as follows: </p> 
<p> Audiences are not filtered based on the authentication state of a visitor. If a visitor can browse your site in un-authenticated and authenticated states, actions that occur when a visitor is un-authenticated can still cause a visitor to be included in an audience. Please review <link> to understand the full privacy implications of audience sharing. </p> 
<p>That "link" goes to a topic dedicated to PII, with this text: </p> 
<p> - Adobe Analytics allows its advertisers to upload personally identifiable information (PII) such as email addresses. When uploading PII to Adobe Analytics, Adobe recommends that the customer should hash PII prior to uploading it to Adobe. Hashed information can still be used for analysis and for marketing purposes. As a reminder, Adobe prohibits advertisers from sending sensitive personal information to Adobe Analytics, such as medical records, financial account information, and information about minors. </p> 
<p> - Adobe recommends its advertisers carefully consider which information is appropriate to use for marketing purposes and in which circumstances the advertiser has permission to use such information. </p> 
<p> - As consumer privacy law remains in flux, Adobe recommends that advertisers respect three common tenets: 1) Do what you say (in your privacy policy); 2) Say what you do (in your privacy policy); and 3) Don't surprise your consumers. </p> 
<p> - With these expectations in mind, Adobe recommends that when an advertiser associates browsing activities to PII, the advertiser provide notices/personalization indicating that the consumer is authenticated. An example of this is including a 'Hello, Jane' greeting within the header of the website. Adobe also recommends that advertisers describe in its privacy policy what type of browsing information it associates with PII and under what circumstances browsing information is associated with PII. Lastly, Adobe strongly recommends advertisers review the opt out choices they provide their consumers to understand whether and how they can use unauthenticated profile information post opt out. </p> 
<p>Possibly revamp the cookies to include privacy, with best practices: https://marketing.adobe.com/resources/help/en_US/whitepapers/cookies/ </p> -->
