---
description: Découvrez comment Adobe Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne sont pas conservés entre les demandes d’images et les sessions de navigateur.
keywords: cookies;confidentialité
solution: Experience Cloud,Analytics
title: '"Cookies propriétaires "'
index: y
snippet: y
feature: Cookies
topic: Administration
role: Administrator
level: Experienced
exl-id: e15abde5-8027-4aed-a0c1-8a6fc248db5e
source-git-commit: 11b999ef0c0d4f258e8665eb9c5bf427f5d618c4
workflow-type: tm+mt
source-wordcount: '1576'
ht-degree: 55%

---

# À propos des cookies propriétaires

Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur. Si possible, Adobe utilise des cookies propriétaires pour enregistrer les activités sur votre site. Pour enregistrer l’activité sur différents sites, tels que d’autres domaines que vous pouvez posséder, des cookies tiers sont requis.

De nombreux navigateurs et logiciels anti-espions sont conçus pour rejeter et supprimer les cookies tiers, y compris les cookies utilisés dans la collecte de données [!DNL Analytics]. Pour prendre en charge votre suivi de la manière dont vos visiteurs interagissent avec votre site web, vous devez vous assurer que vous avez configuré votre collecte de données pour utiliser des cookies propriétaires :

Deux options permettent de mettre en œuvre des cookies propriétaires :

* Si vous utilisez le service Experience Platform Identity (service ECID), il définit automatiquement les cookies dans le contexte propriétaire à l’aide de JavaScript.
* Si vous utilisez des [!DNL Analytics] identifiants hérités (ou le cookie `s_vi`), cela dépend de la manière dont vous avez configuré votre serveur de collecte de données. Si le serveur de collecte de données correspond au domaine de votre site, les cookies sont définis comme propriétaires. Si le serveur de collecte ne correspond pas à votre domaine actuel, les cookies sont définis comme tiers. Dans ce cas, si les cookies tiers sont bloqués, [!DNL Analytics] définit un [identifiant de secours (s_fid)](cookies-analytics.md) propriétaire à la place du cookie &quot;s_vi&quot; standard.

Pour vous assurer que votre serveur de collecte correspond au domaine de votre site, vous pouvez utiliser une implémentation CNAME à laquelle les cookies peuvent être définis dans un contexte propriétaire. Cela implique des modifications des paramètres DNS de votre entreprise pour configurer un alias CNAME pointant vers un domaine hébergé par l’Adobe. Il faut souligner que même si divers produits Adobe prennent en charge l’utilisation d’un CNAME, le CNAME est systématiquement employé pour créer un point de terminaison propriétaire approuvé pour un client spécifique, et il appartient à ce client. Si vous contrôlez plusieurs domaines, ils peuvent utiliser un seul point de terminaison CNAME pour effectuer le suivi des utilisateurs sur leurs domaines, mais lorsque le domaine du site ne correspond pas aux cookies de domaine CNAME est défini comme tiers.

>[!NOTE]
>
>Pour les deux options, le programme ITP (Intelligent Tracking Prevention) d’Apple rend les cookies propriétaires de courte durée sur les navigateurs régis par ITP, notamment Safari sur macOS et tous les navigateurs sur iOS et iPadOS. Depuis novembre 2020, les deux types de cookies expirent au bout de sept jours. Cette échéance est sujette à modification.

Pour la seconde option utilisant un CNAME, si votre site comporte des pages sécurisées à l’aide du protocole HTTPS, vous pouvez vous rapprocher d’Adobe pour obtenir un certificat SSL dans le but de mettre en œuvre des cookies propriétaires. Adobe recommande vivement d’utiliser exclusivement HTTPS pour la collecte de données, car l’Adobe ne prendra plus en charge la collecte HTTP au cours du deuxième semestre 2020.

Le processus d’octroi de certificat SSL peut souvent être confus et long. Par conséquent, Adobe a établi un partenariat avec DigiCert, une autorité de certification leader dans le secteur, et a développé un processus intégré par lequel l’achat et la gestion de ces certificats sont automatisés.

Avec votre autorisation, nous collaborons avec l’autorité de certification pour émettre, déployer et gérer un nouveau certificat SSL SHA-2 pour vous. Adobe continue de gérer ce certificat et de s’assurer qu’une expiration, une révocation ou une préoccupation de sécurité inattendue ne menace pas la disponibilité de la collection sécurisée de votre organisation.

## Programme de certificat géré par Adobe

Le programme de certificat géré Adobe est le processus recommandé pour mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires.

Le programme de certificat géré Adobe permet de mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires, sans frais supplémentaires (pour vos 100 premiers CNAME). Si vous disposez actuellement de votre propre certificat SSL géré par le client, contactez l’assistance clientèle Adobe au sujet de la migration vers le programme de certificat géré par l’Adobe.

### Mise en œuvre

Voici comment mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires :

1. Remplissez le [formulaire de demande de cookie propriétaire](/help/interface/cookies/assets/First_Part_Domain_Request_Form.xlsx) et ouvrez un ticket auprès de l’assistance clientèle afin de configurer des cookies propriétaires sur le programme géré par l’Adobe. Chaque champ est décrit avec des exemples dans le document.

2. Créez des enregistrements CNAME (voir les instructions ci-dessous).

   Lors de la réception du ticket, un représentant de l’Assistance clientèle doit vous fournir un enregistrement CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu’Adobe puisse acheter le certificat en votre nom. Le CNAME est similaire à ce qui suit :

   **Sécurisé** : par exemple, le nom d’hôte `smetrics.example.com` désigne : `example.com.adobedc.net`.

>[!NOTE]
> Auparavant, Adobe recommandait aux clients de configurer deux CNAME un pour HTTPS et un autre pour HTTP. Étant donné qu’une bonne pratique consiste à chiffrer le trafic et que la plupart des navigateurs découragent fortement le protocole HTTP, nous ne recommandons plus de configurer un CNAME pour ce dernier. Si nécessaire, cela ressemblerait à ceci :
>    **Non sécurisé** - le nom d’hôte `metrics.example.com` désigne : `example.com.adobedc.net`.

1. Lorsque le CNAME est en place, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de production d’Adobe.

   Si vous disposez d’une mise en œuvre existante, envisagez la migration des visiteurs pour conserver vos visiteurs existants. Une fois le certificat publié dans l’environnement de production d’Adobe, vous pouvez mettre à jour vos variables de serveur de suivi avec les nouveaux noms d’hôtes. En d’autres termes, si le site n’est pas sécurisé (HTTP), mettez à jour la variable `s.trackingServer`. Si le site est sécurisé (HTTPS), mettez à jour les variables `s.trackingServer` et `s.trackingServerSecure`.

2. [Validation du transfert de nom d’hôte](#validate) (voir ci-dessous).

3. [Mise à jour du code de mise en œuvre](#update) (voir ci-dessous).

### Maintenance et renouvellements

Les certificats SSL expirent chaque année, ce qui signifie qu’Adobe doit acheter tous les ans un nouveau certificat pour chaque mise en œuvre. Tous les utilisateurs pris en charge de votre entreprise reçoivent une notification par courrier électronique chaque fois qu’une mise en oeuvre approche de son expiration. Pour qu’Adobe renouvelle votre nom d’hôte, un utilisateur pris en charge doit répondre au courrier électronique d’Adobe et indiquer que vous prévoyez de continuer à utiliser le nom d’hôte arrivant à expiration pour la collecte de données. À ce stade, Adobe achète et installe automatiquement un nouveau certificat.

### Questions fréquentes

| Question | Réponse |
|---|---|
| **Ce processus est-il sécurisé ?** | Oui, le programme géré par l’Adobe est plus sécurisé que notre méthode héritée, car aucun certificat ou clé privée ne change de main en dehors de l’Adobe et de l’autorité de certification émettrice. |
| **Comment Adobe peut-il acheter un certificat pour notre domaine ?** | Le certificat ne peut être acheté que lorsque vous avez pointé le nom d’hôte spécifié (par exemple `telemetry.example.com`) vers un nom d’hôte détenu par Adobe. Cela a essentiellement pour effet de déléguer ce nom d’hôte à Adobe et de permettre à Adobe d’acheter le certificat en votre nom. |
| **Puis-je demander la révocation du certificat ?** | Oui, en tant que propriétaire du domaine, vous êtes autorisé à demander la révocation du certificat. Vous devez uniquement ouvrir un ticket auprès de l’assistance clientèle pour terminer le processus. |
| **Ce certificat utilisera-t-il le chiffrement SHA-2 ?** | Oui, Adobe travaillera avec DigiCert pour émettre un certificat SHA-2. |
| **Cela engendre-t-il des frais supplémentaires ?** | Non, Adobe offre ce service à tous les clients actuels d’Adobe Digital Experience sans frais supplémentaires. |

## Créer des enregistrements CNAME

L’équipe des opérations réseau de votre entreprise doit configurer vos serveurs DNS en créant des enregistrements CNAME. Chaque nom d’hôte transfère les données aux serveurs de collecte de données d’Adobe.

Le spécialiste des cookies propriétaires vous fournit le nom d’hôte configuré et le CNAME vers lequel ils doivent pointer. Par exemple :

* **Nom d’hôte SSL** : `smetrics.mysite.com`
* **Enregistrement CNAME SSL** : `mysite.com.adobedc.net`

>[!NOTE]
> Si vous utilisez toujours non sécurisé, cela ressemblera à ceci :
> * **Nom d’hôte non-SSL** : `metrics.mysite.com`
> * **Enregistrement CNAME non SSL** : `mysite.com.adobedc.net`


Tant que le code de mise en œuvre n’est pas altéré, cette étape n’a aucune incidence sur la collecte de données et peut avoir lieu à tout moment après la mise à jour du code de mise en œuvre.

>[!NOTE]
>
>Le service dʼidentifiant visiteur Experience Cloud fournit une alternative à la configuration dʼun enregistrement CNAME pour activer les cookies propriétaires.

## Validation du transfert du nom d’hôte {#validate}

Les méthodes suivantes peuvent être employées pour la validation :

### Validation à l’aide d’un navigateur

Si un CNAME est configuré et que le certificat est installé, vous pouvez utiliser le navigateur pour la validation :

`https://smetrics.adobe.com/_check`

>[!NOTE]
>
>Un avertissement de sécurité s’affiche si un certificat n’est pas installé.

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

Si tout est correctement configuré, un retour similaire à :

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

Avant de modifier le code de votre site pour utiliser des cookies propriétaires, procédez comme suit :

* Demandez un certificat SSL en suivant les étapes décrites ci-dessus dans la section *Implémentation* du [programme de certificat géré par l’Adobe](#adobe-managed-certificate-program).
* Créez des enregistrements CNAME (voir ci-dessus).
* Validez les noms d’hôtes (voir ci-dessus).

Une fois que vous avez vérifié que vos noms d’hôtes répondent et procèdent au transfert vers les serveurs de collecte de données d’Adobe, vous pouvez modifier votre mise en oeuvre afin de pointer vers vos propres noms d’hôte de collecte de données.

1. Ouvrez votre fichier JavaScript principal (`s_code.js/AppMeasurement.js`).
1. Pour mettre à jour votre version de code, remplacez votre fichier `s_code.js/AppMeasurement.js` dans son intégralité par la version la plus récente, puis remplacez des modules externes ou personnalisations (le cas échéant). **Ou**, si vous souhaitez mettre à jour le code uniquement pertinent pour les cookies propriétaires, localisez les variables s.trackingServer et s.trackingServerSecure (si vous utilisez SSL) et pointez-les vers vos nouveaux noms d’hôte de collecte de données. Utilisation de mysite.com en tant qu’exemple : `s.trackingServer = "metrics.mysite.com"` `s.trackingServerSecure = "smetrics.mysite.com"`

1. Transférez le fichier JavaScript principal mis à jour vers votre site.

1. Si vous passez à des cookies propriétaires à partir d’une mise en oeuvre de longue date ou passez à un autre nom d’hôte de collection propriétaire, Adobe recommande de migrer les visiteurs du domaine précédent vers le nouveau domaine.

Voir [Migration des Visiteurs](https://experienceleague.adobe.com/docs/analytics/implementation/javascript-implementation/visitor-migration.html?lang=en) dans le Guide de mise en œuvre d’Analytics.

Après avoir transféré le fichier JavaScript, tout est configuré pour la collecte de données de cookies propriétaires. Adobe vous recommande de surveiller la création de rapports Analytics pendant les heures suivantes afin de vous assurer que la collecte de données se poursuit normalement. Si ce n’est pas le cas, vérifiez que toutes les étapes ci-dessus sont terminées et demandez à l’assistance utilisateurs de votre entreprise de contacter l’assistance clientèle.
