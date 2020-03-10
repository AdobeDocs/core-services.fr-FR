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
source-git-commit: 620bd7a749080356913ab56a2fca9f4049276938

---


# À propos des cookies propriétaires

Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur. Ces cookies inoffensifs, qui proviennent d’un domaine hébergé par Adobe, sont appelés cookies tiers.

De nombreux navigateurs et logiciels anti-espion sont conçus pour rejeter et supprimer les cookies tiers, y compris ceux utilisés dans la collecte de données d’Analytics. Pour prendre en charge le suivi de la manière dont vos interagissent avec votre site Web, vous pouvez mettre en oeuvre des cookies propriétaires.

Deux options sont disponibles pour implémenter les cookies propriétaires :

* Service d&#39;ID Experience Platform. Le service d&#39;ID peut définir le cookie dans le contexte propriétaire à l&#39;aide de JavaScript.
* Les entrées DNS sur votre serveur DNS  de votre pour configurer un alias CNAME sur un domaine hébergé par Adobe. Veuillez noter que si divers produits Adobe prennent en charge l’utilisation d’un CNAME, dans tous les cas, le CNAME est utilisé pour créer un point de terminaison propriétaire approuvé pour un client spécifique et appartient à ce client. Si ce client contrôle plusieurs domaines, il peut utiliser un point de fin CNAME unique pour effectuer le suivi des utilisateurs sur leurs domaines, mais comme cela nécessite des cookies tiers pour tous les domaines en dehors du domaine CNAME, cela ne fonctionne pas lorsque les cookies tiers sont bloqués et n’est donc pas recommandé. Les CNAME Adobe ne sont jamais utilisés pour effectuer le suivi d’un individu ou d’un périphérique sur des domaines appartenant à des clients différents.

Même si vous utilisez la première option avec le service d’ID d’Experience Cloud, le protocole ITP d’Apple rend les cookies propriétaires éphémères. Il est donc préférable de l’utiliser conjointement avec la seconde option.

Pour la deuxième option utilisant un CNAME, si votre site comporte des pages sécurisées utilisant le `https:` protocole, vous pouvez collaborer avec Adobe pour obtenir un certificat SSL afin de mettre en oeuvre des cookies propriétaires. Adobe recommande vivement d’utiliser exclusivement le protocole HTTPS pour la collecte de données, car nous ne prendrons plus en charge la collecte HTTP au cours du second semestre 2020.

Le processus d&#39;octroi de certificat SSL peut souvent être confus et long. Par conséquent, Adobe a établi un partenariat avec DigiCert, une autorité de certification leader de l&#39;industrie, et a développé un processus intégré par lequel l&#39;achat et la gestion de ces certificats sont automatisés.

Avec votre autorisation, nous collaborerons avec notre autorité de certification pour créer, déployer et gérer un nouveau certificat SSL SHA-2 pour vous. Adobe continuera à gérer ce certificat et à s’assurer qu’une expiration, une révocation ou un problème de sécurité inattendu ne menace pas la disponibilité de la collection sécurisée de votre entreprise.

## Programme de certificat géré Adobe

Le programme de certificat géré Adobe est le processus recommandé pour mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires.

Le programme de certificat géré Adobe permet de mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires, sans frais supplémentaires. Si vous disposez actuellement de votre propre certificat SSL géré par le client, contactez l’assistance clientèle d’Adobe au sujet de la migration vers le programme de certificat géré Adobe.

### Mise en œuvre

Voici comment mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires :

1. Remplissez le [formulaire de demande de cookie propriétaire](/help/interface/cookies/assets/FPC_Request_Form.xlsx) et ouvrez un ticket auprès de l’assistance clientèle afin de configurer des cookies propriétaires dans le programme géré Adobe. Chaque champ est décrit avec des exemples dans le document.

1. Créez des enregistrements CNAME (voir les instructions ci-dessous). À la réception du billet, un représentant du service à la clientèle doit vous fournir une paire d’enregistrements CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu&#39;Adobe puisse acheter le certificat en votre nom. Les enregistrements CNAMES sont similaires à ce qui suit : **Sécurisé** - Par exemple, le nom d’hôte `smetrics.example.com` désigne : `example.com.ssl.d1.omtrdc.net`. **Non sécurisé** : Par exemple, le nom d&#39;hôte `metrics.example.com` désigne : `example.com.d1.omtrdc.net`.

1. Lorsque ces enregistrements CNAME sont en place, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de production d&#39;Adobe. Si vous disposez d&#39;une mise en œuvre existante, envisagez la migration des visiteurs pour conserver vos visiteurs existants. Une fois le certificat publié dans l&#39;environnement de production d&#39;Adobe, vous pourrez mettre à jour vos variables de serveur de suivi avec les nouveaux noms d&#39;hôtes. En d&#39;autres termes, si le site n&#39;est pas sécurisé (https), mettez à jour la variable `s.trackingServer`. Si le site est sécurisé (https), mettez à jour les variables `s.trackingServer` et `s.trackingServerSecure`.

1. Validez le transfert du nom d’hôte (voir ci-dessous).

1. Mettez à jour le code de mise en œuvre (voir ci-dessous).

### Maintenance et renouvellements

Les certificats SSL expirent chaque année, ce qui signifie qu&#39;Adobe doit acheter tous les ans un nouveau certificat pour chaque mise en œuvre. Tous les utilisateurs pris en charge au sein de votre organisation reçoivent une notification par courrier électronique chaque fois qu&#39;une mise en œuvre arrive à expiration. Pour qu’Adobe renouvelle votre nom d’hôte, un utilisateur pris en charge doit répondre au courrier électronique d’Adobe et indiquer que vous prévoyez de continuer à utiliser le nom d’hôte qui expire pour la collecte de données. À ce stade, Adobe achète et installe automatiquement un nouveau certificat.

### Questions fréquentes

| Question | Réponse |
|---|---|
| **Ce processus est-il sécurisé ?** | Oui, le programme géré Adobe est plus sécurisé que notre méthode héritée car aucun certificat ou clé privée ne change de main en dehors d&#39;Adobe et de l&#39;autorité de certification émettrice. |
| **Comment Adobe peut-il acheter un certificat pour notre domaine ?** | Le certificat ne peut être acheté que lorsque vous avez pointé le nom d&#39;hôte spécifié (smetrics.example.com, par exemple) vers un nom d&#39;hôte détenu par Adobe. Cela a essentiellement pour effet de déléguer ce nom d&#39;hôte à Adobe et de permettre à Adobe d&#39;acheter le certificat en votre nom. |
| **Puis-je demander la révocation du certificat ?** | Oui, en tant que propriétaire du domaine, vous êtes autorisé à demander la révocation du certificat. Vous devez uniquement ouvrir un ticket auprès de l&#39;assistance clientèle pour terminer le processus. |
| **Ce certificat utilisera-t-il le chiffrement SHA-2 ?** | Oui, Adobe travaillera avec DigiCert pour émettre un certificat SHA-2. |
| **Cela engendre-t-il des frais supplémentaires ?** | Non, Adobe propose ce service à tous les clients actuels d’Adobe Digital Experience sans frais supplémentaires. |

## Créer des enregistrements CNAME

L&#39;équipe des opérations réseau de votre organisation doit configurer vos serveurs DNS en créant un ou plusieurs enregistrements CNAME. Chaque nom d&#39;hôte transfère les données aux serveurs de collecte de données d&#39;Adobe.

Le spécialiste FPC vous fournit les noms d&#39;hôtes configurés et les enregistrements CNAME vers lesquels ils doivent pointer. Par exemple :

* **Nom d&#39;hôte SSL**:`smetrics.mysite.com`
* **Enregistrement CNAME SSL**:`mysite.com.ssl.sc.omtrdc.net`
* **Nom d’hôte non-SSL**:`metrics.mysite.com`
* **Enregistrement CNAME non SSL**:`mysite.com.sc.omtrdc.net`

Tant que le code de mise en œuvre n’est pas altéré, cette étape n’a aucune incidence sur la collecte de données et peut avoir lieu à tout moment après la mise à jour du code de mise en œuvre.

>[!NRemarque :] Le service d’ID de d’Experience Cloud offre une alternative à la configuration d’un CNAME pour activer les cookies propriétaires, mais en raison des récentes modifications Apple ITP, il est toujours recommandé d’allouer un CNAME même lors de l’utilisation du service d’ID d’Experience Cloud.

## Valider le transfert du nom d’hôte

Dans le navigateur, cliquez sur <https://sstats.adobe.com/_check>.

Vous devriez voir `SUCCESS` revenir. Des erreurs s’affichent si le certificat n’a pas été acheté.

Vous pouvez également utiliser [!DNL curl] comme outil de ligne de commande pour la validation :

1. Si vous utilisez [!DNL Windows], installez curl (<https://curl.haxx.se/windows/>).
1. Si CNAME a toujours besoin d’un certificat, saisissez `curl -k https://sstats.adobe.com/_check` dans la ligne de commande.
1. Si le certificat est terminé, saisissez `curl https://sstats.adobe.com/_check`.

Vous devriez voir `SUCCESS` revenir.

<!-- ## Ping the hostname

Ping the hostname to ensure correct forwarding. All hostnames must respond to a ping to prevent data loss.

After CNAME records are properly configured, and Adobe has confirmed installation of the certificate, open a command prompt and ping your hostname(s). Using `mysite.com` as an example: `ping metrics.mysite.com`

If everything is successfully set up, it will return something similar to the following:

```Pinging mysite.com.112.2o7.net [66.235.132.232] with 32 bytes of data:
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246
Reply from 66.235.132.232: bytes=32 time=19ms TTL=246

Ping statistics for 66.235.132.232: Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds: Minimum = 19ms, Maximum = 19ms, Average = 19ms
```

If the CNAME records are not correctly set up or not active, it will return the following:

`Ping request could not find the host. Please check the name and try again.`

>[!Note:] If you are using `https:// protocol`, ping will only respond after the upload date specified by the FPC specialist. In addition, be sure to ping the secure hostname and non-secure hostname to ensure that both are working correctly before updating your implementation. -->

## Mettre à jour le code de mise en œuvre

Avant de modifier le code sur votre site pour utiliser des cookies propriétaires, procédez comme suit :

* Demandez un certificat SSL en suivant les étapes décrites ci-dessus dans la section *Implémentation* du [de certificats gérés](#adobe-managed-certificate-program)Adobe.
* Créez des enregistrements CNAME (voir ci-dessus).
* Validez le ou les noms d’hôte (voir ci-dessus).

Après avoir vérifié que vos noms d’hôtes répondent et procèdent au transfert vers les serveurs de collecte de données d’Adobe, vous pouvez modifier votre mise en œuvre afin de pointer vers vos propres noms d’hôte de collecte de données.

1. Ouvrez votre fichier JavaScript principal (`s_code.js/AppMeasurement.js`).
1. Pour mettre à jour votre version de code, remplacez votre fichier `s_code.js/AppMeasurement.js` dans son intégralité par la version la plus récente, puis remplacez des modules externes ou personnalisations (le cas échéant). **Ou**, si vous souhaitez mettre à jour le code uniquement pertinent pour les cookies propriétaires, localisez les variables s.trackingServer et s.trackingServerSecure (si vous utilisez SSL) et pointez-les vers vos nouveaux noms d&#39;hôte de collecte de données. Utilisation de mysite.com en tant qu’exemple :`s.trackingServer = "metrics.mysite.com"` `s.trackingServerSecure = "smetrics.mysite.com"`

1. Transférez le fichier JavaScript principal mis à jour vers votre site.

1. Si vous passez à des cookies propriétaires à partir d&#39;une mise en œuvre de longue date ou passez à un nom d&#39;hôte de collecte propriétaire différent, il est recommandé de migrer les visiteurs du domaine précédent vers le nouveau domaine.

Voir Migration [des](https://docs.adobe.com/help/en/analytics/implementation/javascript-implementation/visitor-migration.html) dans le Guide de mise en oeuvre d’Analytics.

Après avoir transféré le fichier JavaScript, tout est configuré pour la collecte de données de cookies propriétaires. Nous vous recommandons de surveiller la création de rapports Analytics pour les heures suivantes afin de vous assurer que la collecte de données se poursuit normalement. Si ce n’est pas le cas, vérifiez que toutes les étapes ci-dessus sont terminées et demandez à l’assistance utilisateurs de votre entreprise de contacter l’assistance clientèle.
