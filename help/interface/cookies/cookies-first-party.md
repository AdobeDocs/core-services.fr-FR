---
description: Découvrez comment Adobe Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne sont pas conservés entre les demandes d’images et les sessions de navigateur.
keywords: cookies;privacy
solution: Experience Cloud,Analytics
title: 'Utilisation des cookies propriétaires '
index: y
snippet: y
translation-type: ht
source-git-commit: 3f26c1af19a0838913eec2b4135304f5f3fcf0b4
workflow-type: ht
source-wordcount: '1444'
ht-degree: 100%

---


# À propos des cookies propriétaires

Analytics utilise les cookies afin de fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’images et les sessions de navigateur. Ces cookies inoffensifs, issus d’un domaine hébergé par Adobe, sont des cookies tiers.

De nombreux navigateurs et logiciels anti-espions sont conçus pour rejeter et supprimer les cookies tiers, y compris ceux utilisés dans la collecte de données Analytics. Afin de prendre en charge votre suivi de la manière dont vos visiteurs interagissent avec votre site web, vous pouvez mettre en œuvre des cookies propriétaires.

Deux options permettent de mettre en œuvre des cookies propriétaires :

* Service Experience Platform ID. Le service d’ID peut définir le cookie dans le contexte propriétaire à l’aide de JavaScript.
* Entrées DNS sur le serveur DNS de votre société pour configurer un alias CNAME vers un domaine hébergé par Adobe. Il faut souligner que même si divers produits Adobe prennent en charge l’utilisation d’un CNAME, le CNAME est systématiquement employé pour créer un point de terminaison propriétaire approuvé pour un client spécifique, et il appartient à ce client. Si ce client contrôle plusieurs domaines, il peut utiliser un seul point de terminaison CNAME pour effectuer le suivi des utilisateurs sur ses domaines. Cette pratique nécessitant toutefois des cookies tiers pour tous les domaines en dehors du domaine CNAME, elle ne fonctionne pas lorsque des cookies tiers sont bloqués : elle n’est donc pas recommandée. Les CNAME Adobe ne sont jamais utilisés pour effectuer le suivi d’un individu ou d’un périphérique sur des domaines appartenant à différents clients.

Même si vous utilisez la première option avec le service Experience Cloud ID, l’ITP d’Apple réduit grandement la durée de vie des cookies propriétaires. Il est donc préférable de combiner leur utilisation à la seconde option.

Pour la seconde option utilisant un CNAME, si votre site comporte des pages sécurisées à l’aide du protocole HTTPS, vous pouvez vous rapprocher d’Adobe pour obtenir un certificat SSL dans le but de mettre en œuvre des cookies propriétaires. Adobe recommande vivement l’utilisation exclusive du protocole HTTPS pour la collecte de données, car la prise en charge de la collecte par le biais du protocole HTTP sera abandonnée au cours du second semestre 2020.

Le processus d’octroi de certificat SSL peut souvent être confus et long. Par conséquent, Adobe a établi un partenariat avec DigiCert, une autorité de certification leader de l’industrie, et a développé un processus intégré par lequel l’achat et la gestion de ces certificats sont automatisés.

Avec votre autorisation, nous collaborerons avec notre autorité de certification pour créer, déployer et gérer un nouveau certificat SSL SHA-2 pour vous. Adobe continuera à gérer ce certificat et à s’assurer qu’une expiration, une révocation ou une préoccupation sur la sécurité inattendue ne menace pas la disponibilité de la collecte sécurisée de votre organisation.

## Programme de certificat géré Adobe

Le programme de certificat géré Adobe est le processus recommandé pour mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires.

Le programme de certificat géré Adobe permet de mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires, sans frais supplémentaires (pour vos 100 premiers CNAME). Si vous disposez actuellement de votre propre certificat SSL géré par le client, contactez l’assistance clientèle d’Adobe au sujet de la migration vers le programme de certificat géré Adobe.

### Mise en œuvre

Voici comment mettre en œuvre un nouveau certificat SSL propriétaire pour les cookies propriétaires :

1. Remplissez le [formulaire de demande de cookie propriétaire](/help/interface/cookies/assets/FPC_Request_Form.xlsx) et ouvrez un ticket auprès de l’assistance clientèle afin de configurer des cookies propriétaires dans le programme géré Adobe. Chaque champ est décrit avec des exemples dans le document.

1. Créez des enregistrements CNAME (voir les instructions ci-dessous).

   Lors de la réception du ticket, un représentant de l’assistance clientèle doit vous fournir une paire d’enregistrements CNAME. Ces enregistrements doivent être configurés sur le serveur DNS de votre entreprise pour qu’Adobe puisse acheter le certificat en votre nom. Les CNAME auront l’aspect suivant :

   **Sécurisé** : par exemple, le nom d’hôte `smetrics.example.com` désigne : `example.com.ssl.d1.omtrdc.net`.

   **Non sécurisé** : par exemple, le nom d’hôte `metrics.example.com` désigne : `example.com.d1.omtrdc.net`.

1. Lorsque ces enregistrements CNAME sont en place, Adobe travaille avec DigiCert pour acheter et installer un certificat sur les serveurs de production d’Adobe.

   Si vous disposez d’une mise en œuvre existante, envisagez la migration des visiteurs pour conserver vos visiteurs existants. Une fois le certificat publié dans l’environnement de production d’Adobe, vous pouvez mettre à jour vos variables de serveur de suivi avec les nouveaux noms d’hôtes. En d’autres termes, si le site n’est pas sécurisé (HTTP), mettez à jour la variable `s.trackingServer`. Si le site est sécurisé (HTTPS), mettez à jour les variables `s.trackingServer` et `s.trackingServerSecure`.

1. [Validation du transfert de nom d’hôte](#validate) (voir ci-dessous).

1. [Mise à jour du code de mise en œuvre](#update) (voir ci-dessous).

### Maintenance et renouvellements

Les certificats SSL expirent chaque année, ce qui signifie qu’Adobe doit acheter tous les ans un nouveau certificat pour chaque mise en œuvre. Tous les utilisateurs pris en charge au sein de votre organisation reçoivent une notification par courrier électronique chaque fois qu’une mise en œuvre arrive à expiration. Pour qu’Adobe renouvelle votre nom d’hôte, un utilisateur pris en charge doit répondre au courrier électronique d’Adobe et indiquer que vous prévoyez de continuer à utiliser le nom d’hôte arrivant à expiration pour la collecte de données. À ce stade, Adobe achète et installe automatiquement un nouveau certificat.

### Questions fréquentes

| Question | Réponse |
|---|---|
| **Ce processus est-il sécurisé ?** | Oui, le programme géré Adobe est plus sécurisé que notre méthode héritée, car aucun certificat ou clé privée ne change de main en dehors d’Adobe et de l’autorité de certification émettrice. |
| **Comment Adobe peut-il acheter un certificat pour notre domaine ?** | Le certificat ne peut être acheté que lorsque vous avez pointé le nom d’hôte spécifié (par exemple `smetrics.example.com`) vers un nom d’hôte détenu par Adobe. Cela a essentiellement pour effet de déléguer ce nom d’hôte à Adobe et de permettre à Adobe d’acheter le certificat en votre nom. |
| **Puis-je demander la révocation du certificat ?** | Oui, en tant que propriétaire du domaine, vous êtes autorisé à demander la révocation du certificat. Vous devez uniquement ouvrir un ticket auprès de l’assistance clientèle pour terminer le processus. |
| **Ce certificat utilisera-t-il le chiffrement SHA-2 ?** | Oui, Adobe travaillera avec DigiCert pour émettre un certificat SHA-2. |
| **Cela engendre-t-il des frais supplémentaires ?** | Non, Adobe offre ce service à tous les clients actuels d’Adobe Digital Experience sans frais supplémentaires. |

## Créer des enregistrements CNAME

L’équipe des opérations réseau de votre organisation doit configurer vos serveurs DNS en créant un ou plusieurs enregistrements CNAME. Chaque nom d’hôte transfère les données aux serveurs de collecte de données d’Adobe.

Le spécialiste FPC vous fournit les noms d’hôtes configurés et les enregistrements CNAME vers lesquels ils doivent pointer. Par exemple :

* **Nom d’hôte SSL** : `smetrics.mysite.com`
* **Enregistrement CNAME SSL** : `mysite.com.ssl.sc.omtrdc.net`
* **Nom d’hôte non-SSL** : `metrics.mysite.com`
* **Enregistrement CNAME non SSL** : `mysite.com.sc.omtrdc.net`

Tant que le code de mise en œuvre n’est pas altéré, cette étape n’a aucune incidence sur la collecte de données et peut avoir lieu à tout moment après la mise à jour du code de mise en œuvre.

>[!NOTE]
>
>Le service Experience Cloud Visitor ID offre une alternative à la configuration d’un CNAME pour activer les cookies propriétaires. En raison des récentes modifications de l’ITP Apple, il est cependant toujours recommandé d’allouer un CNAME même lors de l’utilisation du service Experience Cloud ID.

## Validation du transfert du nom d’hôte {#validate}

Les méthodes suivantes peuvent être employées pour la validation :

### Validation à l’aide d’un navigateur

Si un CNAME est configuré et que le certificat est installé, vous pouvez utiliser le navigateur pour la validation :

`https://sstats.adobe.com/_check`

>[!NOTE]
>
>Un message d’avertissement s’affichera si aucun certificat n’est installé.

### Validation à l’aide de [!DNL curl]

Adobe recommande l’utilisation de [[!DNL curl]](https://curl.haxx.se/) dans la ligne de commande. (les utilisateurs de [!DNL Windows] peuvent installer [!DNL curl] à partir de : <https://curl.haxx.se/windows/>)

Si vous disposez d’un CNAME mais qu’aucun certificat n’est installé, exécutez :
`curl -k https://sstats.adobe.com/_check`
Réponse : `SUCCESS`

(La valeur `-k` désactive le message d’avertissement.)

Si vous avez configuré un CNAME et que le certificat est installé, exécutez :
`curl https://sstats.adobe.com/_check`
Réponse : `SUCCESS`

### Validation à l’aide de [!DNL nslookup]

Vous pouvez utiliser `nslookup` pour la validation. Au moyen d’un exemple `sstats.adobe.com`, ouvrez une invite de commande et saisissez `nslookup sstats.adobe.com`

Si tout est correctement configuré, vous obtiendrez un retour similaire à :

```
nslookup sstats.adobe.com
Server:             10.30.7.247
Address:     10.30.7.247#53

sstats.adobe.com    canonical name = adobe.com.ssl.d1.sc.omtrdc.net.
Name:  adobe.com.ssl.d1.sc.omtrdc.net
Address: 54.218.180.161
Name:  adobe.com.ssl.d1.sc.omtrdc.net
Address: 52.39.8.230
Name:  adobe.com.ssl.d1.sc.omtrdc.net
Address: 54.187.216.46
```

## Mettre à jour le code de mise en œuvre {#update}

Avant de modifier le code sur votre site pour utiliser des cookies propriétaires, procédez comme suit :

* Demandez un certificat SSL en suivant les étapes décrites ci-dessus dans la section *Mise en œuvre* du [Programme de certificat géré Adobe](#adobe-managed-certificate-program).
* Créez des enregistrements CNAME (voir ci-dessus).
* Validez le ou les noms d’hôte (voir ci-dessus).

Après avoir vérifié que vos noms d’hôtes répondent et procèdent au transfert vers les serveurs de collecte de données d’Adobe, vous pouvez modifier votre mise en œuvre afin de pointer vers vos propres noms d’hôte de collecte de données.

1. Ouvrez votre fichier JavaScript principal (`s_code.js/AppMeasurement.js`).
1. Pour mettre à jour votre version de code, remplacez votre fichier `s_code.js/AppMeasurement.js` dans son intégralité par la version la plus récente, puis remplacez des modules externes ou personnalisations (le cas échéant). **Ou**, si vous souhaitez mettre à jour le code uniquement pertinent pour les cookies propriétaires, localisez les variables s.trackingServer et s.trackingServerSecure (si vous utilisez SSL) et pointez-les vers vos nouveaux noms d’hôte de collecte de données. Utilisation de mysite.com en tant qu’exemple : `s.trackingServer = "metrics.mysite.com"` `s.trackingServerSecure = "smetrics.mysite.com"`

1. Transférez le fichier JavaScript principal mis à jour vers votre site.

1. Si vous passez à des cookies propriétaires à partir d’une mise en œuvre de longue date ou passez à un nom d’hôte de collecte propriétaire différent, il est recommandé de migrer les visiteurs du domaine précédent vers le nouveau domaine.

Voir [Migration des Visiteurs](https://docs.adobe.com/content/help/fr-FR/analytics/components/metrics/unique-visitors.html) dans le Guide de mise en œuvre d’Analytics.

Après avoir transféré le fichier JavaScript, tout est configuré pour la collecte de données de cookies propriétaires. Nous vous recommandons de surveiller la création de rapports Analytics pour les heures suivantes afin de vous assurer que la collecte de données se poursuit normalement. Si ce n’est pas le cas, vérifiez que toutes les étapes ci-dessus sont terminées et demandez à l’assistance utilisateurs de votre entreprise de contacter l’assistance clientèle.
