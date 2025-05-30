---
description: Découvrez comment Adobe Target utilise des cookies pour offrir aux opérateurs de sites web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.
solution: Target
title: Cookies Adobe Target
uuid: 44f7e32e-8d99-4682-8b54-8364d001b403
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: c4399cc0-8333-47b8-b830-2ba7359f464a
source-git-commit: 9ee4d9b0e670dec35cda530892c49e36bf7cc107
workflow-type: tm+mt
source-wordcount: '627'
ht-degree: 17%

---

# Cookies Adobe Target

Adobe Target utilise des cookies pour offrir aux opérateurs du site web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.

>[!NOTE]
>
>Les informations de cet article s’appliquent uniquement à la [bibliothèque JavaScript Adobe Target](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html?lang=fr){target=_blank} (`at.js`). Pour plus d’informations sur les mises en oeuvre de Target à l’aide du SDK Web, voir [Cookies du SDK Web Adobe Experience Platform](web-sdk.md) .
>
>Si nécessaire, vous pouvez modifier les paramètres décrits dans cet article, à l’exception de la durée du cookie. [Consultez le représentant de votre compte](https://experienceleague.adobe.com/docs/target/using/cmp-resources-and-contact-information.html?lang=fr){target=_blank} lors de la modification des paramètres des cookies.

## Cookies propriétaires

Les cookies propriétaires suivants sont stockés sur le domaine du client :

| Cookie | Détails |
| --- | --- |
| `mbox` | Stocke des identifiants anonymes à propos du visiteur.<P>**Domaine du cookie** : domaine à partir duquel vous diffusez la mbox. Comme ce cookie est diffusé à partir du domaine de votre entreprise, il s’agit d’un cookie propriétaire. Si l’un de vos noms de domaine inclut un code de pays, tel que `example.co.uk`, demandez à des services clients de configurer `at.js` pour prendre en charge ce code. Pour plus d’informations sur la personnalisation du domaine de cookie, si nécessaire, voir `cookieDomain` sous [targetGlobalSettings](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html?lang=fr){target=_blank} dans le guide de développement d’Adobe Target.<P>**Domaine du serveur** : `clientcode.tt.omtrdc.net` à l’aide du code client de votre compte Adobe Target.<P>**Durée du cookie** : le cookie reste dans le navigateur du visiteur deux ans à compter de la dernière connexion. Vous ne pouvez pas modifier la durée du cookie.<P>Le cookie conserve certaines valeurs pour gérer la manière dont vos visiteurs expérimentent les activités [!DNL Target] :<P>**ID de session** : identifiant unique d’une session d’utilisateur donnée. Par défaut, la session expire au bout de 30 minutes d’inactivité. Si vous générez vous-même `sessionId` (par exemple, pour les [implémentations côté serveur](https://experienceleague.adobe.com/docs/target-dev/developer/server-side/server-side-overview.html?lang=fr){target=_blank}), assurez-vous des éléments suivants :<ul><li>L’ID de session peut être n’importe quelle chaîne imprimable à l’exception d’un espace, d’un point d’interrogation ( ? ) ou d’une barre oblique (/).</li><li>L’ID de session doit comporter entre 1 et 128 caractères.</li><li>Pour une session particulière, la valeur du cookie doit rester la même pour plusieurs requêtes.</li><li>Vous ne devriez jamais avoir de sessions parallèles (distinctes `sessionIds`) pour un visiteur donné à un moment donné.</li></ul>Le routage vers un noeud particulier de la grappe Edge est effectué à l’aide de l’ID de session.<ul><li>La session est active pendant 30 minutes côté serveur. Par conséquent, vous ne devez pas utiliser un autre ID de session pour un `tntId/thirdPartyId` particulier dans les 30 minutes suivant la dernière requête effectuée avec `tntId/thirdPartyId`. Dans le cas contraire, les modifications apportées au profil pourraient s’avérer incohérentes et imprévisibles.</li><li>Un nouvel ID de session doit être utilisé après trente minutes d’inactivité d’un visiteur.</li><li>L’utilisation du même ID de session avec plusieurs `tntIds/thirdPartyIds` peut entraîner des modifications imprévisibles des profils identifiés par `tntId/thirdPartyIDs`.</li></ul>REMARQUE : Voir [limite du nombre de requêtes simultanées](https://experienceleague.adobe.com/docs/target/using/troubleshoot/target-limits.html?lang=fr#content-delivery){target=_blank} pour un ID de session donné.<P>**pc ID** : identifiant semi-permanent du navigateur d’un visiteur. Dure jusqu’à ce que les cookies soient supprimés manuellement.<P>**check** : valeur de test simple utilisée pour déterminer si un visiteur prend en charge les cookies. Défini chaque fois qu’un visiteur demande une page.<P>**disable** : définie si le temps de chargement d’un visiteur dépasse le délai configuré dans le fichier at.js. Par défaut, ce délai d’expiration dure une heure. |
| `at_check` | Cookie temporaire permettant de vérifier si la fonctionnalité de lecture/écriture des cookies est activée sur le navigateur. |
| `mboxEdgeCluster` | Ces cookies sont présents uniquement lorsque le paramètre [overrideMboxEdgeServer](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html?lang=fr){target=_blank} est défini sur `true`. |

Il n’est pas possible d’utiliser `HTTPOnly` sur ces cookies propriétaires. La bibliothèque JavaScript `at.js` doit lire/écrire sur ces cookies. Ces cookies sont créés par `at.js` et ne sont pas définis à partir du serveur.

Le paramètre `secure` peut être activé sur tous ces cookies à l’aide de la configuration `secureOnly: true` de `at.js`.

## Cookies tiers

Les utilisateurs Adobe Target peuvent créer des cookies tiers personnalisés. Les cookies tiers suivants sont stockés sur `tt.omtrdc.net` :

| Cookie | Détails |
| --- | --- |
| `customerclientcode!mboxPC` | Présent si interdomaines est activé. |
| `customerclientcode!mboxSession` | Présent si interdomaines est activé. |

Ces cookies tiers sont prêts à l’emploi uniquement pour HTTPO et sont définis par les serveurs de collecte de données Adobe Target.

Le paramètre `secure` peut être activé sur tous les cookies à l’aide de la configuration `secureOnly: true` de `at.js`.
