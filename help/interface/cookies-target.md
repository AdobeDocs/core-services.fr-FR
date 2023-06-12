---
description: Découvrez comment Adobe Target utilise des cookies pour offrir aux opérateurs de sites web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.
solution: Experience Cloud,Analytics,Target
title: Cookies Adobe Target
uuid: 44f7e32e-8d99-4682-8b54-8364d001b403
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: c4399cc0-8333-47b8-b830-2ba7359f464a
source-git-commit: a1d24f95b1ac567686d58af8adf0132e5beb8f2a
workflow-type: tm+mt
source-wordcount: '688'
ht-degree: 24%

---

# Cookies Adobe Target

[!DNL Adobe Target] utilise des cookies pour offrir aux opérateurs du site web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.

>[!NOTE]
>
>Les informations contenues dans cet article s’appliquent au [[!DNL Target] Bibliothèque JavaScript at.js](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html){target=_blank} uniquement.
>
>Pour plus d’informations sur les cookies utilisés dans une [!DNL Target] mise en oeuvre à l’aide de [[!DNL Adobe Experience Platform Web SDK]](https://experienceleague.adobe.com/docs/experience-platform/edge/home.html?lang=fr){target=_blank}, see "Does the [!DNL Adobe Experience Platform Web SDK] use cookies? If so, what cookies does it use?" in [Frequently Asked questions in the DNL Platform Web SDK overview guide](https://experienceleague.adobe.com/docs/experience-platform/edge/web-sdk-faq.html){target=_blank}.
>
>Si nécessaire, vous pouvez modifier les paramètres décrits dans cet article, à l’exception de la durée du cookie. [Consultez votre gestionnaire de compte lorsque vous modifiez les paramètres des cookies.](https://experienceleague.adobe.com/docs/target/using/cmp-resources-and-contact-information.html?lang=fr){target=_blank}
>
>[!DNL Target]Les utilisateurs de peuvent également créer des cookies tiers.

## Cookies propriétaires

Les cookies propriétaires suivants sont stockés sur le domaine du client :

| Cookie | Détails |
| --- | --- |
| mbox | Stocke des identifiants anonymes à propos du visiteur.<P>**Domaine du cookie**: Domaine à partir duquel vous diffusez la mbox. Comme ce cookie est diffusé à partir du domaine de votre entreprise, il s’agit d’un cookie propriétaire. Exemple : `mycompany.com`. Si l’un de vos noms de domaine comporte un code de pays, tel que `mycompany.co.uk`, adressez-vous à vos services client pour configurer at.js afin de prendre en charge ce code. Pour plus d’informations sur la personnalisation du domaine de cookie, voir &quot;`cookieDomain`&quot; sous [targetGlobalSettings](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html){target=_blank} dans le *[!DNL Adobe Target]Guide du développeur*.<P>**Domaine du serveur**: `clientcode.tt.omtrdc.net`, à l’aide du code client de votre [!DNL Target] compte .<P>**Durée du cookie**: Le cookie reste sur le navigateur du visiteur deux ans après la dernière connexion. Vous ne pouvez pas modifier la durée du cookie.<P>Le cookie conserve certaines valeurs afin de gérer l’expérience de vos visiteurs. [!DNL Target] activités :<P>**session ID**: Identifiant unique d’une session d’utilisateur donnée. Par défaut, la session expire au bout de 30 minutes d’inactivité. Si vous générez `sessionId` vous-même (par exemple, [implémentations côté serveur](https://experienceleague.adobe.com/docs/target-dev/developer/server-side/server-side-overview.html){target=_blank}), vérifiez les points suivants :<ul><li>L’ID de session peut être n’importe quelle chaîne imprimable à l’exception d’un espace, d’un point d’interrogation ( ? ) ou d’une barre oblique (/).</li><li>L’ID de session doit comporter entre 1 et 128 caractères.</li><li>Pour une session particulière, la valeur du cookie doit rester la même pour plusieurs requêtes.</li><li>Vous ne devriez jamais avoir de sessions parallèles (distinctes `sessionIds`) pour un visiteur donné à tout moment.</li></ul>Le routage vers un noeud particulier de la grappe Edge est effectué à l’aide de l’ID de session.<ul><li>La session est active pendant 30 minutes côté serveur. Par conséquent, vous ne devez pas utiliser un autre ID de session pour un `tntId/thirdPartyId` dans les 30 minutes suivant la dernière requête effectuée avec la variable `tntId/thirdPartyId`. Dans le cas contraire, les modifications apportées au profil pourraient s’avérer incohérentes et imprévisibles.</li><li>Un nouvel ID de session doit être utilisé après trente minutes d’inactivité de la part d’un visiteur.</li><li>Utilisation du même ID de session avec plusieurs `tntIds/thirdPartyIds` peut provoquer des modifications imprévisibles des profils identifiés par la variable `tntId/thirdPartyIDs`.</li></ul>REMARQUE : Voir [limiter le nombre de requêtes simultanées ;](https://experienceleague.adobe.com/docs/target/using/troubleshoot/target-limits.html?lang=fr#content-delivery){target=_blank} pour un ID de session donné.<P>**pc ID**: Identifiant semi-permanent du navigateur d’un visiteur. Dure jusqu’à ce que les cookies soient supprimés manuellement.<P>**check**: Valeur de test simple utilisée pour déterminer si un visiteur prend en charge les cookies. Défini chaque fois qu’un visiteur demande une page.<P>**disable**: Défini si le temps de chargement d’un visiteur dépasse le délai configuré dans le fichier at.js. Par défaut, ce délai d’expiration dure une heure. |
| at_check | Cookie temporaire permettant de vérifier si la fonctionnalité de lecture/écriture des cookies est activée sur le navigateur. |
| mboxEdgeCluster | Ces cookies ne sont présents que lorsque/si [paramètre overrideMboxEdgeServer](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html){target=_blank} est défini sur `true`. |

Il n’est pas possible d’utiliser HTTPO uniquement sur ces cookies propriétaires. La bibliothèque JavaScript at.js doit lire/écrire sur ces cookies. Ces cookies sont créés par at.js et ne sont pas définis à partir du serveur.

Le `secure` peut être activé sur tous ces cookies à l’aide de la variable `secureOnly: true` dans l’implémentation d’ at.js .

## Cookies tiers

Les cookies tiers suivants sont stockés sur `tt.omtrdc.net`:

| Cookie | Détails |
| --- | --- |
| customerclientcode!mboxPC | Ce cookie est présent si inter-domaines est activé. |
| customerclientcode!mboxSession | Ce cookie est présent si inter-domaines est activé. |

Ces cookies tiers sont prêts à l’emploi uniquement pour HTTPO et sont définis par la variable [!DNL Target] serveurs Edge.

Le `secure` peut être activé sur tous les cookies à l’aide de la variable `secureOnly: true` dans l’implémentation d’ at.js .