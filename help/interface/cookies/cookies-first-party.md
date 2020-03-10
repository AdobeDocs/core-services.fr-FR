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
source-git-commit: edbe58ffbaeadd2e223ef1567ec9060ab4073f1e

---


# À propos des cookies propriétaires

Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur. Ces cookies inoffensifs, qui proviennent d’un domaine hébergé par Adobe, sont appelés cookies tiers.

De nombreux navigateurs et logiciels anti-espion sont conçus pour rejeter et supprimer les cookies tiers, y compris ceux utilisés dans la collecte de données d’Analytics. Pour prendre en charge le suivi de la manière dont vos interagissent avec votre site Web, vous pouvez mettre en oeuvre des cookies propriétaires.

Deux options sont disponibles pour implémenter les cookies propriétaires :

* Service d&#39;ID Experience Platform. Le service d&#39;ID peut définir le cookie dans le contexte propriétaire à l&#39;aide de JavaScript.
* Les entrées DNS sur votre serveur DNS  de votre pour configurer un alias CNAME sur un domaine hébergé par Adobe. Veuillez noter que si divers produits Adobe prennent en charge l’utilisation d’un CNAME, dans tous les cas, le CNAME est utilisé pour créer un point de terminaison propriétaire approuvé pour un client spécifique et appartient à ce client. Si ce client contrôle plusieurs domaines, il peut utiliser un point de fin CNAME unique pour effectuer le suivi des utilisateurs sur leurs domaines, mais comme cela nécessite des cookies tiers pour tous les domaines en dehors du domaine CNAME, cela ne fonctionne pas lorsque les cookies tiers sont bloqués et n’est donc pas recommandé. Les CNAME Adobe ne sont jamais utilisés pour effectuer le suivi d’un individu ou d’un périphérique sur des domaines appartenant à des clients différents.

Même si vous utilisez la première option avec le service d’ID d’Experience Cloud, le protocole ITP d’Apple rend les cookies propriétaires éphémères. Il est donc préférable de l’utiliser conjointement avec la seconde option.

Pour la deuxième option utilisant un CNAME, si votre site comporte des pages sécurisées à l’aide du protocole HTTPS, vous pouvez demander à Adobe d’obtenir un certificat SSL afin de mettre en oeuvre des cookies propriétaires. Adobe recommande vivement d’utiliser exclusivement le protocole HTTPS pour la collecte de données, car nous ne prendrons plus en charge la collecte HTTP au cours du second semestre 2020.

Le processus d&#39;octroi de certificat SSL peut souvent être confus et long. Par conséquent, Adobe a établi un partenariat avec DigiCert, une autorité de certification leader de l&#39;industrie, et a développé un processus intégré par lequel l&#39;achat et la gestion de ces certificats sont automatisés.

Avec votre autorisation, nous collaborerons avec notre autorité de certification pour créer, déployer et gérer un nouveau certificat SSL SHA-2 pour vous. Adobe continuera à gérer ce certificat et à s’assurer qu’une expiration, une révocation ou un problème de sécurité inattendu ne menace pas la disponibilité de la collection sécurisée de votre entreprise.

## Programme de certificat géré Adobe

Le programme de certificat géré Adobe est le processus recommandé pour mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires.

Le programme de certificat géré Adobe permet de mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires, sans frais supplémentaires. Si vous disposez actuellement de votre propre certificat SSL géré par le client, contactez l’assistance clientèle d’Adobe au sujet de la migration vers le programme de certificat géré Adobe.

### Mise en œuvre

Voici comment mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires :

1. Remplissez le [formulaire de demande de cookie propriétaire](/help/interface/cookies/assets/FPC_Request_Form.xlsx) et ouvrez un ticket auprès de l’assistance clientèle afin de configurer des cookies propriétaires dans le programme géré Adobe. Chaque champ est décrit avec des exemples dans le document.

1. Créez des enregistrements CNAME (voir les instructions ci-dessous).

   À la réception du billet, un représentant du service à la clientèle doit vous fournir une paire d’enregistrements CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu&#39;Adobe puisse acheter le certificat en votre nom. Le CNAMES sera semblable à ce qui suit :

   **Secure** - Par exemple, le nom d’hôte `smetrics.example.com` pointe vers : `example.com.ssl.d1.omtrdc.net`.

   **Non sécurisé** : Par exemple, le nom d&#39;hôte `metrics.example.com` désigne : `example.com.d1.omtrdc.net`.

1. Lorsque ces enregistrements CNAME sont en place, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de production d&#39;Adobe.

   Si vous disposez d’une implémentation existante, pensez à la migration des pour conserver vos existants. Une fois que le certificat a été transmis en direct au de production  d’Adobe, vous pouvez mettre à jour les variables de votre serveur de suivi vers les nouveaux noms d’hôtes. Meaning, if the site is not secure (HTTP), update the `s.trackingServer`. If the site is secure (HTTPS), update both `s.trackingServer` and `s.trackingServerSecure` variables.

1. [Validez le transfert](#validate) du nom d’hôte (voir ci-dessous).

1. [Mettre à jour le code](#update) d’implémentation (voir ci-dessous).

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

>[!NRemarque :]
>Le service d’ID de d’Experience Cloud offre une alternative à la configuration d’un CNAME pour activer les cookies propriétaires, mais en raison des récentes modifications Apple ITP, il est toujours recommandé d’allouer un CNAME même lors de l’utilisation du service d’ID d’Experience Cloud.

## Valider le transfert du nom d’hôte {#validate}

Vous pouvez valider le nom d’hôte à l’aide de <https://sstats.adobe.com/_check>. Si vous avez configuré un CNAME et que le certificat est installé, vous pouvez utiliser le navigateur pour la validation. Toutefois, un avertissement de sécurité s’affiche si un certificat n’est pas installé.

**Valider à l’aide de curl**

Adobe recommande d’utiliser [!DNL curl] la ligne de commande. (Si vous vous trouvez sous Windows, vous devez installer [!DNL curl] : <https://curl.haxx.se/windows/>)

Si vous disposez d’un CNAME mais qu’aucun certificat n’est installé, exécutez :
`curl -k https://sstats.adobe.com/_check`Réponse : `SUCCESS`

(**Remarque :** La `-k` valeur désactive l’avertissement de sécurité.)

Si vous avez configuré un CNAME et que le certificat est installé, exécutez :
`curl https://sstats.adobe.com/_check`Réponse : SUCCÈS

**Valider à l’aide de nslookup**

Vous pouvez utiliser nslookup pour la validation. Utilisation d’`mysite.com` comme exemple : 

Ouvrez une invite de commande et saisissez `nslookup metrics.mysite.com`

Si tout est correctement configuré, un retour similaire à :

nslookup metrics.mysite.comServer :  hiodsibxvip01.corp.adobe.comAdresse :  10.50.112.247

Réponse non officielle :
Nom :    metrics.mysite.comAdresse :  64.136.20,37

## Mettre à jour le code de mise en œuvre {#update}

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
