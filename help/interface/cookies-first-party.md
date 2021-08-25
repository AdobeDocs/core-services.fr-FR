---
description: Découvrez comment Adobe Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne sont pas conservés entre les demandes d’images et les sessions de navigateur.
keywords: cookies;confidentialité
solution: Experience Cloud,Analytics
title: '"Cookies propriétaires "'
index: y
snippet: y
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: e15abde5-8027-4aed-a0c1-8a6fc248db5e
source-git-commit: 1e7c4c02b08a17b2666afc7a82ea44d598675b3c
workflow-type: tm+mt
source-wordcount: '1614'
ht-degree: 69%

---

# À propos des cookies propriétaires

Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur. Lorsque cela est possible, Adobe utilise des cookies propriétaires pour enregistrer les activités sur votre site. Pour enregistrer l’activité sur différents sites, tels que d’autres domaines que vous pouvez posséder, des cookies tiers sont requis.

De nombreux navigateurs et logiciels anti-espions sont conçus pour rejeter et supprimer les cookies tiers. Adobe s’assure que les cookies peuvent toujours être définis même si les cookies tiers sont bloqués. Le comportement spécifique varie selon que vous utilisez le service d’identité Experience Platform (service ECID) ou les identifiants hérités d’Analytics (ou cookie s_vi) :

* Le [service d’identité Experience Platform (service ECID)](https://experienceleague.adobe.com/docs/id-service/using/intro/overview.html?lang=fr) définit automatiquement les cookies propriétaires, que votre domaine de collecte corresponde ou non à votre domaine de site. S’ils ne correspondent pas, Identity Service utilisera JavaScript pour définir des cookies dans le domaine de votre site.
* Si vous utilisez [les identifiants hérités Analytics](https://experienceleague.adobe.com/docs/core-services/interface/administration/ec-cookies/cookies-analytics.html?lang=en) (ou le cookie `s_vi`), cela dépend de la manière dont vous avez configuré votre serveur de collecte de données. Si le serveur de collecte de données correspond au domaine de votre site, les cookies sont définis comme propriétaires. Si le serveur de collecte ne correspond pas à votre domaine actuel, les cookies sont définis comme tiers. Dans ce cas, si les cookies tiers sont bloqués, Analytics définit un [identifiant de secours (s_fid)](cookies-analytics.md) propriétaire au lieu du cookie &quot;s_vi&quot; standard.

Si vous souhaitez vous assurer que votre serveur de collecte correspond au domaine de votre site, vous pouvez utiliser une implémentation CNAME qui permettra le transfert depuis un domaine personnalisé spécifié dans votre implémentation CNAME vers les serveurs de collecte d’Adobe. Cela implique des modifications des paramètres DNS de votre entreprise pour configurer un alias CNAME pointant vers un domaine hébergé par l’Adobe. Il faut souligner que même si divers produits Adobe prennent en charge l’utilisation d’un CNAME, le CNAME est systématiquement employé pour créer un point d’entrée propriétaire approuvé pour un client spécifique, et il appartient à ce client. Si vous contrôlez plusieurs domaines, ils peuvent utiliser un seul point d’entrée CNAME pour effectuer le suivi des utilisateurs sur leurs domaines. Toutefois, lorsque le domaine du site ne correspond pas au domaine CNAME, les cookies de domaine sont définis comme tiers.

>[!NOTE]
>
>Que votre domaine de collecte corresponde ou non à votre domaine de site, le programme ITP (Intelligent Tracking Prevention) d’Apple rend les cookies propriétaires définis par Adobe de courte durée sur les navigateurs régis par ITP, notamment Safari sur macOS et tous les navigateurs sur iOS et iPadOS. Depuis novembre 2020, les cookies définis via CNAME ont également la même expiration que les cookies définis via JavaScript. Cette échéance est sujette à modification.

Si vous souhaitez établir un CNAME pour la collecte de données et si votre site comporte des pages sécurisées à l’aide du protocole HTTPS, vous pouvez collaborer avec Adobe pour obtenir un certificat SSL.

Le processus d’octroi de certificat SSL peut souvent être confus et long. Par conséquent, Adobe a établi un partenariat avec DigiCert, une autorité de certification leader de l’industrie, et a développé un processus intégré permettant d’automatiser l’achat et la gestion de ces certificats.

Avec votre autorisation, nous collaborons avec cette autorité de certification pour créer, déployer et gérer un nouveau certificat SSL SHA-2 pour vous. Adobe continue à gérer ce certificat et à s’assurer qu’une expiration, une révocation ou un problème de sécurité inattendu ne menace pas la disponibilité de la collecte sécurisée de votre organisation.

## Programme de certificat géré par Adobe

Le programme de certificat géré Adobe est le processus recommandé pour configurer le certificat SSL propriétaire nécessaire à une mise en oeuvre CNAME, qui garantit que votre serveur de collecte d’Adobes correspond au domaine de votre site.

Le programme Adobe Managed Certificate vous permet de mettre en oeuvre un nouveau certificat SSL propriétaire sans frais supplémentaires (pour vos 100 premiers CNAME). Si vous disposez actuellement de votre propre certificat SSL géré par le client, contactez l’Assistance clientèle d’Adobe au sujet de la migration vers le programme de certificat géré par Adobe.

### Mise en œuvre

Voici comment mettre en oeuvre un nouveau certificat SSL propriétaire pour la collecte de données propriétaires :

1. Remplissez le [formulaire de demande de domaine propriétaire](/help/interface/cookies/assets/First_Part_Domain_Request_Form.xlsx) et ouvrez un ticket auprès de l’assistance clientèle afin de configurer la collecte de données propriétaires sur le programme géré par l’Adobe. Chaque champ est décrit avec des exemples dans le document.

2. Créez des enregistrements CNAME (voir les instructions ci-dessous).

   Lors de la réception du ticket, un représentant de l’Assistance clientèle doit vous fournir un enregistrement CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu’Adobe puisse acheter le certificat en votre nom. Le CNAME ressemble à ce qui suit :

   **Sécurisé** : par exemple, le nom d’hôte `smetrics.example.com` désigne : `example.com.adobedc.net`.

>[!NOTE]
> Par le passé, Adobe recommandait aux clients de configurer deux CNAME, un pour HTTPS et un autre pour HTTP. Étant donné qu’une bonne pratique consiste à chiffrer le trafic et que la plupart des navigateurs découragent fortement le protocole HTTP, nous ne recommandons plus de configurer un CNAME pour ce dernier. Si vous en avez toutefois besoin, voici ce à quoi il devrait ressembler :
>    **Non sécurisé** - le nom d’hôte `metrics.example.com` désigne : `example.com.adobedc.net`.

1. Lorsque ce CNAME est en place, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de production d’Adobe.

   Si vous disposez d’une mise en œuvre existante, envisagez la migration des visiteurs pour conserver vos visiteurs existants. Une fois le certificat publié dans l’environnement de production d’Adobe, vous pouvez mettre à jour vos variables de serveur de suivi avec les nouveaux noms d’hôtes. En d’autres termes, si le site n’est pas sécurisé (HTTP), mettez à jour la variable `s.trackingServer`. Si le site est sécurisé (HTTPS), mettez à jour les variables `s.trackingServer` et `s.trackingServerSecure`.

2. [Validation du transfert de nom d’hôte](#validate) (voir ci-dessous).

3. [Mise à jour du code de mise en œuvre](#update) (voir ci-dessous).

### Maintenance et renouvellements

Les certificats SSL expirent chaque année, ce qui signifie qu’Adobe doit acheter tous les ans un nouveau certificat pour chaque mise en œuvre. Tous les utilisateurs pris en charge au sein de votre organisation reçoivent une notification par e-mail chaque fois qu’une implémentation arrive à expiration. Pour qu’Adobe renouvelle votre nom d’hôte, un utilisateur pris en charge doit répondre au courrier électronique d’Adobe et indiquer que vous prévoyez de continuer à utiliser le nom d’hôte arrivant à expiration pour la collecte de données. À ce stade, Adobe achète et installe automatiquement un nouveau certificat.

### Questions fréquentes

| Question | Réponse |
|---|---|
| **Ce processus est-il sécurisé ?** | Oui, le programme géré par Adobe est plus sécurisé que notre méthode héritée, car aucun certificat ou clé privée ne change de main en dehors d’Adobe et de l’autorité de certification émettrice. |
| **Comment Adobe peut-il acheter un certificat pour notre domaine ?** | Le certificat ne peut être acheté que lorsque vous avez pointé le nom d’hôte spécifié (par exemple `telemetry.example.com`) vers un nom d’hôte détenu par Adobe. Cela a essentiellement pour effet de déléguer ce nom d’hôte à Adobe et de permettre à Adobe d’acheter le certificat en votre nom. |
| **Puis-je demander la révocation du certificat ?** | Oui, en tant que propriétaire du domaine, vous êtes autorisé à demander la révocation du certificat. Vous devez uniquement ouvrir un ticket auprès de l’assistance clientèle pour terminer le processus. |
| **Ce certificat utilisera-t-il le chiffrement SHA-2 ?** | Oui, Adobe travaillera avec DigiCert pour émettre un certificat SHA-2. |
| **Cela engendre-t-il des frais supplémentaires ?** | Non, Adobe offre ce service à tous les clients actuels d’Adobe Digital Experience sans frais supplémentaires. |

{style=&quot;table-layout:auto&quot;}

## Créer des enregistrements CNAME

L’équipe des opérations réseau de votre organisation doit configurer vos serveurs DNS en créant des enregistrements CNAME. Chaque nom d’hôte transfère les données aux serveurs de collecte de données d’Adobe.

Le spécialiste des cookies propriétaires vous fournit le nom d’hôte configuré et le CNAME vers lequel ils doivent pointer. Par exemple :

* **Nom d’hôte SSL** : `smetrics.mysite.com`
* **Enregistrement CNAME SSL** : `mysite.com.adobedc.net`

>[!NOTE]
> Si vous utilisez encore la version non sécurisée, cela ressemble à ce qui suit :
> * **Nom d’hôte non-SSL** : `metrics.mysite.com`
> * **Enregistrement CNAME non SSL** : `mysite.com.adobedc.net`


Tant que le code de mise en œuvre n’est pas altéré, cette étape n’a aucune incidence sur la collecte de données et peut avoir lieu à tout moment après la mise à jour du code de mise en œuvre.

## Validation du transfert du nom d’hôte {#validate}

Les méthodes suivantes peuvent être employées pour la validation :

### Validation à l’aide d’un navigateur

Si un CNAME est configuré et que le certificat est installé, vous pouvez utiliser le navigateur pour la validation :

`https://smetrics.adobe.com/_check`

>[!NOTE]
>
>Un message d’avertissement s’affiche si aucun certificat n’est installé.

### Validation à l’aide de [!DNL curl]

Adobe recommande l’utilisation de [[!DNL curl]](https://curl.se/) dans la ligne de commande. (les utilisateurs de [!DNL Windows] peuvent installer [!DNL curl] à partir de : <https://curl.se/windows/>)

Si vous disposez d’un CNAME mais qu’aucun certificat n’est installé, exécutez :
`curl -k https://smetrics.adobe.com/_check`
Réponse : `SUCCESS`

(La valeur `-k` désactive le message d’avertissement.)

Si vous avez configuré un CNAME et que le certificat est installé, exécutez :
`curl https://smetrics.adobe.com/_check`
Réponse : `SUCCESS`

### Validation à l’aide de [!DNL nslookup]

Vous pouvez utiliser `nslookup` pour la validation. Au moyen d’un exemple `smetrics.adobe.com`, ouvrez une invite de commande et saisissez `nslookup smetrics.adobe.com`

Si tout est correctement configuré, vous obtenez un retour similaire à ce qui suit :

```
nslookup smetrics.adobe.com
Server:             10.30.7.247
Address:     10.30.7.247#53

smetrics.adobe.com    canonical name = adobe.com.ssl.d1.sc.omtrdc.net.
Name:  adobe.com.ssl.d1.sc.omtrdc.net
Address: 54.218.180.161
Name:  adobe.com.ssl.d1.sc.omtrdc.net
Address: 52.39.8.230
Name:  adobe.com.ssl.d1.sc.omtrdc.net
Address: 54.187.216.46
```

## Mettre à jour le code de mise en œuvre {#update}

Avant de modifier le code de votre site pour utiliser la collecte de données propriétaires, procédez comme suit :

* Demandez un certificat SSL en suivant les étapes décrites ci-dessus dans la section *Implémentation* du [Programme de certificat géré par Adobe](#adobe-managed-certificate-program).
* Créez des enregistrements CNAME (voir ci-dessus).
* Validez les noms d’hôtes (voir ci-dessus).

Après avoir vérifié que vos noms d’hôtes répondent et procèdent au transfert vers les serveurs de collecte de données d’Adobe, vous pouvez modifier votre implémentation afin de pointer vers vos propres noms d’hôtes de collecte de données.

1. Ouvrez votre fichier JavaScript principal (`s_code.js/AppMeasurement.js`).
1. Pour mettre à jour votre version de code, remplacez votre fichier `s_code.js/AppMeasurement.js` dans son intégralité par la version la plus récente, puis remplacez des modules externes ou personnalisations (le cas échéant). **Ou**, si vous souhaitez mettre à jour le code uniquement pertinent pour la collecte de données propriétaires, recherchez les variables s.trackingServer et s.trackingServerSecure (si vous utilisez SSL) et pointez-les vers vos nouveaux noms d’hôtes de collecte de données. Utilisation de mysite.com en tant qu’exemple : `s.trackingServer = "metrics.mysite.com"` `s.trackingServerSecure = "smetrics.mysite.com"`

1. Transférez le fichier JavaScript principal mis à jour vers votre site.

1. Si vous passez à la collecte de données propriétaires à partir d’une mise en oeuvre de longue date ou passez à un nom d’hôte de collecte propriétaire différent, Adobe recommande de migrer les visiteurs du domaine précédent vers le nouveau domaine.

Voir [Migration des Visiteurs](https://experienceleague.adobe.com/docs/analytics/technotes/visitor-migration.html?lang=en) dans le Guide de mise en œuvre d’Analytics.

Une fois le fichier JavaScript chargé, tout est configuré pour la collecte de données propriétaires. Adobe vous recommande de surveiller le compte rendu des performances d’Analytics durant les heures qui suivent afin de vous assurer que la collecte de données se poursuit normalement. Si ce n’est pas le cas, vérifiez que toutes les étapes ci-dessus sont terminées et demandez à l’assistance utilisateurs de votre entreprise de contacter l’assistance clientèle.
