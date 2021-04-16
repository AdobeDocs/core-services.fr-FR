---
description: Découvrez comment Adobe Target utilise des cookies pour offrir aux opérateurs de sites web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.
keywords: cookies;confidentialité
solution: Experience Cloud,Analytics,Target,Social
title: 'Cookies Adobe Target  '
uuid: 44f7e32e-8d99-4682-8b54-8364d001b403
feature: Cookies
topic: Administration
role: Administrator
level: Experienced
exl-id: c4399cc0-8333-47b8-b830-2ba7359f464a
translation-type: tm+mt
source-git-commit: dcb6fa5d8458995cba66bc2f89c954aa6bcd5923
workflow-type: tm+mt
source-wordcount: '410'
ht-degree: 55%

---

# Cookies Adobe Target {#target-cookies}

Adobe Target utilise des cookies pour offrir aux opérateurs du site web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.

Vous pouvez modifier ces paramètres si nécessaire, à l’exception de la durée du cookie. Consultez votre gestionnaire de compte lorsque vous modifiez les paramètres des cookies.

>[!NOTE]
>
>Les utilisateurs d’Adobe Target peuvent également créer des cookies tiers.

| Paramètre | Informations |
| --- | --- |
| Nom du cookie | mbox. |
| Domaine du cookie | Niveaux secondaire et supérieur des domaines à partir desquels vous diffusez la mbox. Il s’agit d’un cookie propriétaire, puisqu’il est diffusé à partir du domaine de votre société. Exemple : `mycompany.com`. |
| Server domain (Domaine du serveur) | `clientcode.tt.omtrdc.net`[!DNL Adobe Target], à l’aide du code client de votre compte. |
| Durée du cookie | Le cookie reste sur le navigateur du visiteur deux ans après sa dernière connexion. Vous ne pouvez pas modifier la durée du cookie. |



>[!NOTE]
>
>Si l’un des noms de domaine comprend un code de pays, comme `mycompany.co.uk`, adressez-vous au service clientèle afin de configurer le fichier [!DNL at.js] en tenant compte de ce paramètre.

Le cookie conserve un certain nombre de valeurs afin de gérer la manière dont vos visiteurs expérimentent les campagnes Adobe Target :

| Valeur | Définition |
| --- | --- |
| session ID | Identificateur unique d’une session utilisateur donnée. Par défaut, la session expire après 30 minutes d’inactivité. Si vous générez vous-même l’ID de session (par exemple, pour les implémentations côté serveur), veillez à ce qui suit :<ul><li>L’ID de session peut être n’importe quelle chaîne imprimable à l’exception d’un espace, d’un point d’interrogation ( ? ) ou une barre oblique ( / ).</li><li>* L’ID de session doit comporter entre 1 et 128 caractères.</li><li>Pour une session particulière, sa valeur doit rester la même pour plusieurs requêtes.</li><li>Vous ne devriez jamais avoir de sessions parallèles (identifiants de session distincts) pour un visiteur donné à un moment donné.</li></ul>Le routage à un noeud particulier de la grappe Edge est effectué à l’aide de l’ID de session.<ul><li>La session est principale pendant 30 minutes côté serveur. Par conséquent, vous ne devriez pas utiliser un ID de session différent pour un `tntId/thirdPartyId` particulier dans les 30 minutes suivant la dernière demande effectuée avec le `tntId/thirdPartyId`. Sinon, les modifications apportées au profil pourraient être incohérentes et imprévisibles.</li><li>L’utilisation du même ID de session avec plusieurs `tntIds/thirdPartyIds` peut provoquer des modifications imprévisibles des profils identifiés par `tntId/thirdPartyIDs`.</li></ul> |
| pc ID | ID semi-permanent du navigateur d’un visiteur. Dure jusqu’à ce que les cookies soient supprimés manuellement. |
| check | Valeur de test simple utilisée pour déterminer si un visiteur prend en charge les cookies. Défini chaque fois qu’un visiteur demande une page. |
| disable | Défini si le temps de chargement du visiteur dépasse le délai configuré dans le fichier at.js. Dure 1 heure par défaut. |

