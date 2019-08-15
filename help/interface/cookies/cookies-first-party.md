---
description: Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur.
keywords: cookies ; confidentialité
seo-description: Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur.
seo-title: Cookies propriétaires
solution: Experience Cloud, Analytics
title: Cookies propriétaires
index: y
snippet: y
translation-type: tm+mt
source-git-commit: 345b1fda364d9f7e884e94f32807bb99cc0c3476

---


# A propos des cookies propriétaires

Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur. Ces cookies inoffensifs, issus d’un domaine hébergé par Adobe, sont des cookies tiers.

De nombreux navigateurs et applications anti-espion sont conçus pour rejeter et supprimer des cookies tiers, notamment ceux utilisés dans la collecte de données Analytics. Pour éviter les limitations de suivi imposées par les navigateurs et les programmes, vous pouvez mettre en œuvre des cookies propriétaires.

Deux options permettent de mettre en œuvre des cookies propriétaires.

* Service d'ID de plateforme Experience. Le service d'ID peut définir le cookie dans le contexte propriétaire à l'aide de JavaScript.
* Entrées DNS sur le serveur DNS de vos entreprises.
* Si votre site comporte des pages sécurisées utilisant `https:` le protocole et que vous n'utilisez pas le service d'ID d'Experience Platform, vous pouvez collaborer avec Adobe pour obtenir un certificat SSL afin de mettre en œuvre des cookies propriétaires

Le processus d'octroi de certificat SSL peut souvent être confus et temporel. Par conséquent, Adobe a établi un partenariat avec digicert, une autorité de certification de l'industrie, et a développé un processus intégré par lequel l'achat et la gestion de ces certificats sont automatisés.

Avec votre autorisation, nous collaborerons avec notre autorité de certification pour créer, déployer et gérer un nouveau certificat SSL -2 SSL pour vous. Adobe continuera à gérer ce certificat et à s'assurer qu'une date d'expiration, une révocation ou une sécurité inattendue ne menace pas la disponibilité de la collection sécurisée de vos organisations.

## Programme de certificat géré Adobe

Le programme Adobe Managed Certificate Program est le processus recommandé pour implémenter un nouveau certificat SSL propriétaire pour les cookies propriétaires.

Le programme Adobe Managed Certificate vous permet de mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires sans frais supplémentaires. Si vous disposez actuellement de votre propre certificat SSL géré par client, contactez le service à la clientèle Adobe au sujet de la migration vers le programme Adobe Managed Certificate Program.

### Mise en œuvre

Voici comment vous implémentez un nouveau certificat SSL propriétaire pour les cookies propriétaires :

1. Remplissez le formulaire de demande et ouvrez un ticket avec le service à la clientèle demandant la configuration des cookies propriétaires dans le programme géré Adobe. Chaque champ est décrit avec des exemples dans le document.

1. Créez des enregistrements CNAME (voir les instructions ci-dessous). Lors de la réception du ticket, un spécialiste FPSSL doit vous fournir une paire d'enregistrements CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu'Adobe puisse acheter le certificat en votre nom. Les CNAMES sont similaires à ce qui suit.

* **Sécurisé** : par exemple, le nom d'hôte `smetrics.example.com` pointe vers : `example.com.ssl.d1.omtrdc.net`.
* **Non sécurisé** : par exemple, le nom d'hôte `metrics.example.com` pointe vers : `example.com.d1.omtrdc.net`.

1. Lorsque ces CNAME sont en place, Adobe travaille avec digicert pour acheter et installer un certificat sur les serveurs de production d'Adobe. Si vous disposez d'une mise en œuvre existante, envisagez la migration des visiteurs pour conserver vos visiteurs existants. Une fois le certificat publié dans l'environnement de production d'Adobe, vous pourrez mettre à jour les variables de serveur de suivi avec les nouveaux noms d'hôtes. En d'autres termes, si le site n'est pas sécurisé (https), mettez à jour le `s.trackingServer`paramètre. Si le site est sécurisé (https), mettez à jour les deux variables `s.trackingServer` et `s.trackingServerSecure` les variables.

1. Ping le nom d'hôte (voir ci-dessous).

1. Mise à jour du code de mise en œuvre (voir ci-dessous).

### Maintenance et renouvellements

Les certificats SSL expirent chaque année, ce qui signifie qu'Adobe doit acheter un nouveau certificat pour chaque implémentation chaque année. Tous les utilisateurs pris en charge au sein de votre organisation reçoivent une notification par courriel chaque fois qu'une mise en œuvre est presque arrivée à expiration. Pour qu'Adobe renouvelle votre nom d'hôte, un utilisateur ayant souscrit un contrat dédié doit répondre au courrier électronique d'Adobe et indiquer que vous prévoyez de continuer à utiliser le nom d'hôte qui précède pour la collecte de données. A ce stade, Adobe achète et installe automatiquement un nouveau certificat.

### Questions fréquentes

| Question | Réponse |
|---|---|
| **Ce processus est-il sécurisé ?** | Oui, le programme géré Adobe est plus sécurisé que notre méthode héritée car aucun certificat ou clé privée ne change manuellement en dehors d'Adobe et de l'autorité de certification émettrice. |
| **Comment Adobe peut-il acheter un certificat pour notre domaine ?** | Le certificat ne peut être acheté que lorsque vous avez désigné le nom d'hôte spécifié (smetrics.example.com, par exemple) à un nom d'hôte détenu Adobe. Ce nom d'hôte est essentiellement délégué à Adobe et permet à Adobe d'acheter le certificat en votre nom. |
| **Puis-je demander la révocation du certificat ?** | Oui, comme propriétaire du domaine, vous êtes autorisé à demander la révocation du certificat. Vous devez ouvrir un ticket avec le service d'assistance clientèle pour que ce soit terminé. |
| **Ce certificat utilise-t-il le chiffrement SHA -2 ?** | Oui, Adobe travaille avec digicert pour émettre un certificat SHA -2. |
| **Cela engendre-t-il des frais supplémentaires ?** | Non, Adobe offre ce service à tous les clients actuels d'Analytics sans frais supplémentaires. |

## Création d'enregistrements CNAME

L'équipe des opérations réseau de votre organisation doit configurer vos serveurs DNS en créant un nouveau enregistrement CNAME. Chaque nom d'hôte transfère les données aux serveurs de collecte de données d'Adobe.

Le spécialiste FPC fournit les noms d'hôtes configurés et les CNAME vers lesquels ils doivent pointer. Par exemple :

* **Nom d'hôte SSL**:`smetrics.mysite.com`
* **CNAME SSL**:`mysite.com.ssl.d1.sc.omtrdc.net`
* **Nom d'hôte non SSL**:`metrics.mysite.com`
* **CNAME non SSL**:`mysite.com.d1.sc.omtrdc.net`

Tant que le code de mise en œuvre n'est pas modifié, cette étape n'affecte pas la collecte de données et peut être effectuée à tout moment après la mise à jour du code de mise en œuvre.

>[!Note :] Le service d'identification des visiteurs Experience Cloud fournit une alternative à la configuration d'un CNAME pour activer les cookies propriétaires.

## Ping du nom d'hôte

Faites glisser le nom d'hôte pour assurer un transfert correct. Tous les noms d'hôtes doivent répondre à un ping pour éviter toute perte de données.

Une fois que les enregistrements CNAME sont correctement configurés et qu'Adobe a confirmé l'installation du certificat, ouvrez une invite de commande et ping votre nom d'hôte. Using `mysite.com` as an example: `ping metrics.mysite.com`

Si tout est correctement configuré, le test renvoie des résultats de ce type :

```Pinging mysite.com.112.2o7.net [66.235.132.232] with 32 bytes of data:
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246

Ping statistics for 66.235.132.232: Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds: Minimum = 19ms, Maximum = 19ms, Average = 19ms
```

Si les enregistrements CNAME ne sont pas correctement configurés ou pas actifs, le test renvoie les résultats suivants :

`Ping request could not find the host. Please check the name and try again.`

>[!Note :] Si vous utilisez `https:// protocol`, le ping répond uniquement après la date de transfert spécifiée par le spécialiste FPC. Ajoutez également un nom d'hôte sécurisé et un nom d'hôte non sécurisé pour garantir que les deux fonctionnent correctement avant de mettre à jour votre implémentation.

## Mettre à jour le code de mise en œuvre

Avant de modifier le code sur votre site pour utiliser des cookies propriétaires, procédez comme suit :

* Demandez un certificat SSL, comme décrit dans Procédure de mise en œuvre du programme Adobe Managed Certificate Program.
* Création d'enregistrements CNAME.
* Ping le nom d'hôte.

Une fois que vous avez vérifié que vos noms d'hôtes répondent et redirigent vers les serveurs de collecte de données Adobe, vous pouvez modifier votre implémentation afin qu'elle pointe vers vos propres noms d'hôtes de collecte de données.

1. Open your core JavaScript file (`s_code.js/AppMeasurement.js`).
1. Pour mettre à jour votre version de code, remplacez votre fichier`s_code.js/AppMeasurement.js`   dans son intégralité par la version la plus récente, puis remplacez des modules externes ou personnalisations (le cas échéant). **Ou**, si vous souhaitez mettre à jour le code uniquement pertinent pour les cookies propriétaires, localisez les variables s. trackingserver et s. trackingserversecure (en cas d'utilisation de SSL) et pointez-les vers vos nouveaux noms d'hôtes de collecte de données. Using mysite.com as an example:`s.trackingServer = "metrics.mysite.com"` `s.trackingServerSecure = "smetrics.mysite.com"`

1. Téléchargez le fichier JavaScript principal mis à jour sur votre site.
1. Si vous passez à des cookies propriétaires à partir d'une implémentation longue ou si vous changez de nom d'hôte de collection propriétaire différent, il est recommandé de migrer les visiteurs du domaine précédent vers le nouveau domaine.

Voir [Migration des visiteurs](https://docs.adobe.com/help/en/analytics/implementation/javascript-implementation/visitor-migration.html) dans le Guide de mise en œuvre d'Analytics.

Une fois le fichier JavaScript téléchargé, tout est configuré pour la collecte de données des cookies propriétaires. Nous vous recommandons de surveiller la création de rapports Analytics pour les heures suivantes afin de vous assurer que la collecte de données se poursuit normalement. Si ce n'est pas le cas, vérifiez que toutes les étapes ci-dessus ont été terminées et que l'un des utilisateurs ayant souscrit un plan d'assistance dédié doit contacter le service d'assistance clientèle.
