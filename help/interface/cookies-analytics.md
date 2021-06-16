---
description: Découvrez les cookies Adobe Analytics dans Adobe Experience Cloud.
keywords: cookies;confidentialité
solution: Experience Cloud,Analytics,Target
title: 'Cookies Analytics '
uuid: e2d3d61d-2708-48b2-a7e6-2331f2aed8e0
feature: Cookies
topic: Administration
role: Administrator
level: Experienced
exl-id: bc8ce894-f98c-4475-8a07-d74ae76f7451
source-git-commit: 145040facf70c6bde5c6c3fae9c7ed7f520c188d
workflow-type: tm+mt
source-wordcount: '769'
ht-degree: 84%

---

# Cookies Analytics {#analytics-cookies}

Adobe Analytics utilise des cookies pour différencier les requêtes provenant de différents navigateurs et pour stocker des informations utiles qu’une application peut utiliser ultérieurement. Ils peuvent également être utilisés pour associer des informations de navigation aux dossiers des clients.

Analytics utilise des cookies pour définir anonymement les nouveaux visiteurs, aider à analyser les données de parcours de navigation et suivre l’historique de l’activité sur le site web, comme les réponses à des campagnes particulières ou la durée du cycle de vente.

* [Nom du cookie : s_ecid](cookies-mc.md#section-32fd753c3fa54452acd62b021434919a)
* [Nom du cookie : AMCV_###@AdobeOrg](cookies-mc.md#section-a12aa2a9296940ae82d8921b381b8fb0)
* [Nom du cookie : s_cc](cookies-analytics.md#section-03aa90aa7e36427b8cb12dc4a0f0291e)
* [Nom du cookie : s_cc](cookies-analytics.md#section-03aa90aa7e36427b8cb12dc4a0f0291e)
* [Nom du cookie : s_sq](cookies-analytics.md#section-8abfff3a302d494f81a3cfb91e3b09ff)
* [Nom du cookie : s_vi](cookies-analytics.md#section-5d50a078de444d12b7d927d68ff3b679)
* [Nom du cookie : s_fid](cookies-analytics.md#section-65e33f9bfc264959ac1513e2f4b10ac7)
* [Cookies définis par des modules externes](cookies-analytics.md#section-a6b1cae8454945fab9eea5c7884c40fc)

Pour plus d’informations, reportez-vous à l’aide d’Analytics sur les [cookies propriétaires](cookies-first-party.md).

## Nom du cookie : s_ecid {#section-32fd753c3fa54452acd62b021434919a}

| Attribut | Description |
|--- |--- |
| Informations stockées | Contient une copie du MID ou de l’Experience Cloud ID (ECID). Le MID est stocké dans une paire clé-valeur qui suit la syntaxe s_ecid=MCMID | `<ECID>` |
| Expiration | 2 ans |
| Utilisation | Ce cookie est défini par le domaine du client après la définition du cookie AMCV par le client. L’objectif de ce cookie est d’autoriser le suivi des ID persistants dans l’état propriétaire et il est utilisé comme ID de référence si le cookie AMCV a expiré. Pour plus d’informations, consultez le cookie AMCV. |
| Emplacement | Clients CNAME uniquement. Non applicable pour les scénarios tiers. Le cookie est stocké dans votre domaine, le même domaine utilisé par CNAME et votre demande d’image Analytics. |
| Taille | 45 octets |

{style=&quot;table-layout:auto&quot;}

## Nom du cookie : s_cc {#section-03aa90aa7e36427b8cb12dc4a0f0291e}

| Attribut | Description |
|--- |--- |
| Informations stockées | Ce cookie est défini et lu par le code JavaScript pour déterminer si les cookies sont activés (défini sur &quot;True&quot;). |
| Expiration | Ce cookie est un cookie de session qui expire à la fermeture du navigateur |
| Utilisation | Un seul cookie pour tous les comptes |
| Emplacement | Ce cookie est stocké au niveau du domaine de la page. |
| Taille | 4 octets |

{style=&quot;table-layout:auto&quot;}

## Nom du cookie : s_sq {#section-8abfff3a302d494f81a3cfb91e3b09ff}

| Attribut | Description |
|--- |--- |
| Informations stockées | Ce cookie est défini et lu par le code JavaScript lorsque la fonctionnalité ClickMap ou Activity Map est activée ; contient des informations sur le lien précédent sur lequel l’utilisateur a cliqué. |
| Expiration | Ce cookie est un cookie de session qui expire à la fermeture du navigateur |
| Utilisation | Un seul cookie pour tous les comptes |
| Emplacement | Ce cookie est stocké au niveau du domaine de la page. |
| Taille | Varie en fonction de la taille de l’URL de la page, mais habituellement de 100 à 200 octets |

{style=&quot;table-layout:auto&quot;}

## Nom du cookie : s_vi {#section-5d50a078de444d12b7d927d68ff3b679}

| Attribut | Description |
|--- |--- |
| Informations stockées | Horodatage de l’ID de visiteur unique. |
| Expiration | 2 ans |
| Utilisation | Ce cookie permet d’identifier un visiteur unique. |
| Emplacement | Ce cookie est stocké au niveau du domaine de la demande d’image ; généralement sous un sous-domaine spécifique au client sous 2o7.net ou omtrdc.net si vous utilisez des cookies tiers ou si votre domaine utilise des cookies propriétaires |
| Taille | 44 octets |

{style=&quot;table-layout:auto&quot;}

>[!NOTE]
>
>Chaque identifiant visiteur Analytics est associé à un profil du visiteur sur les serveurs Adobe. Les profils de visiteur sont supprimés après 1 an d’inactivité, quelle que soit la date d’expiration des cookies d’ID de visiteur.

## Nom du cookie : s_fid  {#section-65e33f9bfc264959ac1513e2f4b10ac7}

| Attribut | Description |
|--- |--- |
| Informations stockées | Horodatage de l’ID de visiteur unique de secours. |
| Expiration | 2 ans |
| Utilisation | Ce cookie permet d’identifier un visiteur unique. si le cookie standard `s_vi` n’est pas disponible en raison de restrictions des cookies tiers. Non utilisé pour les mises en œuvre qui utilisent des cookies propriétaires |
| Emplacement | Ce cookie est stocké sur votre domaine en tant que cookie propriétaire |
| Taille | 33 octets |

{style=&quot;table-layout:auto&quot;}

## Indicateurs de cookie

Le tableau suivant décrit les indicateurs des cookies Analytics :

| Cookie (défini par) | httpOnly | Sécurisé | SameSite |
|--- |--- |--- |--- |
| s_vi (réponse http) | Non | Oui lorsque SameSite est défini sur « Aucun » et que la connexion utilise le protocole HTTPS | « Lax » par défaut lors de l’utilisation de CNAME. « Aucun » lors de l’utilisation de 2o7.net ou omtrdc.net |
| s_ecid (réponse http) | Non | Non | « Lax » |
| s_fid (Javascript) | Non | Non | Non défini |
| s_cc (Javascript) | Non | Non | Non défini |
| s_sq (Javascript) | Non | Non | Non défini |

{style=&quot;table-layout:auto&quot;}

>[!NOTE]
>
>Si vous utilisez un seul CNAME pour effectuer le suivi sur plusieurs domaines ou propriétés, SameSite doit être défini sur « Aucun » pour `s_vi`. Pour obtenir de l’aide sur la modification des paramètres des cookies Analytics, contactez l’assistance clientèle.

## Cookies définis par des modules externes  {#section-a6b1cae8454945fab9eea5c7884c40fc}

D’autres cookies peuvent être définis en fonction de l’utilisation des modules externes Analytics. Ces cookies sont des fragments de code mis à la disposition du client pour une utilisation dans diverses circonstances. Ces circonstances comprennent la récupération des valeurs de l’URL, la concaténation de valeurs à transmettre à Analytics, la capture de l’abandon de formulaire, etc. Pour plus d’informations sur les cookies définis par chaque module externe, contactez ClientCare. Le cookie [!DNL s_vh] utilisé avec les modules complémentaires *Set Once Per* et *Set and Get Last Value* en est un exemple.

Les variables de conversion (eVarX) transmises lors d’une demande d’image sans JavaScript, telles que le code placé dans un courrier électronique, ne sont correctement attribuées que si le client de messagerie et le navigateur web partagent l’espace de cookie.
