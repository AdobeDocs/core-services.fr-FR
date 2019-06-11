---
description: Mettez en œuvre la prérécupération DNS pour réduire le temps de chargement des pages de différents services et solutions.
seo-description: Mettez en œuvre la prérécupération DNS pour réduire le temps de chargement des pages de différents services et solutions.
seo-title: Utilisation de la prérécupération DNS avec des solutions et des services différents
solution: Experience Cloud
title: Utilisation de la prérécupération DNS avec des solutions et des services différents
uuid: 4220 e 223-e 00 e -46 b 1-8 bde -52248913 bea 1
translation-type: tm+mt
source-git-commit: af5339fe58ce884345804574c209907d6504a483

---


# Utilisation de la prérécupération DNS avec des solutions et des services différents

Mettez en œuvre la prérécupération DNS pour réduire le temps de chargement des pages de différents services et solutions.

## Présentation de la prérécupération DNS {#section_772BF9CB7C4141DE9B0355146E2CD962}

Les navigateurs utilisent la prérécupération DNS pour associer automatiquement les noms de domaine d’une page web aux adresses IP correspondantes. Le processus de prérécupération commence lorsque votre navigateur charge une page web. Par exemple, supposons que votre page comporte un lien cliquable vers `www.adobe.com`. Lorsqu’un navigateur charge cette page, il utilise le [système DNS](https://www.networksolutions.com/support/what-is-a-domain-name-server-dns-and-how-does-it-work/) pour rechercher le nom de domaine associé et le convertir en l’adresse IP numérique correspondante. La prérécupération DNS contribue à améliorer les performances des pages, car le nom de domaine est converti en une adresse IP avant même qu’un visiteur du site ne clique sur un lien ou un bouton. Le processus de prérécupération DNS est transparent pour les utilisateurs.

## Prérécupération DNS et solutions Adobe Experience Cloud {#section_202A07F9F79F4ABDA44B98BA1DDCD516}

La prérécupération DNS fonctionne automatiquement avec des liens statiques incorporés sur une page. Cela signifie également que la prérécupération DNS automatique ne fonctionne pas avec différents services et solutions [!UICONTROL Experience Cloud], pour les raisons suivantes :

* Chaque service ou solution Experience Cloud génère dynamiquement des appels DNS lors du chargement de la page.
* Le navigateur ne peut pas convertir les noms de domaine en adresses IP avant que ces appels n’aient été effectués.

Cependant, vous pouvez mettre en œuvre manuellement la prérécupération DNS avec vos solutions Experience Cloud. Pour ce faire, ajoutez la balise HTML `<dns-prefetch>` à la `<head>` section du code de page comme illustré ci-dessous. Lorsqu’elle est correctement mise en œuvre, la prérécupération DNS peut permettre de gagner quelques millisecondes de temps de chargement des pages.

## Exemples de code de prérécupération DNS {#section_E886F7B2861E48BA9EF3D8B3CE32B345}

Les exemples suivants vous montrent comment effectuer des appels de prérécupération DNS vers différents services et solutions [!DNL Experience Cloud]. Certains appels de prérécupération requièrent votre ID d’organisation [!DNL Adobe] ou des informations relatives au serveur de suivi. Dans ces exemples, le code en *italique* représente une variable. Vous pouvez remplacer ce code par votre propre ID de partenaire [!DNL Adobe], votre code client, des informations sur votre serveur de suivi, etc.

* **Analytics:** `<link rel="dns-prefetch" href="//insert tracking server name here">`.

   Ajoutez une balise distincte pour chaque nom DNS si vous utilisez des serveurs de suivi sécurisés et non sécurisés.

* **Audience Manager:** `<link rel="dns-prefetch" href="//dpm.demdex.net">`

* **Service Experience Cloud ID :**`<link rel="dns-prefetch" href="//fast. *`insérer un ID de partenaire ici`*.demdex.net">`

* **Gestionnaire dynamique de balises** (DTM) : Non requis. Les liens de gestion dynamique des balises sont disponibles dès le chargement de la page.

* **Media Optimizer (Ad Cloud) :**

   * `<link rel="dns-prefetch" href="//pixel.everesttech.net">`
   * `<link rel="dns-prefetch" href="//cm.everesttechnet">`


* **Target:** `<link rel="dns-prefetch" href="//insert customer code here.tt.omtrdc.net">`

>[!MORE_ LIKE_ THIS]
>
>* [Prérécupération DNS](https://www.chromium.org/developers/design-documents/dns-prefetching)

