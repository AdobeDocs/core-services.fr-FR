---
description: Découvrez comment les solutions et services d’Adobe Experience Cloud utilisent les cookies.
title: Utilisation des cookies dans Experience Cloud
uuid: 4255a13a-917b-4b5f-a7d4-4b2e7521d189
exl-id: 60f1a89e-d989-461b-a6a3-c1df022cd30b
source-git-commit: d6dc659104b3b24b60495cd97adb21ebb3962fc7
workflow-type: tm+mt
source-wordcount: '598'
ht-degree: 10%

---

# Cookies utilisés dans Experience Cloud

Adobe Experience Cloud utilise des cookies. Un cookie est un petit élément de données qu&#39;un site Web envoie à votre navigateur, qui le stocke pour une utilisation ultérieure. Les cookies aident le site web à se souvenir de choses lorsque vous le visitez à nouveau ou passez d&#39;une page à l&#39;autre. Les cookies permettent de suivre les visites et de distinguer un appareil d’un autre.

Les lois exigent souvent que vous obteniez une autorisation avant de stocker ou d&#39;utiliser des cookies sur l&#39;appareil d&#39;une personne. Adobe recommande de consulter votre équipe juridique pour connaître les règles qui s’appliquent.

## À propos des cookies propriétaires

Adobe Experience Cloud utilise des cookies pour suivre les informations qui ne durent pas entre les pages vues ou les sessions de navigateur. Lorsque cela est possible, Adobe utilise des cookies propriétaires (liés à votre propre site web). Pour effectuer le suivi de l’activité sur plusieurs sites ou domaines que vous possédez, des cookies tiers sont nécessaires.

Certains navigateurs et outils anti-logiciels espions bloquent les cookies tiers. Adobe dispose de moyens pour s’assurer que les cookies fonctionnent toujours, même si les cookies sont bloqués. Son fonctionnement dépend de l’utilisation du service d’identités Experience Platform (ECID) ou d’anciens cookies Analytics (comme le cookie `s_vi`) :

* [Experience Cloud Identity Service ](https://experienceleague.adobe.com/fr/docs/id-service/using/intro/overview) : le service ECID définit toujours les cookies propriétaires, que le domaine de collecte corresponde ou non au domaine de votre site. Il utilise JavaScript pour placer le cookie sur le domaine de votre site.

* [Identifiants Analytics hérités](analytics.md) (par exemple, le cookie `s_vi`) : selon votre configuration, les cookies peuvent être propriétaires ou tiers :

   * Si votre serveur de collecte de données correspond au domaine de votre site, les cookies sont propriétaires.
   * S’il ne correspond pas, les cookies sont tiers. Si les cookies tiers sont bloqués, Adobe définit un cookie de secours (`s_fid`) au lieu du cookie habituel.

Pour vous assurer que votre serveur de collection correspond au domaine de votre site, vous pouvez utiliser une **configuration CNAME**. Cela implique la mise à jour de vos paramètres DNS pour pointer un domaine personnalisé (que vous possédez) vers des serveurs Adobe. Le cookie de suivi apparaît alors comme propriétaire. Bien qu’un CNAME puisse fonctionner sur plusieurs domaines, tout domaine qui ne correspond pas au CNAME définit toujours des cookies tiers.

>[!NOTE]
>
>La prévention intelligente du suivi (ITP) d’Apple limite la durée de vie des cookies propriétaires d’Adobe, même si votre domaine de collection correspond à votre domaine de site. L’ITP affecte Safari sur macOS et tous les navigateurs sur iOS et iPadOS. Depuis novembre 2020, les cookies définis à l’aide de CNAME expirent aussi rapidement que les cookies définis avec JavaScript. Ce délai peut être modifié à l’avenir.

Voici une version simplifiée du texte :

## Cookies et confidentialité

Adobe prend au sérieux la confidentialité et la sécurité des données. Il collabore avec des organisations de protection de la vie privée, des organismes de réglementation et des programmes comme AdChoices pour donner aux gens le contrôle sur l&#39;utilisation de leurs données.

La plupart des cookies de Adobe Experience Cloud ne stockent pas d’informations personnelles. Ils sont sécurisés et ne sont utilisés que par votre entreprise pour le reporting, le contenu et la publicité. Adobe ne partage pas ces données avec d’autres clients ou tiers, à l’exception des rapports anonymes à l’échelle du secteur (tels que les rapports d’Insight de marketing numérique).

Adobe ne regroupe pas les données de navigateur de différentes sociétés. Pour protéger la confidentialité, certains outils Adobe permettent à chaque site web d’utiliser son propre jeu de cookies. Certains permettent également d’utiliser votre propre domaine pour les cookies, ce qui les rend propriétaires et plus sécurisés.

Les cookies ne peuvent stocker que les informations qui y ont été enregistrées précédemment. Il ne peut pas exécuter de code ni lire d’autres données sur votre appareil. En outre, les navigateurs web autorisent uniquement la lecture des cookies par le site web qui les a définis. Par exemple, seul Adobe.com peut lire les cookies qu’il définit.

Le schéma suivant illustre l’utilisation des cookies pour une demande d’image standard :

![Utilisation des cookies pour une requête image standard](assets/CookiesProcessGraphic-01.png)

Le schéma suivant illustre lʼutilisation des cookies pour une demande dʼimage directe (utilisée dans les scénarios où un fichier JS nʼest pas chargé) :

![Utilisation des cookies pour une demande dʼimage directe](assets/CookiesProcessGraphic2.png)
