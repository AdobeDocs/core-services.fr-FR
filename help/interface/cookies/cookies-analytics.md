---
description: Adobe Analytics utilise des cookies pour différencier les demandes en provenance de divers navigateurs et pour stocker des informations utiles qu’une application pourra utiliser ultérieurement. Ils peuvent également être utilisés pour associer des informations de navigation à des fiches client.
keywords: cookies;confidentialité
seo-description: Adobe Analytics utilise des cookies pour différencier les demandes en provenance de divers navigateurs et pour stocker des informations utiles qu’une application pourra utiliser ultérieurement. Ils peuvent également être utilisés pour associer des informations de navigation à des fiches client.
seo-title: Cookies Analytics
solution: Experience Cloud,Analytics,Target,Social
title: Cookies Analytics
uuid: e2d3d61d-2708-48b2-a7e6-2331f2aed8e0
index: y
internal: n
snippet: y
translation-type: ht
source-git-commit: f59badcd3423ada51a3fe0c605158a009d5b1d64

---


# Cookies Analytics{#analytics-cookies}

Adobe Analytics utilise des cookies pour différencier les demandes en provenance de divers navigateurs et pour stocker des informations utiles qu’une application pourra utiliser ultérieurement. Ils peuvent également être utilisés pour associer des informations de navigation à des fiches client.

Analytics utilise notamment des cookies pour définir anonymement les nouveaux visiteurs, aider à analyser les données de parcours de navigation et effectuer le suivi de l’historique des activités sur le site web, comme les réponses à des campagnes particulières ou la durée du cycle de vente.

* [Nom du cookie : s_ecid](../cookies/cookies-mc.md#section-32fd753c3fa54452acd62b021434919a)
* [Nom du cookie : AMCV_###@AdobeOrg](../cookies/cookies-mc.md#section-a12aa2a9296940ae82d8921b381b8fb0)
* [Nom du cookie : s_cc](../cookies/cookies-analytics.md#section-03aa90aa7e36427b8cb12dc4a0f0291e)
* [Nom du cookie : s_cc](../cookies/cookies-analytics.md#section-03aa90aa7e36427b8cb12dc4a0f0291e)
* [Nom du cookie : s_sq](../cookies/cookies-analytics.md#section-8abfff3a302d494f81a3cfb91e3b09ff)
* [Nom du cookie : s_vi](../cookies/cookies-analytics.md#section-5d50a078de444d12b7d927d68ff3b679)
* [Nom du cookie : s_fid](../cookies/cookies-analytics.md#section-65e33f9bfc264959ac1513e2f4b10ac7)
* [Cookies définis par des modules externes](../cookies/cookies-analytics.md#section-a6b1cae8454945fab9eea5c7884c40fc)

Vous trouverez plus d’informations dans l’aide Analytics au sujet des [cookies propriétaires](/help/interface/cookies/cookies-first-party.md).

## Nom du cookie : s_ecid {#section-32fd753c3fa54452acd62b021434919a}

| Attribut | Description |
|--- |--- |
| Informations stockées | Contient une copie du MID ou de l’Experience Cloud ID (ECID). Le MID est stocké dans une paire clé-valeur qui suit la syntaxe s_ecid=MCMID | <ECID> |
| Expiration | 2 ans |
| Utilisation | Ce cookie est défini par le domaine du client après la définition du cookie AMCV par le client. L'objectif de ce cookie est d'autoriser le suivi des identifiants persistants dans l'état propriétaire et il est utilisé comme ID de référence si le cookie AMCV a expiré. Pour plus d'informations, consultez le cookie AMCV. |
| Emplacement | Clients CNAME uniquement. Non applicable pour les scénarios tiers. Le cookie est stocké dans votre domaine, le même domaine utilisé par CNAME et votre demande d'image Analytics. |
| Taille | 45 octets |

## Nom du cookie : s_cc {#section-03aa90aa7e36427b8cb12dc4a0f0291e}

| Attribut | Description |
|--- |--- |
| Informations stockées | Ce cookie est défini et lu par le code JavaScript pour déterminer si les cookies sont activés (simplement défini sur « True »). |
| Expiration | Ce cookie est un cookie de session qui expire à la fermeture du navigateur. |
| Utilisation | Un seul cookie pour tous les comptes. |
| Emplacement | Ce cookie est stocké au niveau du domaine de la page. |
| Taille | 4 octets. |

## Nom du cookie : s_sq {#section-8abfff3a302d494f81a3cfb91e3b09ff}

| Attribut | Description |
|--- |--- |
| Informations stockées | Ce cookie est défini et lu par le code JavaScript lors de l’activation des fonctionnalités ClickMap et Activity Map ; il contient des informations sur le lien précédent sur lequel l’utilisateur a cliqué. |
| Expiration | Ce cookie est un cookie de session qui expire à la fermeture du navigateur. |
| Utilisation | Un seul cookie pour tous les comptes. |
| Emplacement | Ce cookie est stocké au niveau du domaine de la page. |
| Taille | Varie en fonction de la taille de l'URL de la page, mais habituellement de 100 à 200 octets |

## Nom du cookie : s_vi {#section-5d50a078de444d12b7d927d68ff3b679}

| Attribut | Description |
|--- |--- |
| Informations stockées | Horodatage de l’identifiant de visiteur unique. |
| Expiration | 2 ans |
| Utilisation | Ce cookie permet d’identifier un visiteur unique. |
| Emplacement | Ce cookie est stocké au niveau du domaine de la demande d’image ; généralement 2O7.net si vous utilisez des cookies tiers ou votre domaine si vous utilisez des cookies propriétaires. |
| Taille | 44 octets |

>[!NOTE]
>
>Chaque identifiant visiteur Analytics est associé à un profil du visiteur sur les serveurs Adobe. Les profils du visiteur sont supprimés après un an d’inactivité, quelle que soit la date d’expiration des cookies d’identifiant de visiteur.

## Nom du cookie : s_fid {#section-65e33f9bfc264959ac1513e2f4b10ac7}

| Attribut | Description |
|--- |--- |
| Informations stockées | Horodatage de secours de l’identifiant de visiteur unique |
| Expiration | 5 ans |
| Utilisation | Ce cookie permet d’identifier un visiteur unique. si le cookie s_vi standard n’est pas disponible en raison de restrictions des cookies tiers. Non utilisé pour les mises en œuvre utilisant des cookies prioritaires. |
| Emplacement | Ce cookie est stocké sur votre domaine en tant que cookie propriétaire. |
| Taille | 33 octets |

## Cookies définis par des modules externes {#section-a6b1cae8454945fab9eea5c7884c40fc}

Il est possible de définir d’autres cookies en fonction de l’utilisation des modules externes d’Analytics. Ces cookies sont des fragments de code mis à la disposition du client selon diverses situations d’utilisation : récupération de cookies à partir de l’URL, concaténation de valeurs à transmettre à Analytics, capture d’un abandon de formulaire, etc. Pour de plus amples informations sur les cookies définis par chaque module complémentaire, contactez le service à la clientèle. Le cookie [!DNL s_vh] utilisé avec les modules complémentaires *Set Once Per* et *Set and Get Last Value* en est un exemple.

Les variables de conversion (eVarX) transmises lors d’une demande d’image sans JavaScript, tel un code placé dans un courriel, sont correctement attribuées uniquement si le client de messagerie et le navigateur web partagent le même espace de cookies.
