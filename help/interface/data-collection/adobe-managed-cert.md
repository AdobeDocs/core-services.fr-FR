---
description: Découvrez comment configurer des certificats sécurisés à utiliser avec les cookies propriétaires d’Adobe CX Enterprise.
solution: Experience Cloud,Analytics
title: Programme de certificat géré par Adobe
index: true
snippet: y
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: e15abde5-8027-4aed-a0c1-8a6fc248db5e
TQID: https://experienceleague.adobe.com/LWbjh-jXKmY6mcl047uzA1ZkhZlAmeNpt9JRg3Ynt9E
product_v2: id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87id: e55547f1-a1ff-40c6-8978-026e40ab7fa4
feature_v2: id: b3f03848-ae12-48b2-8aab-cad18567eb32id: e9dbdbc5-3e52-40f0-a7bc-e18542967b7aid: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2: id: b75843fa-0a67-4a44-a6b1-cc627b0481dcid: c8add8f2-4250-4fd9-9cde-9707036c567did: d2311670-43bd-4c2e-bc98-1da2aaba9cefid: e992d880-33bc-4949-a648-aa7d410276cdid: fef08361-6ac5-460c-93fe-d063e40b6a49
role_v2: id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2: id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87cid: c1579802-ddd4-4214-8a91-97b2066abe11id: c2be0313-b3ae-45e0-b454-d20bf54b23f2id: d095671a-1355-40aa-8b5f-06c33c68080bid: d3cdead0-685a-4489-9250-4bb709942f66id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 50012e2564e88e1a6e16578e3331136c7df0cb21
workflow-type: tm+mt
source-wordcount: 1243
ht-degree: 2%

---

# Programme de certificat géré par Adobe

Le programme de certificat géré par Adobe est le processus recommandé pour configurer des certificats propriétaires nécessaires à une implémentation CNAME. Le programme est entièrement automatisé une fois configuré. Il renouvelle les certificats en temps opportun afin qu’il n’y ait aucun impact sur la collecte de données en raison de certificats expirés. Le programme est gratuit pour vos 100 premiers CNAME.

Si vous gérez actuellement vos propres certificats, vous êtes responsable de l’achat, de la maintenance et de la fourniture d’un certificat à Adobe pour l’utilisation des cookies propriétaires. Vous pouvez contacter l’assistance clientèle d’Adobe pour discuter de la migration vers le programme de certificat géré par Adobe.

## Mise en œuvre

Pour implémenter un nouveau certificat pour la collecte de données propriétaire, procédez comme suit :

1. Téléchargez et remplissez le [Formulaire de demande de domaine propriétaire](cookies/assets/First_Party_Domain_Request_Form.xlsx)
1. Ouvrez un ticket auprès de l’assistance clientèle d’Adobe afin de configurer la collecte de données propriétaire sur le programme de certificat géré par Adobe. Si votre organisation a des exigences de résidence des données ou de conformité, indiquez le [type de collecte de données régionale](rdc.md) souhaité dans votre demande.
1. À la réception du ticket, le représentant Adobe vous fournit un enregistrement CNAME. Cet enregistrement doit être configuré sur le serveur DNS de votre entreprise avant qu’Adobe puisse acheter le certificat en votre nom. Par exemple, le nom d’hôte `data.example.com` pointe vers `hiodsibxvip01.data.adobedc.net`.
1. Lorsque l’enregistrement CNAME est en place sur les serveurs de votre organisation, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de collecte de données Adobe.

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

Une fois que vous avez validé que votre certificat fonctionne correctement, vous pouvez mettre à jour votre implémentation Adobe pour utiliser votre nouveau nom d’hôte CNAME.

* **Extension de balise Web SDK** : mettez à jour le champ [[!UICONTROL Edge domain]](https://experienceleague.adobe.com/en/docs/experience-platform/tags/extensions/client/web-sdk/configure/general) lors de la configuration de l’extension.
* **Web SDK (alliage)** : mettez à jour la propriété [`edgeDomain`](https://experienceleague.adobe.com/en/docs/experience-platform/collection/js/commands/configure/edgedomain) dans la commande `configure`.
* **Extension Adobe Analytics** : mettez à jour le champ [[!UICONTROL SSL Tracking Server]](https://experienceleague.adobe.com/en/docs/experience-platform/tags/extensions/client/analytics/overview) lors de la configuration de l’extension. Assurez-vous que l’extension [extension du service d’identification des visiteurs](https://experienceleague.adobe.com/en/docs/experience-platform/tags/extensions/client/id-service/overview) est également installée. Voir [ Identification des visiteurs à l’aide de l’extension de balise Analytics](https://experienceleague.adobe.com/en/docs/analytics/implementation/id/analytics-extension) pour plus d’informations.
* **** : mettez à jour la variable de configuration [`trackingServerSecure`](https://experienceleague.adobe.com/en/docs/analytics/implementation/vars/config-vars/trackingserversecure). Assurez-vous également que le [service d’identification des visiteurs](https://experienceleague.adobe.com/fr/docs/id-service/using/home) est implémenté à l’aide de `VisitorAPI.js`. Voir [ Identification des visiteurs à l’aide d’AppMeasurement](https://experienceleague.adobe.com/en/docs/analytics/implementation/id/appmeasurement) pour plus d’informations.

Si votre site utilise plusieurs méthodes d’implémentation et que vous ne pouvez pas toutes les mettre à jour simultanément, pensez à configurer un délai de grâce. Consultez [Considérations relatives à la migration du service d’identification des visiteurs](https://experienceleague.adobe.com/en/docs/analytics/implementation/id/migration) pour obtenir des instructions supplémentaires sur la manière d’empêcher que les visiteurs ne soient comptabilisés comme de nouveaux visiteurs sur l’ensemble de votre site.

## Maintenance et renouvellements

Trente jours avant l’expiration de votre certificat propriétaire, Adobe vérifie si le CNAME est toujours valide et en cours d’utilisation. Si tel est le cas, Adobe suppose que vous souhaitez continuer à utiliser le service et renouvelle automatiquement le certificat en votre nom.

>[!IMPORTANT]
>
>Si l’enregistrement CNAME de votre organisation est supprimé ou ne correspond plus au nom d’hôte sécurisé Adobe fourni, Adobe ne peut pas renouveler le certificat. L’entrée dans le système Adobe est marquée pour suppression sans autre communication.

## Questions fréquentes

+++Ce processus est-il sécurisé ?

Oui. Le programme de certificat géré par Adobe est plus sécurisé que votre organisation qui fournit un certificat à Adobe. Aucun certificat ou clé privée ne change de main en dehors d’Adobe et de l’autorité de certification émettrice.

+++

+++Comment Adobe peut-il acheter un certificat pour notre domaine ?

Le certificat ne peut être acheté que lorsque vous avez pointé le nom d’hôte spécifié vers un nom d’hôte détenu par Adobe. Pour l’essentiel, vous déléguez ce nom d’hôte à Adobe et permettez à Adobe d’acheter le certificat en votre nom.

+++

+++Puis-je demander la révocation du certificat ?

Oui. En tant que propriétaire du domaine, vous avez le droit de demander la révocation du certificat. Contactez l’assistance clientèle d’Adobe pour démarrer ce processus.

+++

+++Quel type de chiffrement est utilisé ?

Adobe travaille avec DigiCert pour émettre un certificat SHA-2.

+++

+++Ce programme entraîne-t-il des frais supplémentaires?

Non. Adobe offre ce service sans frais supplémentaires à tous les clients Adobe CX Enterprise.

+++

+++Quels niveaux de sécurité de chiffrement Adobe propose-t-il ?

Adobe propose deux niveaux de sécurité de chiffrement pour répondre aux différents besoins des clients en matière de sécurité de la collecte de données propriétaires. Ces niveaux déterminent quels algorithmes de chiffrement sont pris en charge pour les connexions HTTPS avec les serveurs Adobe. Adobe examine et met à jour régulièrement l’ensemble des algorithmes pris en charge en fonction des pratiques de sécurité actuelles. Si vous souhaitez modifier les paramètres de sécurité du chiffrement, contactez l’assistance clientèle.

* **Standard** nécessite un chiffrement TLS 1.2 ou plus récent et au moins 128 bits. Il est conçu pour offrir une compatibilité de périphérique maximale tout en maintenant un chiffrement sécurisé.
* **Élevé** nécessite TLS 1.2 ou une version ultérieure et supprime la prise en charge des chiffrements plus faibles. Il est conçu pour les clients qui souhaitent le chiffrement le plus puissant et ne se soucient pas de la prise en charge des appareils plus anciens.

Les clients suivants sont connus pour ne pas pouvoir se connecter avec la sécurité du chiffrement définie sur **Élevé** :

* Windows 8.1 et versions antérieures (dernière mise à jour en 2018)
* Windows Phone 8.1 et versions antérieures (dernière mise à jour en 2016)
* OS X 10.10 et versions antérieures (dernière mise à jour en 2017)
* iOS 8.4 et versions antérieures (dernière mise à jour en 2015)

+++

+++Quels types de certificat HTTPS sont pris en charge ?

Adobe prend en charge les types de certificat RSA et ECC pour répondre aux différents besoins des clients. Les certificats RSA sont plus largement pris en charge pour les clients, mais les certificats ECC utilisent moins de traitement côté serveur et côté client. Pour les certificats gérés par Adobe, RSA et ECC sont fournis. Pour les certificats gérés par le client, RSA est requis et ECC est recommandé. Les clients modernes prennent en charge RSA et ECC. Les clients suivants ne prennent généralement en charge que les certificats RSA :

* Windows Vista et versions antérieures (dernière mise à jour en 2012)
* Windows Phone 8.0 et versions antérieures (dernière mise à jour en 2014)
* OS X 10.8 et versions antérieures (dernière mise à jour en 2013)
* iOS 5.1 et versions antérieures (dernière mise à jour en 2012)
* Android 4.3 et versions antérieures (dernière mise à jour en 2013)

+++

+++Puis-je gérer mes propres certificats à la place ?

Oui. Cependant, si vous gérez vos propres certificats, vous êtes chargé de les renouveler et de les fournir à Adobe chaque fois que vous les renouvelez. Ce processus est moins sécurisé et peut entraîner des lacunes dans la collecte de données si votre organisation oublie de renouveler un certificat à temps. Adobe recommande d’utiliser le programme de certificat géré au lieu de gérer les certificats vous-même, en particulier en raison des réductions de la durée de vie maximale du certificat TLS. Voir [6.3.2 Périodes d’exploitation du certificat et périodes d’utilisation des paires de clés](https://cabforum.org/working-groups/server/baseline-requirements/requirements/#632-certificate-operational-periods-and-key-pair-usage-periods) dans la section CA/Browser Forum Server Certificate Baseline Requirements pour plus d’informations.
+++

