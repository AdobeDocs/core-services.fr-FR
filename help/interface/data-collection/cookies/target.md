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
source-git-commit: e63dd988abba199049da2b3620eed9ebf51043d1
workflow-type: tm+mt
source-wordcount: '629'
ht-degree: 16%

---

# Cookies Adobe Target

Adobe Target utilise des cookies pour offrir aux opérateurs du site web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.

>[!NOTE]
>
>Les informations contenues dans cet article s’appliquent uniquement à la bibliothèque Adobe Target JavaScript [](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html){target=_blank} (`at.js`). Voir [Cookies Adobe Experience Platform Web SDK](web-sdk.md) pour plus d’informations sur les implémentations de Target à l’aide de Web SDK.
>
>Si nécessaire, vous pouvez modifier les paramètres abordés dans cet article, à l’exception de la durée des cookies. [Consultez votre représentant de compte](https://experienceleague.adobe.com/docs/target/using/cmp-resources-and-contact-information.html){target=_blank} lors de la modification des paramètres des cookies.

## Cookies propriétaires

Les cookies propriétaires suivants sont stockés dans le domaine du client :

| Cookie | Détails |
| --- | --- |
| `mbox` | Stocke des identifiants anonymes sur le visiteur.<P>**Domaine du cookie** : domaine à partir duquel vous diffusez la mbox. Comme ce cookie est diffusé à partir du domaine de votre entreprise, il s’agit d’un cookie propriétaire. Si l’un des noms de domaine comprend un code de pays, tel que `example.co.uk`, contactez les services clients pour configurer des `at.js` prenant en charge ce code. Pour plus d’informations sur la personnalisation du domaine du cookie, si nécessaire, consultez `cookieDomain` sous [targetGlobalSettings](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html){target=_blank} dans le guide de développement d’Adobe Target.<P>**Domaine du serveur** : `clientcode.tt.omtrdc.net`, à l’aide du code client de votre compte Adobe Target.<P>**Durée du cookie** : le cookie reste sur le navigateur du visiteur deux ans après la dernière connexion. Vous ne pouvez pas modifier la durée du cookie.<P>Le cookie conserve certaines valeurs pour gérer la manière dont vos visiteurs expérimentent [!DNL Target] activités :<P>**ID de session** : identifiant unique d’une session utilisateur donnée. Par défaut, la session expire au bout de 30 minutes d’inactivité. Si vous générez des `sessionId` vous-même (par exemple, pour les [implémentations côté serveur](https://experienceleague.adobe.com/docs/target-dev/developer/server-side/server-side-overview.html){target=_blank}), vérifiez les points suivants :<ul><li>L’ID de session peut être n’importe quelle chaîne imprimable, à l’exception d’un espace ou d’un point d’interrogation ( ? ), des accolades ( { } ) ou une barre oblique ( / ).</li><li>L’ID de session doit comporter entre 1 et 128 caractères.</li><li>Pour une session particulière, la valeur du cookie doit rester la même sur plusieurs requêtes.</li><li>Vous ne devriez jamais avoir de sessions parallèles (`sessionIds` distinctes) pour un visiteur donné à un moment donné.</li></ul>Le routage vers un nœud particulier du cluster Edge est effectué à l’aide de l’ID de session.<ul><li>La session est active pendant 30 minutes côté serveur. Par conséquent, vous ne devriez pas utiliser un ID de session différent pour un `tntId/thirdPartyId` particulier dans les 30 minutes suivant la dernière demande effectuée avec le `tntId/thirdPartyId`. Dans le cas contraire, les modifications apportées au profil pourraient s’avérer incohérentes et imprévisibles.</li><li>Un nouvel ID de session doit être utilisé après trente minutes d’inactivité d’un visiteur.</li><li>L’utilisation du même ID de session avec plusieurs `tntIds/thirdPartyIds` peut entraîner des modifications imprévisibles des profils identifiés par le `tntId/thirdPartyIDs`.</li></ul>REMARQUE : voir [Limitation du nombre de requêtes simultanées](https://experienceleague.adobe.com/docs/target/using/troubleshoot/target-limits.html#content-delivery){target=_blank} pour un ID de session donné.<P>**pc ID** : identifiant semi-permanent du navigateur d’un visiteur. Dure jusqu’à ce que les cookies soient supprimés manuellement.<P>**check** : valeur de test simple utilisée pour déterminer si un visiteur prend en charge les cookies. Défini chaque fois qu’un visiteur demande une page.<P>**disable** : défini si le temps de chargement d’un visiteur dépasse le délai configuré dans le fichier at.js. Par défaut, ce délai d’expiration dure une heure. |
| `at_check` | Cookie temporaire pour vérifier si la fonctionnalité de lecture/écriture des cookies est activée sur le navigateur. |
| `mboxEdgeCluster` | Ce cookie est uniquement présent lorsque/si le paramètre [overrideMboxEdgeServer](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html){target=_blank} est défini sur `true`. |

Il n’est pas possible d’utiliser `HTTPOnly` sur ces cookies propriétaires. La bibliothèque JavaScript `at.js` doit lire/écrire dans ces cookies. Ces cookies sont créés par `at.js` et ne sont pas définis depuis le serveur.

Le paramètre `secure` peut être activé sur tous ces cookies à l’aide de la configuration `secureOnly: true` dans `at.js`.

## Cookies tiers

Les utilisateurs Adobe Target peuvent créer des cookies tiers personnalisés. Les cookies tiers suivants sont stockés sur `tt.omtrdc.net` :

| Cookie | Détails |
| --- | --- |
| `customerclientcode!mboxPC` | Présent si le suivi inter-domaines est activé. |
| `customerclientcode!mboxSession` | Présent si le suivi inter-domaines est activé. |

Ces cookies tiers sont prêts à l’emploi et sont définis par les serveurs de collecte de données d’Adobe Target.

Le paramètre `secure` peut être activé sur tous les cookies à l’aide de la configuration `secureOnly: true` dans `at.js`.

