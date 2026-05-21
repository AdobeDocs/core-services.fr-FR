---
description: Découvrez comment mettre en œuvre la prérécupération DNS pour réduire le temps de chargement des pages de différents services et applications dans l’entreprise CX.
solution: Experience Cloud
title: Utiliser la prérécupération DNS
uuid: 4220e223-e00e-46b1-8bde-52248913bea1
topic: Administration
role: Admin
level: Experienced
exl-id: caf2ff76-2076-436d-a5a7-aff531464480
TQID: https://experienceleague.adobe.com/oAe81mw-qFetDM0zky2eS6DNf-XZ67H68Qw-Sa8mk0Y
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2:
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2:
  - id: b75843fa-0a67-4a44-a6b1-cc627b0481dc
  - id: fef08361-6ac5-460c-93fe-d063e40b6a49
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2:
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: 50012e2564e88e1a6e16578e3331136c7df0cb21
workflow-type: tm+mt
source-wordcount: 350
ht-degree: 77%

---

# Utiliser la prérécupération DNS

Implémentez la prérécupération DNS pour réduire le temps de chargement des pages de différents services et applications.

## Présentation de la prérécupération DNS

Les navigateurs utilisent la prérécupération DNS pour associer automatiquement les noms de domaine d’une page web aux adresses IP correspondantes. Le processus de prérécupération commence lorsque votre navigateur charge une page web. Par exemple, supposons que votre page comporte un lien sélectionnable vers `www.adobe.com`. Lorsqu’un navigateur charge cette page, il utilise le _système DNS_ pour rechercher le nom de domaine associé et le convertir en adresse IP numérique correspondante. La prérécupération DNS contribue à améliorer les performances des pages, car le nom de domaine est converti en une adresse IP avant même qu’un visiteur du site ne clique sur un lien ou un bouton. Le processus de prérécupération DNS est transparent pour les utilisateurs.

## Prérécupération DNS et applications Adobe CX Enterprise

La prérécupération DNS fonctionne automatiquement avec des liens statiques incorporés sur une page. Cela signifie également que la prérécupération DNS automatique ne fonctionne pas avec les différents services et applications [!UICONTROL CX Enterprise], car :

* Chaque application ou service CX Enterprise génère dynamiquement des appels DNS au chargement de la page.
* Le navigateur ne peut pas convertir les noms de domaine en adresse IP avant ces appels.

Cependant, vous pouvez mettre en œuvre manuellement la prérécupération DNS avec vos applications CX Enterprise. Pour ce faire, ajoutez la balise HTML `<dns-prefetch>` à la section `<head>` du code de votre page, comme indiqué ci-dessous. Lorsqu’elle est correctement mise en œuvre, la prérécupération DNS peut permettre de gagner quelques millisecondes de temps de chargement des pages.

## Exemples de code de prérécupération DNS

Les exemples suivants vous montrent comment effectuer des appels de prérécupération DNS vers différents services et applications [!DNL CX Enterprise]. Certains appels de prérécupération requièrent votre ID d’organisation [!DNL Adobe] ou des informations relatives au serveur de suivi. Dans ces exemples, le code en *italique* représente une variable. Vous pouvez remplacer ce code par votre propre ID de partenaire [!DNL Adobe], votre code client, des informations sur votre serveur de suivi, etc.

* **Analytics :** `<link rel="dns-prefetch" href="//data.example.com">`.

  Ajoutez une balise distincte pour chaque nom DNS si vous utilisez des serveurs de suivi sécurisés et non sécurisés.

* **Audience Manager :** `<link rel="dns-prefetch" href="//dpm.demdex.net">`

* Service **CX Enterprise ID :** `<link rel="dns-prefetch" href="//fast.examplepartnerid.demdex.net">`

* **Advertising Cloud :**

   * `<link rel="dns-prefetch" href="//pixel.everesttech.net">`
   * `<link rel="dns-prefetch" href="//cm.everesttech.net">`

* **[!DNL Target]:** `<link rel="dns-prefetch" href="//example.tt.omtrdc.net">`

>[!MORELIKETHIS]
>
>* [Prérécupération DNS](https://www.chromium.org/developers/design-documents/dns-prefetching) sur Chromium

