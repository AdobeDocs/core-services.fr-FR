---
description: Supprimez les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles.
keywords: cookies ; confidentialité
seo-description: Supprimez les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles.
seo-title: Activation des paramètres de confidentialité pour les cookies de navigateur
solution: Marketing Cloud, Analytics, Target, Social
title: Activation des paramètres de confidentialité pour les cookies de navigateur
uuid: f 6 a 56 e 8 b-b 021-49 db -8 eb 4-6 c 14 af 0 c 7243
index: y
internal: n
snippet: y
translation-type: tm+mt
source-git-commit: c1630f5de61e410eaf10cf940faa9adc6017fb6b

---


# Activation des paramètres de confidentialité pour les cookies de navigateur{#enable-privacy-settings-for-browser-cookies}

Supprimez les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles.

Ce paramètre permet de respecter l’intention d’un utilisateur d’arrêter le traitement Analytics s’il bloque tous les cookies dans les paramètres relatifs aux cookies sur son navigateur.

1. Navigate to **[!UICONTROL Admin Tools]** &gt; **[!UICONTROL Report Suites]**.
1. Click **[!UICONTROL Edit Settings]** &gt; **[!UICONTROL General]** &gt; **[!UICONTROL Privacy Settings]**.
1. Enable **[!UICONTROL Privacy Settings]** (for desktop or mobile).

   En activant cette fonction, les données collectées auprès des navigateurs de bureau et mobiles dans lesquels l’utilisateur a bloqué tous les cookies seront exclues des rapports Analytics. Si Adobe ne peut pas reconnaître le navigateur, les données seront incluses dans les rapports Analytics.

>[!IMPORTANT]
>
>Gardez à l'esprit que de nombreuses applications mobiles (comme le navigateur d'applications pour Facebook ou Twitter) peuvent s'afficher comme navigateur mobile standard mais pas comme tous les cookies. En activant cette fonction, vous risquez d’exclure une grande part du trafic mobile des rapports Analytics.

**À propos des paramètres de confidentialité des navigateurs**

Les législations et réglementations en vigueur ont stipulé que le fait qu’un utilisateur bloque les cookies revient à se désinscrire du profilage. En activant cette fonction, les données collectées auprès des navigateurs de bureau dans lesquels l’utilisateur a bloqué tous les cookies seront exclues des rapports Analytics. Si Adobe ne peut pas reconnaître le navigateur web, les données seront incluses dans les rapports Analytics.

De nombreux législateurs à travers le monde ont stipulé (par recommandations ou par réglementation) que les paramètres du navigateur relatifs aux cookies indiquent que l’utilisateur préfère se désinscrire du profilage. Les législateurs ont précisé que le paramètre du navigateur bloquant les cookies tiers équivaut à une demande d’exclusion du suivi tiers (ayant lieu entre plusieurs sites). Par ailleurs, ils estiment que le blocage de tous les cookies correspond à une demande d’exclusion de toute forme de suivi. Bien que les identifiants côté serveur (tels que l’adresse IP ou l’agent-utilisateur) semblent être une alternative convenable permettant de contourner les paramètres du navigateur relatifs aux cookies, certains législateurs estiment qu’ils vont à l’encontre du choix de l’utilisateur.

<!--
<p>Awaiting content from Vinay May 20 2015 </p>
<p>https://wiki.corp.adobe.com/display/omtrcache/Inferred+Opt+Out </p>
<p>https://wiki.corp.adobe.com/display/omtrplatform/Auto-opt-out+For+Users+Who+Block+Cookies </p>
-->

