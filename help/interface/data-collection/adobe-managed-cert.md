---
description: Découvrez comment configurer des certificats sécurisés à utiliser avec les cookies propriétaires de Adobe CX Enterprise.
solution: Experience Cloud,Analytics
title: Programme de certificat géré par Adobe
index: true
snippet: 'y'
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: e15abde5-8027-4aed-a0c1-8a6fc248db5e
autotag-review: '2026-09-09T20:12:24.943Z'
TQID: 'https://experienceleague.adobe.com/8CSBLQaw3KOByyxxCYr1By4gyAQsDIhiofOdAzn38dg'
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
    internal-label: CX Enterprise
  - id: e55547f1-a1ff-40c6-8978-026e40ab7fa4
    internal-label: Analytics
feature_v2:
  - id: b3f03848-ae12-48b2-8aab-cad18567eb32
    internal-label: Metrics
  - id: e9dbdbc5-3e52-40f0-a7bc-e18542967b7a
    internal-label: Implementations
  - id: fd307ce7-56f5-4ee3-af68-a7833ff6e85e
    internal-label: API
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
    internal-label: Administration
subfeature_v2:
  - id: b75843fa-0a67-4a44-a6b1-cc627b0481dc
    internal-label: Support
  - id: c8add8f2-4250-4fd9-9cde-9707036c567d
    internal-label: Methods
  - id: d2311670-43bd-4c2e-bc98-1da2aaba9cef
    internal-label: Appmeasurement implementation
  - id: e992d880-33bc-4949-a648-aa7d410276cd
    internal-label: Validation
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
  - id: bce87dde-a4ab-44c9-8a18-ad66e4ddb377
    internal-label: Customer experience
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
    internal-label: Troubleshooting
  - id: c2be0313-b3ae-45e0-b454-d20bf54b23f2
    internal-label: Measurement
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
    internal-label: Security
  - id: d3cdead0-685a-4489-9250-4bb709942f66
    internal-label: Data collection
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
    internal-label: Administration
source-git-commit: 18fd590d6f0fd1800e3d5c62851453aa91d9db5f
workflow-type: tm+mt
source-wordcount: '1055'
ht-degree: 2%
---
# Programme de certificat géré par Adobe

Le programme de certificat géré par Adobe est le processus recommandé pour configurer des certificats propriétaires nécessaires à une implémentation CNAME. Le programme est entièrement automatisé une fois configuré. Il renouvelle les certificats en temps opportun afin qu’il n’y ait aucun impact sur la collecte de données en raison de certificats expirés. Le programme est gratuit pour vos 100 premiers CNAME.

Le programme de certificat géré par Adobe ne prend pas en charge la collecte de données de routage via un réseau de diffusion de contenu (CDN). Si vous utilisez un réseau CDN, voir [Acheminer la collecte de données via un réseau CDN](cdn.md). Les organisations qui doivent gérer leurs propres certificats peuvent utiliser [certificats gérés par le client](customer-managed-cert.md) à la place. Si vous gérez actuellement vos propres certificats et souhaitez passer au programme de certificat géré par Adobe, contactez l’assistance clientèle d’Adobe.

## Implémentation

Pour implémenter un nouveau certificat pour la collecte de données propriétaire, procédez comme suit :

1. Téléchargez et remplissez le [Formulaire de demande de domaine propriétaire](cookies/assets/First_Party_Domain_Request_Form.xlsx)
1. Ouvrez un ticket auprès de l’assistance clientèle d’Adobe afin de configurer la collecte de données propriétaire sur le programme de certificat géré par Adobe. Si votre organisation a des exigences de résidence des données ou de conformité, indiquez le [type de collecte de données régionale](rdc.md) souhaité dans votre demande.
1. À la réception du ticket, le représentant Adobe vous fournit un enregistrement CNAME. Cet enregistrement doit être configuré sur le serveur DNS de votre entreprise avant qu’Adobe puisse acheter le certificat en votre nom. Par exemple, le nom d’hôte `data.example.com` pointe vers `hiodsibxvip01.data.adobedc.net`. Si votre entreprise utilise des enregistrements d’autorisation d’autorité de certification (CAA) DNS, assurez-vous que vos enregistrements CAA permettent à DigiCert d’émettre des certificats. Voir [Maintenance et renouvellements](#renewals).
1. Lorsque l’enregistrement CNAME est en place sur les serveurs de votre organisation, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de collecte de données Adobe.
1. Si vous avez besoin d’une mise à jour de votre fichier `robots.txt` lorsqu’il est hébergé par Adobe CNAME à des fins propriétaires, contactez l’assistance clientèle avec une demande. Une telle requête est pertinente lorsque vous souhaitez mettre à jour le fichier `robots.txt` pour empêcher Google d’explorer à vos sous-domaines.

## Validation du transfert du nom d’hôte

Une fois le certificat installé par Adobe, vous pouvez utiliser l’une des méthodes suivantes pour vérifier qu’il fonctionne.

+++**Validation du navigateur**

Vous pouvez utiliser n’importe quel navigateur pour vérifier qu’un certificat est correctement installé. Saisissez votre CNAME avec `_check` comme chemin d’accès dans la barre d’adresse. Par exemple :

`data.example.com/_check`

Si tout fonctionne, le navigateur affiche `SUCCESS`. Si le certificat n’est pas installé correctement, un avertissement de sécurité s’affiche.

+++

+++**Ligne de commande (`curl`)**

La plupart des systèmes d&#39;exploitation modernes ont déjà [`curl`](https://curl.se) installés.

Saisissez ce qui suit dans la ligne de commande :

```sh
curl data.example.com/_check
```

Si tout fonctionne correctement, la console renvoie des `SUCCESS`.

>[!TIP]
>
>Vous pouvez utiliser l’indicateur `-k` pour désactiver l’avertissement de sécurité afin de faciliter la résolution des problèmes.

+++

+++**Ligne de commande (`nslookup`)**

Saisissez ce qui suit dans la ligne de commande :

```sh
nslookup data.example.com
```

Si tout fonctionne correctement, les serveurs de collecte de données d’Adobe sont renvoyés :

```text
Server: hiodsibxvip01.corp.adobe.com
Address: 10.50.112.247

Name: example.com.ssl.d1.sc.omtrdc.net
Addresses: 63.140.37.126
    63.140.37.206
    63.140.36.51
    63.140.36.145
Aliases: data.example.com
```

+++

## Mettre à jour le code de mise en œuvre

Pour utiliser votre nouveau nom d’hôte CNAME, mettez à jour votre implémentation Adobe une fois que vous avez validé le bon fonctionnement de votre certificat. Voir [Mise à jour de l’implémentation](collection-domain.md#update-implementation).

## Maintenance et renouvellements {#renewals}

Adobe renouvelle automatiquement votre certificat. Trente jours avant l’expiration de votre certificat, Adobe vérifie que le CNAME est toujours valide et en cours d’utilisation, puis renouvelle le certificat en votre nom. Pour que les renouvellements continuent de fonctionner, évitez les modifications DNS suivantes :

* **Suppression ou repointage de votre enregistrement CNAME** : si l’enregistrement CNAME est supprimé ou ne pointe plus vers le nom d’hôte sécurisé Adobe, Adobe ne peut pas renouveler le certificat. Cette condition inclut le pointage de l’enregistrement CNAME vers un réseau de diffusion de contenu (CDN). Si vous prévoyez d’utiliser un réseau CDN, voir [Déplacer une implémentation propriétaire existante vers un réseau CDN](cdn.md#migrate) avant de modifier vos enregistrements DNS.
* **Ajout d’enregistrements CAA qui n’autorisent pas DigiCert** : les autorités de certification vérifient les enregistrements d’autorisation de l’autorité de certification (CAA) sur votre nom d’hôte et ses domaines parents. Si vous utilisez des enregistrements CAA, incluez `digicert.com` en tant qu&#39;émetteur autorisé. Par exemple : `example.com. IN CAA 0 issue "digicert.com"`.
* **Limitation de l’émission de DigiCert à un compte spécifique** : la fonction de verrouillage de domaine de DigiCert ajoute un paramètre `account=` à un enregistrement CAA, tel que `example.com. IN CAA 0 issue "digicert.com; account=<token>"`. Ce paramètre limite l’émission au compte DigiCert de votre organisation, même si `digicert.com` est autorisé, ce qui empêche Adobe d’obtenir un certificat. Si votre organisation nécessite le verrouillage de domaine DigiCert, utilisez plutôt [certificats gérés par le client](customer-managed-cert.md). Les verrous de domaine définis dans votre bureau d’enregistrement de domaines, parfois appelés verrous de transfert, ne sont pas liés et n’affectent pas les certificats gérés par Adobe.

>[!IMPORTANT]
>
>Si votre enregistrement CNAME ne pointe plus vers le nom d’hôte sécurisé Adobe, l’entrée dans le système Adobe est marquée pour suppression sans autre communication.

## Questions fréquentes

+++Ce processus est-il sécurisé ?

Oui. Le programme de certificat géré par Adobe est plus sécurisé que les [certificats gérés par le client](customer-managed-cert.md). Aucun certificat ou clé privée n’est transféré en dehors d’Adobe et de l’autorité de certification émettrice.

+++

+++Comment Adobe peut-il acheter un certificat pour notre domaine ?

Le certificat ne peut être acheté que lorsque vous avez pointé le nom d’hôte spécifié vers un nom d’hôte détenu par Adobe. Vous déléguez ce nom d’hôte à Adobe et permettez à Adobe d’acheter le certificat en votre nom.

+++

+++Puis-je demander la révocation du certificat ?

Oui. En tant que propriétaire du domaine, vous avez le droit de demander la révocation du certificat. Contactez l’assistance clientèle d’Adobe pour démarrer ce processus.

+++

+++Quel type de chiffrement est utilisé ?

Adobe travaille avec DigiCert pour émettre un certificat SHA-2.

+++

+++Ce programme entraîne-t-il des frais supplémentaires?

Adobe propose ce programme à tous les clients Adobe CX Enterprise sans frais supplémentaires pour les 100 premiers CNAME.

+++

+++Quels niveaux de sécurité de chiffrement Adobe propose-t-il ?

Adobe propose deux niveaux de sécurité de chiffrement pour répondre aux différents besoins des clients en matière de sécurité de la collecte de données propriétaires. Ces niveaux déterminent quels algorithmes de chiffrement sont pris en charge pour les connexions HTTPS avec les serveurs Adobe. Adobe examine et met à jour régulièrement l’ensemble des algorithmes pris en charge en fonction des pratiques de sécurité actuelles. Pour modifier les paramètres de sécurité du chiffrement, contactez l’assistance clientèle.

* **Standard** nécessite un chiffrement TLS 1.2 ou plus récent et au moins 128 bits. Il est conçu pour offrir une compatibilité de périphérique maximale tout en maintenant un chiffrement sécurisé.
* **Élevé** nécessite TLS 1.2 ou une version ultérieure et supprime la prise en charge des chiffrements plus faibles. Il est conçu pour les clients qui souhaitent le chiffrement le plus puissant. Les clients publiés avant 2015 ne peuvent généralement pas se connecter lorsque la sécurité du chiffrement est définie sur **Élevé**.

+++

+++Quels types de certificat HTTPS sont pris en charge ?

Adobe prend en charge les certificats RSA et ECC, tandis que les clients modernes prennent en charge les deux types de certificats. Les certificats ECC nécessitent moins de traitement sur le serveur et le client. Pour les certificats gérés par Adobe, Adobe fournit des certificats RSA et ECC. Pour les [certificats gérés par le client](customer-managed-cert.md), RSA est requis et ECC est recommandé.

+++

