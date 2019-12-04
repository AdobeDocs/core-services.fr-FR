---
description: Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur.
keywords: cookies;privacy
seo-description: Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur.
seo-title: Cookies propriétaires
solution: Experience Cloud,Analytics
title: Cookies propriétaires
index: y
snippet: y
translation-type: tm+mt
source-git-commit: 9dcf5f0e5aad3e18448b72f39fb0c0af0c84d733

---


# À propos des cookies propriétaires

Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur. Ces cookies inoffensifs, qui proviennent d’un domaine hébergé par Adobe, sont appelés cookies tiers.

De nombreux navigateurs et logiciels anti-espion sont conçus pour rejeter et supprimer les cookies tiers, y compris ceux utilisés dans la collecte de données d’Analytics. Pour prendre en charge le suivi de la manière dont vos visiteurs interagissent avec votre site Web, vous pouvez mettre en oeuvre des cookies propriétaires.

Deux options sont disponibles pour implémenter les cookies propriétaires :

* Service d'ID Experience Platform. Le service d'ID peut définir le cookie dans le contexte propriétaire à l'aide de JavaScript.
* Entrées DNS sur le serveur DNS de votre entreprise pour configurer un alias CNAME sur un domaine hébergé par Adobe. Veuillez noter que si divers produits Adobe prennent en charge l’utilisation d’un CNAME, dans tous les cas, le CNAME est utilisé pour créer un point de terminaison propriétaire approuvé pour un client spécifique et appartient à ce client. Si ce client contrôle plusieurs domaines, il peut utiliser un point de fin CNAME unique pour effectuer le suivi des utilisateurs sur leurs domaines, mais comme cela nécessite des cookies tiers pour tous les domaines en dehors du domaine CNAME, cela ne fonctionne pas lorsque les cookies tiers sont bloqués et n’est donc pas recommandé. Les CNAME Adobe ne sont jamais utilisés pour effectuer le suivi d’un individu ou d’un périphérique sur des domaines appartenant à des clients différents.

Même si vous utilisez la première option avec le service d’ID d’Experience Cloud, le protocole ITP d’Apple rend les cookies propriétaires éphémères. Il est donc préférable de l’utiliser conjointement avec la seconde option.

Pour la deuxième option utilisant un CNAME, si votre site comporte des pages sécurisées utilisant le `https:` protocole, vous pouvez collaborer avec Adobe pour obtenir un certificat SSL afin de mettre en oeuvre des cookies propriétaires. Adobe recommande vivement d’utiliser exclusivement le protocole HTTPS pour la collecte de données, car nous ne prendrons plus en charge la collecte HTTP au cours du second semestre 2020.

Le processus d'octroi de certificat SSL peut souvent être confus et long. Par conséquent, Adobe a établi un partenariat avec DigiCert, une autorité de certification leader de l'industrie, et a développé un processus intégré par lequel l'achat et la gestion de ces certificats sont automatisés.

Avec votre autorisation, nous collaborerons avec notre autorité de certification pour créer, déployer et gérer un nouveau certificat SSL SHA-2 pour vous. Adobe continuera à gérer ce certificat et à s’assurer qu’une expiration, une révocation ou un problème de sécurité inattendu ne menace pas la disponibilité de la collection sécurisée de votre entreprise.

## Programme de certificat géré Adobe

Le programme de certificat géré Adobe est le processus recommandé pour mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires.

Le programme de certificat géré Adobe permet de mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires, sans frais supplémentaires. Si vous disposez actuellement de votre propre certificat SSL géré par le client, contactez l’assistance clientèle d’Adobe au sujet de la migration vers le programme de certificat géré Adobe.

### Mise en œuvre

Voici comment mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires :

1. Remplissez le [formulaire de demande de cookie propriétaire](/help/interface/cookies/assets/FPC_Request_Form.xlsx) et ouvrez un ticket auprès de l’assistance clientèle afin de configurer des cookies propriétaires dans le programme géré Adobe. Chaque champ est décrit avec des exemples dans le document.

1. Créez des enregistrements CNAME (voir les instructions ci-dessous). À la réception du billet, un représentant du service à la clientèle doit vous fournir une paire d’enregistrements CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu'Adobe puisse acheter le certificat en votre nom. Les enregistrements CNAMES sont similaires à ce qui suit : **Sécurisé** - Par exemple, le nom d’hôte `smetrics.example.com` désigne : `example.com.ssl.d1.omtrdc.net`. **Non sécurisé** : Par exemple, le nom d'hôte `metrics.example.com` désigne : `example.com.d1.omtrdc.net`.

1. Lorsque ces enregistrements CNAME sont en place, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de production d'Adobe. Si vous disposez d'une mise en œuvre existante, envisagez la migration des visiteurs pour conserver vos visiteurs existants. Une fois le certificat publié dans l'environnement de production d'Adobe, vous pourrez mettre à jour vos variables de serveur de suivi avec les nouveaux noms d'hôtes. En d'autres termes, si le site n'est pas sécurisé (https), mettez à jour la variable `s.trackingServer`. Si le site est sécurisé (https), mettez à jour les variables `s.trackingServer` et `s.trackingServerSecure`.

1. Envoyez une requête ping au nom d'hôte (voir ci-dessous).

1. Mettez à jour le code de mise en œuvre (voir ci-dessous).

### Maintenance et renouvellements

Les certificats SSL expirent chaque année, ce qui signifie qu'Adobe doit acheter tous les ans un nouveau certificat pour chaque mise en œuvre. Tous les utilisateurs pris en charge au sein de votre organisation reçoivent une notification par courrier électronique chaque fois qu'une mise en œuvre arrive à expiration. Pour qu’Adobe renouvelle votre nom d’hôte, un utilisateur pris en charge doit répondre au courrier électronique d’Adobe et indiquer que vous prévoyez de continuer à utiliser le nom d’hôte qui expire pour la collecte de données. À ce stade, Adobe achète et installe automatiquement un nouveau certificat.

### Questions fréquentes

| Question | Réponse |
|---|---|
| **Ce processus est-il sécurisé ?** | Oui, le programme géré Adobe est plus sécurisé que notre méthode héritée car aucun certificat ou clé privée ne change de main en dehors d'Adobe et de l'autorité de certification émettrice. |
| **Comment Adobe peut-il acheter un certificat pour notre domaine ?** | Le certificat ne peut être acheté que lorsque vous avez pointé le nom d'hôte spécifié (smetrics.example.com, par exemple) vers un nom d'hôte détenu par Adobe. Cela a essentiellement pour effet de déléguer ce nom d'hôte à Adobe et de permettre à Adobe d'acheter le certificat en votre nom. |
| **Puis-je demander la révocation du certificat ?** | Oui, en tant que propriétaire du domaine, vous êtes autorisé à demander la révocation du certificat. Vous devez uniquement ouvrir un ticket auprès de l'assistance clientèle pour terminer le processus. |
| **Ce certificat utilisera-t-il le chiffrement SHA-2 ?** | Oui, Adobe travaillera avec DigiCert pour émettre un certificat SHA-2. |
| **Cela engendre-t-il des frais supplémentaires ?** | Non, Adobe propose ce service à tous les clients actuels d’Adobe Digital Experience sans frais supplémentaires. |

## Créer des enregistrements CNAME

L'équipe des opérations réseau de votre organisation doit configurer vos serveurs DNS en créant un ou plusieurs enregistrements CNAME. Chaque nom d'hôte transfère les données aux serveurs de collecte de données d'Adobe.

Le spécialiste FPC vous fournit les noms d'hôtes configurés et les enregistrements CNAME vers lesquels ils doivent pointer. Par exemple :

* **Nom d'hôte SSL**:`smetrics.mysite.com`
* **Enregistrement CNAME SSL**:`mysite.com.ssl.sc.omtrdc.net`
* **Nom d’hôte non-SSL**:`metrics.mysite.com`
* **Enregistrement CNAME non SSL**:`mysite.com.sc.omtrdc.net`

Tant que le code de mise en œuvre n’est pas altéré, cette étape n’a aucune incidence sur la collecte de données et peut avoir lieu à tout moment après la mise à jour du code de mise en œuvre.

>[!N] Remarque : Le service d’identification des visiteurs d’Experience Cloud offre une alternative à la configuration d’un CNAME pour activer les cookies propriétaires, mais en raison des récentes modifications Apple ITP, il est toujours recommandé d’allouer un CNAME même lors de l’utilisation du service d’identification d’Experience Cloud.

## Envoyer une requête ping au nom d'hôte

Envoyez une requête ping au nom d'hôte pour vérifier que le transfert est correct. Tous les noms d'hôtes doivent répondre à une requête ping pour éviter une perte de données.

Une fois que les enregistrements CNAME sont correctement configurés et qu'Adobe a confirmé l'installation du certificat, ouvrez une invite de commande et envoyez une requête ping à votre ou vos noms d'hôte. Utilisation d’`mysite.com` comme exemple : `ping metrics.mysite.com`

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

>[!NRemarque :] si vous utilisez le protocole `https:// protocol`, le test ping répond uniquement après la date de transfert précisée par le spécialiste FPC. En outre, veillez à effectuer un test ping sur le nom d’hôte sécurisé et le nom d’hôte non sécurisé pour vous assurer que les deux fonctionnent correctement avant de mettre à jour votre implémentation.

## Mettre à jour le code de mise en œuvre

Avant de modifier le code sur votre site pour utiliser des cookies propriétaires, procédez comme suit :

* Demandez un certificat SSL en suivant les étapes décrites ci-dessus dans la section *Implémentation* de Cla, dans le programme de certificats gérés *Adobe.*
* Créez des enregistrements CNAME (voir ci-dessus).
* Appuyez sur le ou les nom(s) d’hôte (voir ci-dessus).

Après avoir vérifié que vos noms d’hôtes répondent et procèdent au transfert vers les serveurs de collecte de données d’Adobe, vous pouvez modifier votre mise en œuvre afin de pointer vers vos propres noms d’hôte de collecte de données.

1. Ouvrez votre fichier JavaScript principal (`s_code.js/AppMeasurement.js`).
1. Pour mettre à jour votre version de code, remplacez votre fichier `s_code.js/AppMeasurement.js` dans son intégralité par la version la plus récente, puis remplacez des modules externes ou personnalisations (le cas échéant). **Ou**, si vous souhaitez mettre à jour le code uniquement pertinent pour les cookies propriétaires, localisez les variables s.trackingServer et s.trackingServerSecure (si vous utilisez SSL) et pointez-les vers vos nouveaux noms d'hôte de collecte de données. Utilisation de mysite.com en tant qu’exemple :`s.trackingServer = "metrics.mysite.com"` `s.trackingServerSecure = "smetrics.mysite.com"`

1. Transférez le fichier JavaScript principal mis à jour vers votre site.

1. Si vous passez à des cookies propriétaires à partir d'une mise en œuvre de longue date ou passez à un nom d'hôte de collecte propriétaire différent, il est recommandé de migrer les visiteurs du domaine précédent vers le nouveau domaine.

Voir Migration [des](https://docs.adobe.com/help/en/analytics/implementation/javascript-implementation/visitor-migration.html) visiteurs dans le Guide de mise en oeuvre d’Analytics.

Après avoir transféré le fichier JavaScript, tout est configuré pour la collecte de données de cookies propriétaires. Nous vous recommandons de surveiller la création de rapports Analytics pour les heures suivantes afin de vous assurer que la collecte de données se poursuit normalement. Si ce n’est pas le cas, vérifiez que toutes les étapes ci-dessus sont terminées et demandez à l’assistance utilisateurs de votre entreprise de contacter l’assistance clientèle.
