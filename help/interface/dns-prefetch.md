---
description: Découvrez comment mettre en œuvre la prérécupération DNS pour réduire le temps de chargement des pages de différents services et solutions dans Experience Cloud.
solution: Experience Cloud
title: 'Utilisation de la prérécupération DNS avec différents services et solutions '
uuid: 4220e223-e00e-46b1-8bde-52248913bea1
feature: Attributs du client
topic: Administration
role: Admin
level: Experienced
exl-id: caf2ff76-2076-436d-a5a7-aff531464480
source-git-commit: 1fb1abc7311573f976f7e6b6ae67f60ada10a3e7
workflow-type: tm+mt
source-wordcount: '384'
ht-degree: 88%

---

# Utilisation de la prérécupération DNS avec différents services et solutions

Mettez en œuvre la prérécupération DNS pour réduire le temps de chargement des pages de différents services et solutions.

## Présentation de la prérécupération DNS {#section_772BF9CB7C4141DE9B0355146E2CD962}

Les navigateurs utilisent la prérécupération DNS pour associer automatiquement les noms de domaine d’une page web aux adresses IP correspondantes. Le processus de prérécupération commence lorsque votre navigateur charge une page web. Par exemple, supposons que votre page contient un lien sélectionnable vers `www.adobe.com`. Lorsqu’un navigateur charge cette page, il utilise le [système DNS](https://www.networksolutions.com/support/what-is-a-domain-name-server-dns-and-how-does-it-work/) pour rechercher le nom de domaine associé et le convertir en adresse IP numérique correspondante. La prérécupération DNS contribue à améliorer les performances des pages, car le nom de domaine est converti en une adresse IP avant même qu’un visiteur du site ne clique sur un lien ou un bouton. Le processus de prérécupération DNS est transparent pour les utilisateurs.

## Prérécupération DNS et solutions Adobe Experience Cloud {#section_202A07F9F79F4ABDA44B98BA1DDCD516}

La prérécupération DNS fonctionne automatiquement avec des liens statiques incorporés sur une page. Cela signifie également que la prérécupération DNS automatique ne fonctionne pas avec les différentes solutions et services [!UICONTROL Experience Cloud], car :

* Chaque solution ou service Experience Cloud génère de manière dynamique des appels DNS au fur et à mesure du chargement de la page.
* Le navigateur ne peut pas convertir les noms de domaine en adresse IP avant ces appels.

Cependant, vous pouvez mettre en œuvre manuellement la prérécupération DNS avec vos solutions Experience Cloud. Pour ce faire, ajoutez la balise HTML `<dns-prefetch>` à la section `<head>` du code de votre page, comme indiqué ci-dessous. Lorsqu’elle est correctement mise en œuvre, la prérécupération DNS peut permettre de gagner quelques millisecondes de temps de chargement des pages.

## Exemples de code de prérécupération DNS {#section_E886F7B2861E48BA9EF3D8B3CE32B345}

Les exemples suivants vous montrent comment effectuer des appels de prérécupération DNS vers différents services et solutions [!DNL Experience Cloud]. Certains appels de prérécupération requièrent votre ID d’organisation [!DNL Adobe] ou des informations relatives au serveur de suivi. Dans ces exemples, le code en *italique* représente une variable. Vous pouvez remplacer ce code par votre propre [!DNL Adobe] identifiant de partenaire, code client, informations sur le serveur de suivi, etc.

* **Analytics :** `<link rel="dns-prefetch" href="//insert tracking server name here">`.

   Ajoutez une balise distincte pour chaque nom DNS si vous utilisez des serveurs de suivi sécurisés et non sécurisés.

* **Audience Manager :** `<link rel="dns-prefetch" href="//dpm.demdex.net">`

* **Service Experience Cloud ID :** `<link rel="dns-prefetch" href="//fast. *`insérer un ID de partenaire ici`*.demdex.net">`

* **Gestionnaire dynamique de balises** (DTM) : non requis. Les liens de la gestion dynamique des balises sont disponibles au chargement de la page.

* **Media Optimizer (Advertising Cloud) :**

   * `<link rel="dns-prefetch" href="//pixel.everesttech.net">`
   * `<link rel="dns-prefetch" href="//cm.everesttechnet">`


* **[!DNL Target] :** `<link rel="dns-prefetch" href="//insert customer code here.tt.omtrdc.net">`

>[!MORELIKETHIS]
>
>* [Prérécupération DNS](https://www.chromium.org/developers/design-documents/dns-prefetching)

