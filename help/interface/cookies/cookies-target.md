---
description: Découvrez comment Adobe Target utilise des cookies pour offrir aux opérateurs de sites web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.
keywords: cookies;confidentialité
solution: Experience Cloud,Analytics,Target,Social
title: 'Cookies Adobe Target '
uuid: 44f7e32e-8d99-4682-8b54-8364d001b403
feature: Cookies
topic: Administration
role: Administrator
level: Experienced
exl-id: c4399cc0-8333-47b8-b830-2ba7359f464a
source-git-commit: a244ee8927e0417fbb502e8eaa3c371151ec3044
workflow-type: ht
source-wordcount: '431'
ht-degree: 100%

---

# Cookies Adobe Target{#target-cookies}

Adobe Target utilise des cookies pour offrir aux opérateurs du site web la possibilité de tester le contenu et les offres en ligne les plus pertinents pour les visiteurs.

Si besoin est, vous pouvez modifier ces paramètres, à l’exception de celui relatif à la durée des cookies. Consultez votre gestionnaire de compte lorsque vous modifiez les paramètres des cookies.

>[!NOTE]
>
>Les utilisateurs d’Adobe Target peuvent également créer des cookies tiers.

| Paramètre | Informations |
| --- | --- |
| Nom du cookie | mbox. |
| Domaine du cookie | Niveaux secondaire et supérieur des domaines à partir desquels vous diffusez la mbox. Il s’agit d’un cookie propriétaire, puisqu’il est diffusé à partir du domaine de votre société. Exemple : `mycompany.com`. |
| Server domain (Domaine du serveur) | `clientcode.tt.omtrdc.net`, à l’aide du code client de votre [!DNL Adobe Target] compte. |
| Durée du cookie | Le cookie reste sur le navigateur du visiteur deux ans après sa dernière connexion. Vous ne pouvez pas modifier la durée du cookie. |



>[!NOTE]
>
>Si l’un des noms de domaine comprend un code de pays, comme `mycompany.co.uk`, adressez-vous au service clientèle afin de configurer le fichier [!DNL at.js] en tenant compte de ce paramètre.

Le cookie conserve un certain nombre de valeurs afin de gérer la manière dont vos visiteurs expérimentent les campagnes Adobe Target :

| Valeur | Définition |
| --- | --- |
| session ID | Identifiant unique d’une session utilisateur donnée. Par défaut, la session expire au bout de 30 minutes d’inactivité. Si vous générez vous-même l’ID de la session (par exemple, pour les implémentations côté serveur), assurez-vous que les conditions suivantes sont réunies :<ul><li>L’ID de session peut être n’importe quelle chaîne imprimable à l’exception d’un espace, d’un point d’interrogation (? ) ou d’une barre oblique (/).</li><li>* L’ID de session doit comporter entre 1 et 128 caractères.</li><li>La valeur d’une session particulière doit rester la même sur plusieurs requêtes.</li><li>Vous ne devriez jamais avoir de sessions parallèles (ID de session distincts) pour un visiteur donné à un moment donné.</li></ul>Le routage à un nœud particulier du cluster Edge est effectué à l’aide de l’ID de session.<ul><li>La session est active pendant 30 minutes côté serveur. Par conséquent, vous ne devriez pas utiliser un ID de session différent pour un `tntId/thirdPartyId` particulier dans les 30 minutes suivant la dernière requête effectuée avec `tntId/thirdPartyId`. Dans le cas contraire, les modifications apportées au profil pourraient s’avérer incohérentes et imprévisibles.</li><li>L’utilisation du même ID de session avec plusieurs `tntIds/thirdPartyIds` peut provoquer des modifications imprévisibles des profils identifiés par les `tntId/thirdPartyIDs`.</li></ul>**Remarque** : voir [Limitation du nombre de requêtes simultanées](https://experienceleague.adobe.com/docs/target/using/troubleshoot/target-limits.html?lang=fr#content-delivery) pour un ID de session donné. |
| pc ID | ID semi-permanent du navigateur d’un visiteur. Dure jusqu’à ce que les cookies soient supprimés manuellement. |
| check | Valeur de test simple utilisée pour déterminer si un visiteur prend en charge les cookies. Défini chaque fois qu’un visiteur demande une page. |
| disable | Définie si le temps de chargement d’un visiteur dépasse le délai configuré dans le fichier at.js. Dure 1 heure par défaut. |

