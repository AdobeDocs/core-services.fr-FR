---
description: Découvrez comment les solutions et services d’Adobe Experience Cloud utilisent les cookies.
title: Utilisation des cookies dans Experience Cloud
uuid: 4255a13a-917b-4b5f-a7d4-4b2e7521d189
exl-id: 60f1a89e-d989-461b-a6a3-c1df022cd30b
source-git-commit: 2a80851c0a7d4ef7dbcc2565177b239f3e063164
workflow-type: tm+mt
source-wordcount: '890'
ht-degree: 58%

---

# Cookies utilisés dans Experience Cloud

De nombreux services d’Adobe Experience Cloud utilisent des cookies. Un cookie est un petit ensemble de données présenté par un site web à un navigateur web. Le navigateur stocke cette donnée, ce qui permet à un site web de référencer ses données si nécessaire. Cette action est exécutée avec chaque requête de pages et d’images suivante.

Des cookies sont fournis pour conserver des informations pendant et parfois entre les visites d’un site web. Les cookies permettent de différencier les appareils des autres navigateurs qui affichent le site.

En vertu des lois, réglementations et principes d’autoréglementation en vigueur, il se peut que vous deviez obtenir le consentement des visiteurs avant de pouvoir stocker ou récupérer des informations sur un ordinateur ou tout autre appareil connecté au Web. Adobe vous conseille d’examiner avec le service juridique de votre entreprise les lois, réglementations et principes qui régissent l’utilisation des cookies.

## À propos des cookies propriétaires

Les services Adobe Experience Cloud utilisent des cookies pour fournir des informations sur les variables et les composants qui ne persistent pas entre les demandes d’image et les sessions de navigateur. Si possible, Adobe utilise des cookies propriétaires pour enregistrer les activités sur votre site. Pour enregistrer l’activité sur différents sites, tels que d’autres domaines que vous pouvez posséder, des cookies tiers sont requis.

De nombreux navigateurs et applications logicielles anti-espions sont conçus pour rejeter et supprimer les cookies tiers. Adobe garantit que les cookies peuvent toujours être définis même si les cookies tiers sont bloqués. Le comportement spécifique varie selon que vous utilisez le service d’identité Experience Platform (service ECID) ou les identifiants hérités d’Analytics (tels que le cookie `s_vi`) :

* Le [ service d’identité Experience Platform (service ECID)](https://experienceleague.adobe.com/docs/id-service/using/intro/overview.html?lang=fr) définit automatiquement les cookies propriétaires, que le domaine de collecte corresponde ou non à votre domaine de site. S’ils ne correspondent pas, Identity Service utilise JavaScript pour définir des cookies sur le domaine de votre site.
* Si vous utilisez les [identifiants hérités Analytics](analytics.md) (tels que le cookie `s_vi`), cela dépend de la manière dont vous avez configuré votre serveur de collecte de données. Si le serveur de collecte de données correspond au domaine de votre site, les cookies sont définis comme propriétaires. Si le serveur de collecte ne correspond pas à votre domaine actuel, les cookies sont définis comme tiers. Dans ce cas, si les cookies tiers sont bloqués, Analytics définit un identifiant de secours propriétaire (`s_fid`) au lieu du cookie `s_vi` standard.

Si vous souhaitez vous assurer que votre serveur de collecte correspond au domaine de votre site, vous pouvez utiliser une implémentation CNAME qui permet le transfert depuis un domaine personnalisé spécifié dans votre implémentation CNAME vers les serveurs de collecte d’Adobe. Cette tâche implique des modifications des paramètres DNS de votre entreprise pour configurer un alias CNAME pointant vers un domaine hébergé par l’Adobe. Il faut souligner que même si divers produits Adobe prennent en charge l’utilisation d’un CNAME, le CNAME est systématiquement employé pour créer un point d’entrée propriétaire approuvé pour un client spécifique, et il appartient à ce client. Si vous contrôlez plusieurs domaines, ils peuvent utiliser un seul point de terminaison CNAME pour effectuer le suivi des utilisateurs sur leurs domaines, mais lorsque le domaine du site ne correspond pas au domaine CNAME, les cookies de domaine sont définis comme tiers.

>[!NOTE]
>
>Que votre domaine de collecte corresponde ou non à votre domaine de site, le programme ITP (Intelligent Tracking Prevention) d’Apple effectue des cookies propriétaires définis par Adobe de courte durée sur les navigateurs régis par ITP, notamment Safari sur macOS et tous les navigateurs sur iOS et iPadOS. Depuis novembre 2020, les cookies définis via CNAME possèdent la même date dʼexpiration que les cookies définis via JavaScript. Cette échéance est sujette à modification.

## Cookies et confidentialité

Le respect de la vie privée des clients et la sécurité des données sont les priorités d’Adobe. Adobe s’associe à de multiples organisations œuvrant à la protection de la vie privée. En outre, l’entreprise travaille en coopération avec des organismes réglementant la protection de la vie privée et respecte les principes d’autoréglementation. Cette coopération comprend le programme AdChoices de Digital Advertising Alliance, qui fournit aux clients des informations sur l’utilisation de leurs informations personnelles et les choix qu’ils peuvent faire concernant cette utilisation.

La plupart des cookies définis par les produits Experience Cloud ne contiennent aucune information d’identification personnelle. Ces cookies et les données associées sont sécurisés et utilisés uniquement pour les rapports de votre société, ainsi que pour fournir des publicités et du contenu pertinents. Les données ne sont accessibles ni par des tiers, ni par les autres clients Adobe, sauf si elles sont utilisées dans des rapports d’industrie agrégés. Par exemple, le [!DNL Digital Marketing Insight Report] analyse les données agrégées et anonymes entre les détaillants.

Adobe ne fusionne pas d’informations au niveau du navigateur entre différentes entreprises. Afin de garantir la sécurité et la confidentialité des données des clients, certains services Experience Cloud offrent aux sociétés la possibilité d’utiliser un jeu distinct de cookies pour chaque site suivi. Certaines offres offrent également aux clients la possibilité d’utiliser leur propre nom de domaine comme propriétaire du cookie. Cette pratique crée une couche supplémentaire de confidentialité et de sécurité, dans la mesure où elle fait des cookies Experience Cloud des *cookies propriétaires*, appartenant de manière permanente au site de la société.

Les cookies peuvent stocker et fournir uniquement les informations qui y ont été déposées. Ils ne peuvent pas exécuter de code ni accéder à d’autres informations stockées sur l’ordinateur. En outre, les navigateurs web limitent l’accès aux données des cookies. Les navigateurs appliquent une politique de sécurité des cookies qui rend toutes les données des cookies disponibles uniquement pour le site web qui a défini les informations à l’origine.

Par exemple, les données contenues dans les cookies définis à partir du site web Adobe.com ne peuvent pas être consultées par un autre site web qu’Adobe.com.

Le schéma suivant illustre l’utilisation des cookies pour une demande d’image standard :

![Utilisation des cookies pour une requête image standard](assets/CookiesProcessGraphic-01.png)

Le schéma suivant illustre lʼutilisation des cookies pour une demande dʼimage directe (utilisée dans les scénarios où un fichier JS nʼest pas chargé) :

![Utilisation des cookies pour une demande dʼimage directe](assets/CookiesProcessGraphic2.png)
