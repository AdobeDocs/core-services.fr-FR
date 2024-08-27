---
description: Découvrez comment configurer des certificats sécurisés à utiliser avec des cookies propriétaires Adobe Experience Cloud.
solution: Experience Cloud,Analytics
title: Programme de certificat géré par Adobe
index: y
snippet: y
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: e15abde5-8027-4aed-a0c1-8a6fc248db5e
source-git-commit: 2a80851c0a7d4ef7dbcc2565177b239f3e063164
workflow-type: tm+mt
source-wordcount: '929'
ht-degree: 4%

---

# Programme de certificat géré par Adobe

Le programme de certificat géré par l’Adobe est le processus recommandé pour configurer les certificats propriétaires nécessaires à une mise en oeuvre CNAME. Une fois configuré, le programme est entièrement automatisé. Il renouvelle les certificats en temps voulu afin qu’il n’y ait aucune incidence sur la collecte de données en raison de l’expiration des certificats. Le programme est gratuit pour vos 100 premiers CNAME.

Si vous gérez actuellement vos propres certificats, vous êtes responsable de l’achat, de la maintenance et de la fourniture d’un certificat à Adobe pour l’utilisation de cookies propriétaires. Vous pouvez contacter l’assistance clientèle d’Adobe pour discuter de la migration vers le programme de certificat géré par l’Adobe.

## Mise en œuvre

Pour mettre en oeuvre un nouveau certificat pour la collecte de données propriétaires, procédez comme suit :

1. Téléchargez et remplissez le [formulaire de demande de domaine propriétaire](cookies/assets/First_Party_Domain_Request_Form.xlsx)

1. Ouvrez une demande auprès de l’assistance clientèle d’Adobe pour configurer la collecte de données propriétaires sur le programme de certificat géré par Adobe.

1. Lors de la réception du ticket, le représentant de l’Adobe vous fournit un enregistrement CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu’Adobe puisse acheter le certificat en votre nom. Par exemple, le nom d’hôte `data.example.com` pointe vers `hiodsibxvip01.data.adobedc.net`.

1. Lorsque l’enregistrement CNAME est en place sur les serveurs de votre entreprise, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de collecte de données d’Adobe.

## Validation du transfert du nom d’hôte {#validate}

Une fois le certificat installé, vous pouvez utiliser l’une des méthodes suivantes pour vérifier qu’il fonctionne.

+++**Validation du navigateur**

Vous pouvez utiliser n’importe quel navigateur pour vérifier qu’un certificat est correctement installé. Saisissez votre CNAME avec `_check` comme chemin d’accès dans la barre d’adresse. Par exemple :

`data.example.com/_check`

Si tout fonctionne, le navigateur affiche `SUCCESS`. Si le certificat n’est pas installé correctement, un avertissement de sécurité s’affiche.

+++

+++**Ligne de commande (`curl`)**

[`curl`](https://curl.se) est déjà installé sur la plupart des systèmes d’exploitation modernes.

Saisissez les informations suivantes dans la ligne de commande :

```sh
curl data.example.com/_check
```

Si tout fonctionne correctement, la console renvoie `SUCCESS`.

>[!TIP]
>
>Vous pouvez utiliser l’indicateur `-k` pour désactiver l’avertissement de sécurité afin de faciliter le dépannage.

+++

+++**Ligne de commande (`nslookup`)**

Saisissez les informations suivantes dans la ligne de commande :

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
Aliases: smetrics.example.com
```

+++

## Mettre à jour le code de mise en œuvre {#update}

Une fois que vous avez vérifié que votre certificat fonctionne correctement, vous pouvez mettre à jour votre mise en oeuvre d’Adobe pour utiliser ces valeurs.

* Pour les implémentations d’AppMeasurement Adobe Analytics, mettez à jour la variable de configuration [`trackingServer`](https://experienceleague.adobe.com/en/docs/analytics/implementation/vars/config-vars/trackingserver). Si vous disposez d’une mise en oeuvre existante, reportez-vous à la section [Migration des visiteurs](https://experienceleague.adobe.com/en/docs/analytics/technotes/visitor-migration) pour obtenir des instructions supplémentaires sur la manière d’empêcher les visiteurs existants d’être comptés comme de nouveaux visiteurs.
* Pour les implémentations du SDK Web, mettez à jour la propriété [`edgeDomain`](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/edgedomain) dans la commande [`configure`](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/overview) .

## Maintenance et renouvellements

Trente jours avant l’expiration de votre certificat propriétaire, Adobe valide si le CNAME est toujours valide et en cours d’utilisation. Si tel est le cas, Adobe suppose que vous souhaitez continuer à utiliser le service et renouvelle automatiquement le certificat en votre nom.

>[!IMPORTANT]
>
>Si l’enregistrement CNAME de votre entreprise est supprimé ou n’est plus mappé au nom d’hôte sécurisé d’Adobe fourni, l’Adobe ne peut pas renouveler le certificat. L’entrée dans le système de l’Adobe est marquée pour suppression sans autre communication.

## Questions fréquentes

+++Ce processus est-il sécurisé ?

Oui. Le programme de certificat géré par l’Adobe est plus sécurisé que votre entreprise qui fournit un certificat à un Adobe. Aucun certificat ou clé privée ne change de main en dehors de l’Adobe et de l’autorité de certification émettrice.

+++

+++Comment l’Adobe peut-il acheter un certificat pour notre domaine ?

Le certificat ne peut être acheté que lorsque vous avez pointé le nom d’hôte spécifié vers un nom d’hôte détenu par l’Adobe. Vous déléguez essentiellement ce nom d’hôte à Adobe et autorisez l’Adobe à acheter le certificat en votre nom.

+++

+++Puis-je demander la révocation du certificat ?

Oui. En tant que propriétaire du domaine, vous êtes autorisé à demander la révocation du certificat. Contactez l’assistance clientèle d’Adobe pour lancer ce processus.

+++

+++Quel type de chiffrement est utilisé ?

Adobe travaille avec DigiCert pour émettre un certificat SHA-2.

+++

+++Ce programme engendre-t-il des frais supplémentaires ?

Non. Adobe offre ce service à tous les clients Adobe Experience Cloud sans frais supplémentaires.

+++

+++Quels sont les niveaux de sécurité de chiffrement proposés par Adobe ?

Adobe offre deux niveaux de sécurité de chiffrement pour répondre aux besoins divers des clients en matière de sécurité dans la collecte de données propriétaires. Ces niveaux déterminent les algorithmes de chiffrement pris en charge pour les connexions HTTPS aux serveurs Adobe. Adobe passe régulièrement en revue et met à jour l’ensemble des algorithmes pris en charge en fonction des pratiques de sécurité actuelles. Si vous souhaitez modifier les paramètres de sécurité du chiffrement, contactez l’assistance clientèle.

* **Standard** nécessite TLS 1.2 ou plus récent et un chiffrement d’au moins 128 bits. Il est conçu pour offrir la compatibilité d’appareil la plus large tout en conservant un chiffrement sécurisé.
* Le niveau de sécurité du chiffrement **élevé** nécessite TLS 1.2 ou une version ultérieure et supprime la prise en charge des chiffrements plus faibles. Il est conçu pour les clients qui souhaitent un chiffrement le plus fort et ne se soucient pas de la prise en charge des appareils plus anciens.

Les clients suivants sont connus pour ne pas pouvoir se connecter à l’ensemble de sécurité de chiffrement défini sur **High** :

* Windows 8.1 et versions antérieures (dernière mise à jour en 2018)
* Windows Phone 8.1 et versions antérieures (dernière mise à jour en 2016)
* OS X 10.10 et versions antérieures (dernière mise à jour en 2017)
* iOS 8.4 et versions antérieures (dernière mise à jour en 2015)

+++

+++Quels types de certificat HTTPS sont pris en charge ?

Adobe prend en charge les types de certificats RSA et ECC pour répondre à différents besoins des clients. Les certificats RSA sont plus largement pris en charge pour les clients, mais les certificats ECC utilisent moins de traitement côté serveur et côté client. Pour les certificats gérés par Adobe, RSA et ECC sont fournis. Pour les certificats gérés par le client, RSA est requis et ECC est recommandé. Les clients modernes prennent en charge RSA et ECC. En règle générale, les clients suivants prennent uniquement en charge les certificats RSA :

* Windows Vista et versions antérieures (dernière mise à jour en 2012)
* Windows Phone 8.0 et versions antérieures (dernière mise à jour en 2014)
* OS X 10.8 et versions antérieures (dernière mise à jour en 2013)
* iOS 5.1 et versions antérieures (dernière mise à jour en 2012)
* Android 4.3 et versions antérieures (dernière mise à jour en 2013)

+++
