---
description: Obtenez des réponses aux questions fréquentes sur  [!DNL Customer Attributes]  dans Adobe CX Enterprise, pour Adobe Analytics et Adobe Target.
solution: Experience Cloud
title: Questions fréquentes sur les  [!DNL Customer Attributes]
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 6031e544-822b-4843-b3d8-98a36a3c40e8
TQID: https://experienceleague.adobe.com/ZAKogDXCbaZHOiyzlgg6Od0pxGwWi2w9yXtPnKWZKUw
product_v2: id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2: id: fc7979f3-56c3-43ca-9784-f1ea3dc69c4bid: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2: id: b75843fa-0a67-4a44-a6b1-cc627b0481dcid: fef08361-6ac5-460c-93fe-d063e40b6a49
role_v2: id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2: id: aa2f3246-cb95-4b30-8899-fdf7d73550ccid: c4147b6e-073b-4d3c-9ab1-d60f2f4434efid: eddd9b14-83bd-4ff4-9072-54a4a484abb7id: fd2e3797-f2ea-4b36-a9af-52acf5e90513
source-git-commit: 1a77ef8d31211fb11c790152e78037a8c3b238a2
workflow-type: tm+mt
source-wordcount: 1058
ht-degree: 60%

---

# Questions fréquentes sur les [!DNL Customer Attributes]

Questions fréquentes et bonnes pratiques relatives aux [!DNL Customer Attributes] dans Adobe Analytics et Adobe Target.

## Bonnes pratiques et limites

Conseils et limites lors de l’utilisation des [!DNL Customer Attributes].

| Problème | Description |
| --- | --- |
| [!DNL Customer Attributes] [abonnement](subscription.md) limitations | Lorsque vous procédez à la mise à niveau vers Analytics Premium, un délai de 24 heures est nécessaire avant que des attributs supplémentaires soient disponibles. Il se peut qu’une erreur [!UICONTROL attribute Subscription Max] s’affiche pendant ce délai. |
| Connexions multiples sur le même appareil | Lors de l’utilisation de [!DNL Customer Attributes] pour charger des profils client dans une source de données, Adobe recommande de ne pas autoriser les utilisateurs qui partagent des appareils (c’est-à-dire le même CX Enterprise ID). L’identifiant CX Enterprise ID (ECID) persiste sur l’appareil. Si des utilisateurs partagent des appareils, l’ECID peut associer plusieurs utilisateurs au même ECID, ce qui peut entraîner des résultats inattendus dans [!DNL Target]. **Remarque :** pour Mobile, l’ECID est permanent après l’installation de l’application mobile. Réinstallez l’application pour générer un nouvel ECID. Pour le Web, un nouvel ECID est généré une fois le cookie du navigateur effacé. |
| Limite de chargement de fréquence quotidienne | Adobe vous recommande de ne mettre à jour les [!DNL Customer Attributes] qu’une seule fois par jour. Vous devez attendre au moins 24 heures pour charger un autre fichier de données de profil client pour le même ensemble de profils. |
| Analytics ID personnalisé (`s.visitorID`) | La définition d’un ID de client à l’aide de `s.visitorID` est une méthode d’identification des utilisateurs dans Adobe Analytics. Cependant, les intégrations dans lesquelles les données [!DNL Analytics] sont exportées ou importées à l’aide du service d’ID ne fonctionnent pas lorsqu’un visiteur est identifié à l’aide de `s.visitorID.`<br>Cela inclut, sans s’y limiter, les audiences partagées, les [!DNL Analytics] pour Adobe Target (A4T) et les [!DNL Customer Attributes].<br>Pour ces intégrations, la définition d’un Analytics ID personnalisé n’est pas prise en charge. |
| Limites de longueur des caractères dans [!DNL Analytics] | Lors de la création d’un [!DNL Analytics] [abonnement](subscription.md), la longueur des champs des fichiers chargés est tronquée à 255. |

{style="table-layout:auto"}

## Questions fréquentes sur les [!DNL Customer Attributes]

| Question | Réponse |
| --- | --- |
| Puis-je recevoir des notifications sur le statut du chargement des [!DNL Customer Attributes] ? | Oui. |
| Que dois-je faire pour commencer à utiliser les [!DNL Customer Attributes] ? | <ol><li>Recevez les privilèges d’accès. Si vous êtes un client Adobe Analytics, Adobe vous met en service pour [!DNL Customer Attributes]. Si vous utilisez uniquement Adobe Target et ne disposez pas d’Analytics, demandez la mise en service des services principaux en contactant l’assistance clientèle.</li> <li>Contactez votre équipe CRM. Découvrez les types de données client disponibles que vous souhaitez utiliser dans Analytics et dans CX Enterprise.</li><li>Implémentez les services principaux.</li></ol> Consultez [conditions préalables](t-crs-usecase.md#prerequisites-for-using-customer-attributes) avant de charger des données pour en savoir plus sur les conditions requises pour permettre aux utilisateurs d’utiliser cette fonctionnalité. |
| Combien d’attributs de client suis-je autorisé à utiliser ? | Vous pouvez charger des centaines de colonnes `.csv` vers le service d’attributs du client. Toutefois, lors de la configuration des abonnements et de la sélection des attributs, les restrictions suivantes sʼappliquent par suite de rapports, selon les applications que vous détenez :  <ul><li>Foundation : 0</li><li>Select : 3</li><li>Prime : 15</li><li>Ultimate : 200</li><li>Standard : 3 au total</li><li>Premium : 200</li><li>Adobe Target Standard : 5</li><li>Adobe Target Premium : 200</li></ul> |
| La migration vers le service CX Enterprise ID est-elle requise ? | La migration dépend des applications que vous utilisez. <ul><li>Adobe Analytics : fortement recommandé </li><li>Adobe Target : obligatoire. </li></ul>L’utilisation du service CX Enterprise ID active les dernières fonctionnalités de CX Enterprise, notamment les audiences en temps réel, la modernisation d’Adobe Target, l’intégration d’Analytics et le suivi de pulsation vidéo. |
| De quelle façon la fonction d’attributs du client est-elle liée à Adobe Audience Manager ? | Bien qu’Audience Manager puisse recevoir des données pour identifier les audiences, il ne peut pas exécuter la fonctionnalité d’analyse qui lie les attributs aux données comportementales historiques. Il ne fournit pas non plus les fonctionnalités de rapports, d’analyse et de segmentation disponibles dans Adobe Analytics. [!DNL Customer Attributes] permet de lier les données enrichies issues des applications et de les associer à un ID unique à utiliser dans CX Enterprise. <br>Dans Adobe Target, les attributs du client apparaissent sous la forme d’attributs individuels pouvant être combinés à d’autres règles afin de créer des audiences. Les audiences partagées avec le service [!UICONTROL People] sont des audiences complètes et non modifiables. |
| **(Adobe Analytics uniquement)** En quoi cette fonctionnalité diffère-t-elle de celle fournie dans Analytics Premium ? | Par le passé, les clients qui souhaitaient combiner les données d’attributs du client avec les données Analytics se fiaient principalement à l’outil Data Workbench associé à cette fonctionnalité. [!DNL Customer Attributes] expose cette fonctionnalité à une audience plus large en fournissant des attributs de client sous forme de dimensions et de mesures dans Report Builder. Les clientes et clients d’Analytics Standard ont accès aux [!DNL Customer Attributes], mais avec des fonctionnalités limitées. Les fonctionnalités complètes sont disponibles pour les clients Analytics Premium. |
| **(Adobe Target uniquement)** Puis-je précharger ou charger des données pour les clients qu’Adobe Target n’a jamais vus ? | Oui. Lorsque la personne envoie sa première demande à Adobe Target, le système récupère les informations existantes dont Adobe dispose à son sujet dans les [!DNL Customer Attributes], puis les utilise pour le ciblage. **Remarque :** la récupération de ces données peut prendre jusqu’à 20 minutes à compter de la première interaction du visiteur avec Adobe Target. |
| **(Adobe Target uniquement)** Puis-je créer une super audience en combinant les données d’attributs du client avec les données d’audience partagée ? | Non. Les données d’audience partagée correspondent à une audience terminée. |
| **(Adobe Target uniquement)** Comment se compare [!DNL Customer Attributes] l’API de profil par lot d’Adobe Target ? | L’API de profil par lot permet de mettre à jour les profils Adobe Target directement via l’API, soit pour un profil individuel, soit par lot. La fonctionnalité est similaire aux [!DNL Customer Attributes], avec les différences clés suivantes :<ul><li>L’API de profil est un appel API REST, tandis que les [!DNL Customer Attributes] utilisent le protocole FTP.</li><li>L’API de profil Adobe Target envoie uniquement des données à Adobe Target plutôt qu’à l’ensemble du CX Enterprise.</li><li>Les [!DNL Customer Attributes] fournissent une interface simple pour créer et gérer ces données externes.</li></ul> |
| **(Adobe Target uniquement)** Le chargement de données à partir des [!DNL Customer Attributes] vers Adobe Target étend-il la durée de vie du profil des visiteurs et visiteuses d’Adobe Target ? | Oui. Voir [Durée de vie du profil du visiteur](https://experienceleague.adobe.com/docs/target/using/audiences/visitor-profiles/visitor-profile.html) dans l’aide d’Adobe Target. |
| **(Adobe Target uniquement)** Puis-je cibler les données chargées dans les [!DNL Customer Attributes] immédiatement après l’identification du visiteur ou de la visiteuse par l’identifiant client ? | Oui. Lors de l’appel du serveur à Adobe Target, qui inclut l’identifiant tiers de la mbox, toutes les données d’attributs du client sont disponibles. |
| **(Adobe Target uniquement)** Que représente la colonne **[!UICONTROL Sync Status]** pour les fichiers chargés dans la source d’attributs du client ? | Le nombre dʼenregistrements publiés et synchronisés par Adobe Target peut être affiché en sélectionnant lʼicône Statut de la synchronisation en regard dʼun fichier dʼattributs spécifique. `Sync %` est une mesure en temps réel qui spécifie le % de profils synchronisés dans Adobe Target.<br> **Note :** la synchronisation des attributs avec Adobe Target peut prendre jusqu’à 24 heures. |
| Que représentent les mesures de chargement de fichiers dans la source des [!DNL Customer Attributes] ? | Vous pouvez vérifier le statut des attributs chargés dans les [!DNL Customer Attributes] à l’aide des mesures suivantes : <ul><li>Enregistrements : nombre d’enregistrements dans le fichier d’attributs.</li><li>**Nouveaux enregistrements :** nombre de nouveaux enregistrements présents dans le fichier d’attributs.</li> <li>**Enregistrements mis à jour :** nombre d’enregistrements existants dans les [!DNL Customer Attributes] avec des valeurs mises à jour dans le fichier.</li><li>**Toutes les données (enregistrements) :** nombre total d’enregistrements effectivement chargés dans les [!DNL Customer Attributes].</li></ul> |

{style="table-layout:auto"}
