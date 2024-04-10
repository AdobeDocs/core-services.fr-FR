---
description: Découvrez comment Adobe Target utilise des cookies pour offrir aux opérateurs de sites web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.
solution: Experience Cloud,Analytics,Target
title: Cookies Adobe Target
uuid: 44f7e32e-8d99-4682-8b54-8364d001b403
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: c4399cc0-8333-47b8-b830-2ba7359f464a
source-git-commit: f229ec33ff721527e6a4c920ea63eabb4102935a
workflow-type: tm+mt
source-wordcount: '636'
ht-degree: 15%

---

# Cookies Adobe Target

[!DNL Adobe Target] utilise des cookies pour permettre aux opérateurs du site de tester les contenus et offres en ligne les plus pertinents pour les visiteurs.

>[!NOTE]
>
>Les informations contenues dans cet article s’appliquent [[!DNL Target] Bibliothèque JavaScript at.js](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html?lang=fr){target=_blank} uniquement.
>
>Pour plus d’informations sur les cookies utilisés dans un [!DNL Target] implémentation à l’aide de [[!DNL Adobe Experience Platform Web SDK]](https://experienceleague.adobe.com/docs/experience-platform/edge/home.html?lang=fr){target=_blank}, see "Does the [!DNL Adobe Experience Platform Web SDK] use cookies? If so, what cookies does it use?" in [Frequently Asked questions in the DNL Platform Web SDK overview guide](https://experienceleague.adobe.com/docs/experience-platform/edge/web-sdk-faq.html){target=_blank}.
>
>Si nécessaire, vous pouvez modifier les paramètres abordés dans cet article, à l’exception de la durée du cookie. [Consulter votre agent de compte](https://experienceleague.adobe.com/docs/target/using/cmp-resources-and-contact-information.html?lang=fr){target=_blank} lors de la modification des paramètres des cookies.
>
>[!DNL Target] les utilisateurs peuvent également créer des cookies tiers personnalisés.

## Cookies propriétaires

Les cookies propriétaires suivants sont stockés dans le domaine du client :

| Cookie | Détails |
| --- | --- |
| mbox | Stocke des identifiants anonymes sur le visiteur.<P>**Domaine du cookie**: domaine à partir duquel vous diffusez la mbox. Comme ce cookie est diffusé à partir du domaine de votre entreprise, il s’agit d’un cookie propriétaire. Exemple : `mycompany.com`. Si l’un des noms de domaine comprend un code de pays, tel que `mycompany.co.uk`, collaborez avec les services clients pour configurer at.js afin de prendre en charge ce code. Pour plus d’informations sur la personnalisation du domaine du cookie, si nécessaire, voir «`cookieDomain` » sous [targetGlobalSettings](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html?lang=fr){target=_blank} dans le *[!DNL Adobe Target]Guide du développeur*.<P>**Domaine du serveur**: `clientcode.tt.omtrdc.net`, à l’aide du code client de votre [!DNL Target] compte.<P>**Durée du cookie**: le cookie reste sur le navigateur du visiteur deux ans après la dernière connexion. Vous ne pouvez pas modifier la durée du cookie.<P>Le cookie conserve certaines valeurs pour gérer l’expérience de vos visiteurs [!DNL Target] activités :<P>**session ID**: identifiant unique d’une session utilisateur donnée. Par défaut, la session expire au bout de 30 minutes d’inactivité. Si vous effectuez une génération `sessionId` vous-même (par exemple, pour [implémentations côté serveur](https://experienceleague.adobe.com/docs/target-dev/developer/server-side/server-side-overview.html?lang=fr){target=_blank}), vérifiez les points suivants :<ul><li>L’ID de session peut être n’importe quelle chaîne imprimable, à l’exception d’un espace ou d’un point d’interrogation ( ? ) ou d’une barre oblique (/).</li><li>L’ID de session doit comporter entre 1 et 128 caractères.</li><li>Pour une session particulière, la valeur du cookie doit rester la même sur plusieurs requêtes.</li><li>Vous ne devriez jamais avoir de sessions parallèles (distinctes `sessionIds`) pour un visiteur donné à tout moment.</li></ul>Le routage vers un nœud particulier du cluster Edge est effectué à l’aide de l’ID de session.<ul><li>La session est active pendant 30 minutes côté serveur. Par conséquent, vous ne devez pas utiliser un ID de session différent pour un `tntId/thirdPartyId` dans les 30 minutes suivant la dernière demande faite auprès du `tntId/thirdPartyId`. Dans le cas contraire, les modifications apportées au profil pourraient s’avérer incohérentes et imprévisibles.</li><li>Un nouvel ID de session doit être utilisé après trente minutes d’inactivité d’un visiteur.</li><li>Utilisation du même ID de session avec plusieurs `tntIds/thirdPartyIds` peut entraîner des modifications imprévisibles des profils identifiés par le `tntId/thirdPartyIDs`.</li></ul>REMARQUE : voir [limite du nombre de requêtes simultanées](https://experienceleague.adobe.com/docs/target/using/troubleshoot/target-limits.html?lang=fr#content-delivery){target=_blank} pour un ID de session donné.<P>**pc ID**: identifiant semi-permanent pour le navigateur d’un visiteur. Dure jusqu’à ce que les cookies soient supprimés manuellement.<P>**vérifier**: valeur de test simple utilisée pour déterminer si un visiteur prend en charge les cookies. Défini chaque fois qu’un visiteur demande une page.<P>**désactiver**: défini si le temps de chargement d’un visiteur dépasse le délai configuré dans le fichier at.js. Par défaut, ce délai d’expiration dure une heure. |
| at_check | Cookie temporaire pour vérifier si la fonctionnalité de lecture/écriture des cookies est activée sur le navigateur. |
| mboxEdgeCluster | Ce cookie n’est présent que lorsque/si [overrideMboxEdgeServer, paramètre](https://experienceleague.adobe.com/docs/target-dev/developer/client-side/at-js-implementation/functions-overview/targetglobalsettings.html?lang=fr){target=_blank} est défini sur `true`. |

Il n’est pas possible d’utiliser HTTPO uniquement sur ces cookies propriétaires. La bibliothèque JavaScript at.js doit lire/écrire dans ces cookies. Ces cookies sont créés par at.js et ne sont pas définis depuis le serveur.

Le `secure` Le paramètre peut être activé sur tous ces cookies à l’aide du `secureOnly: true` dans l’implémentation d’at.js.

## Cookies tiers

Les cookies tiers suivants sont stockés sur . `tt.omtrdc.net`:

| Cookie | Détails |
| --- | --- |
| customerclientcode!mboxPC | Ce cookie est présent si le suivi inter-domaines est activé. |
| customerclientcode!mboxSession | Ce cookie est présent si le suivi inter-domaines est activé. |

Ces cookies tiers sont prêts à l’emploi uniquement et définis par le [!DNL Target] serveurs Edge.

Le `secure` Le paramètre peut être activé sur tous les cookies à l’aide du `secureOnly: true` dans l’implémentation d’at.js.