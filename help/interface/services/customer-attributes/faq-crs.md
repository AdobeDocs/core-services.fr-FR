---
description: Questions fréquentes sur les  [!DNL Customer Attributes]  dans Adobe Experience Cloud, pour Adobe Analytics et Adobe Target.
solution: Experience Cloud
title: Questions fréquentes sur les  [!DNL Customer Attributes]
uuid: e93eb531-23c7-4d75-92e8-75699f58546a
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: 6031e544-822b-4843-b3d8-98a36a3c40e8
source-git-commit: 7fb572beadfddbaeffb5257f0180b754a0d9ea6c
workflow-type: tm+mt
source-wordcount: '1029'
ht-degree: 95%

---

# Questions fréquentes sur les [!DNL Customer Attributes]

Questions fréquentes et bonnes pratiques relatives aux [!DNL Customer Attributes] dans Adobe Analytics et Adobe Target.

## Bonnes pratiques et restrictions {#section_7F5189B3DAA84EE6865B91D2026EE05A}

Conseils et limites lors de l’utilisation des [!DNL Customer Attributes].

| Problème | Description |
|--- |--- |
| Limites des abonnements d’[!UICONTROL attributs du client] | Lorsque vous procédez à la mise à niveau vers Analytics Premium, un délai de 24 heures est nécessaire avant que des attributs supplémentaires soient disponibles. Il se peut que l’erreur [!UICONTROL Abonnement aux attributs max] s’affiche durant ce délai. |
| Connexions multiples sur le même appareil | Lorsque vous utilisez des [!DNL Customer Attributes] pour charger des profils clients dans une source de données, Adobe vous recommande de ne pas autoriser les utilisateurs et les utilisatrices qui partagent des appareils (c’est-à-dire le même identifiant Experience Cloud). L’Experience Cloud ID (ECID) est conservé sur l’appareil. Si des utilisateurs partagent des appareils, l’ECID peut associer plusieurs utilisateurs au même ECID, ce qui peut entraîner des résultats inattendus dans [!DNL Target]. **Remarque :** pour Mobile, l’ECID est permanent après l’installation de l’application mobile. Réinstallez l’application pour générer un nouvel ECID. Pour le Web, un nouvel ECID est généré une fois le cookie du navigateur effacé. |
| Limite de chargement de fréquence quotidienne | Adobe vous recommande de ne mettre à jour les [!DNL Customer Attributes] qu’une seule fois par jour. Vous devez attendre au moins 24 heures pour charger un autre fichier de données de profil client pour le même ensemble de profils. |
| Analytics ID personnalisé (`s.visitorID`) | La définition d’un ID de client à l’aide de `s.visitorID` permet d’identifier les utilisateurs dans Analytics. Cependant, les intégrations dans lesquelles les données [!DNL Analytics] sont exportées ou importées à l’aide du service d’identification ne fonctionnent pas lorsqu’une personne est identifiée à l’aide d’un `s.visitorID.`<br>. Cela inclut, entre autres, les audiences partagées, [!DNL Analytics] pour Adobe Target (A4T) et les [!DNL Customer Attributes].<br>Pour ces intégrations, la définition d’un Analytics ID personnalisé n’est pas prise en charge. |
| Limites de longueur des caractères dans [!DNL Analytics] | Lors de la création d’un abonnement [!DNL Analytics], la longueur des champs des fichiers chargés est tronquée à 255. |

{style="table-layout:auto"}

## Questions fréquentes sur les [!DNL Customer Attributes] {#section_E47866EEA83348E09FE43CEC5E44C461}

| Question | Réponse |
|--- |--- |
| Puis-je recevoir des notifications sur le statut du chargement des [!DNL Customer Attributes] ? | Oui. |
| Que dois-je faire pour commencer à utiliser les [!DNL Customer Attributes] ? | <ol><li>Recevez les privilèges d’accès. Si vous êtes un client ou une cliente d’Analytics, Adobe vous met à disposition les privilèges d’accès aux [!DNL Customer Attributes]. Si vous utilisez uniquement Adobe Target et ne possédez pas Analytics, demandez la mise en service des services principaux en contactant le service d’assistance clientèle.</li> <li>Contactez votre équipe CRM. Découvrez quels types de données de clientes et clients vous pouvez utiliser dans Analytics et dans Experience Cloud.</li><li>Implémentez les services principaux.</li></ol> |
| Combien de [!DNL Customer Attributes] ai-je le droit d’utiliser ? | Vous pouvez charger des centaines de colonnes `.csv` vers le service Attributs du client ou de la cliente. Toutefois, lors de la configuration des abonnements et de la sélection des attributs, les restrictions suivantes sʼappliquent par suite de rapports, selon les applications que vous détenez :  <ul><li>Foundation : 0</li><li>Select : 3</li><li>Prime : 15</li><li>Ultimate : 200</li><li>Standard : 3 au total</li><li>Premium : 200</li><li>Adobe Target Standard : 5</li><li>Adobe Target Premium : 200</li></ul> |
| La migration vers le service Experience Cloud ID est-elle requise ? | La migration dépend des applications que vous utilisez. <ul><li>Adobe Analytics : fortement recommandé </li><li>Adobe Target : obligatoire. </li></ul><br>L’utilisation du service Experience Cloud ID active les dernières fonctionnalités d’Experience Cloud, notamment les audiences en temps réel, la modernisation d’Adobe Target, l’intégration d’Analytics et le suivi de pulsation vidéo. |
| De quelle façon la fonctionnalité Attributs du client est-elle liée à Adobe Audience Manager ? | Bien qu’Audience Manager puisse recevoir des données pour identifier les audiences, il ne peut pas exécuter la fonctionnalité d’analyse qui lie les attributs aux données comportementales historiques. Il ne fournit pas non plus les fonctionnalités de rapports, d’analyse et de segmentation disponibles dans Adobe Analytics. Le service [!UICONTROL Personnes] permet de relier les données enrichies issues des applications et de les associer à un identifiant unique destiné à être utilisé dans Experience Cloud. <br>Dans Adobe Target, les [!DNL Customer Attributes] apparaissent sous la forme d’attributs individuels pouvant être combinés à d’autres règles afin de créer des audiences. Les audiences partagées avec le service [!UICONTROL Personnes] sont des audiences complètes qui ne peuvent pas être modifiées. |
| **(Analytics uniquement)** En quoi cette fonctionnalité diffère-t-elle de celle fournie dans Analytics Premium ? | Par le passé, les clients qui souhaitaient combiner les données d’attributs du client avec les données Analytics se fiaient principalement à l’outil Data Workbench associé à cette fonctionnalité. [!DNL Customer Attributes] expose cette fonctionnalité à une audience plus large en fournissant des [!DNL Customer Attributes] sous forme de dimensions et de mesures dans Report Builder. Les clientes et clients d’Analytics Standard ont accès aux [!DNL Customer Attributes], mais avec des fonctionnalités limitées. Les fonctionnalités complètes sont disponibles pour les clients Analytics Premium. |
| **(Adobe Target uniquement)** Puis-je précharger ou charger des données pour les clients qu’Adobe Target n’a jamais vus ? | Oui. Lorsque la personne envoie sa première demande à Adobe Target, le système récupère les informations existantes dont Adobe dispose à son sujet dans les [!DNL Customer Attributes], puis les utilise pour le ciblage. **Remarque :** la récupération de ces données peut prendre jusqu’à 20 minutes à compter de la première interaction du visiteur avec Adobe Target. |
| **(Adobe Target uniquement)** Puis-je créer une super audience en combinant les données d’attributs du client avec les données d’audience partagée ? | Non. Les données d’audience partagée correspondent à une audience terminée. |
| **(Adobe Target uniquement)** En quoi la fonctionnalité des [!DNL Customer Attributes] est-elle comparable à l’API de profils par lot d’Adobe Target ? | L’API de profil par lot permet de mettre à jour les profils Adobe Target directement via l’API, soit pour un profil individuel, soit par lot. La fonctionnalité est similaire aux [!DNL Customer Attributes], avec les différences clés suivantes :<ul><li>L’API de profil est un appel API REST, tandis que les [!DNL Customer Attributes] utilisent le protocole FTP.</li><li>L’API profil d’Adobe Target envoie uniquement des données à Adobe Target plutôt qu’à l’ensemble d’Experience Cloud.</li><li>Les [!DNL Customer Attributes] fournissent une interface simple pour créer et gérer ces données externes.</li></ul> |
| **(Adobe Target uniquement)** Le chargement de données à partir des [!DNL Customer Attributes] vers Adobe Target étend-il la durée de vie du profil des visiteurs et visiteuses d’Adobe Target ? | Oui. Voir [Durée de vie du profil du visiteur](https://experienceleague.adobe.com/docs/target/using/audiences/visitor-profiles/visitor-profile.html?lang=fr) dans l’aide d’Adobe Target. |
| **(Adobe Target uniquement)** Puis-je cibler les données chargées dans les [!DNL Customer Attributes] immédiatement après l’identification du visiteur ou de la visiteuse par l’identifiant client ? | Oui. Lors de l’appel du serveur à Adobe Target, qui inclut l’ID tiers de la mbox, toutes les données d’attributs du client sont disponibles. |
| **(Adobe Target uniquement)** Que représente la colonne **[!UICONTROL État de synchronisation]** pour les fichiers chargés dans la source d’attributs du client ? | Le nombre dʼenregistrements publiés et synchronisés par Adobe Target peut être affiché en sélectionnant lʼicône Statut de la synchronisation en regard dʼun fichier dʼattributs spécifique. `Sync %` est une mesure en temps réel qui spécifie le % de profils synchronisés dans Adobe Target.<br> **Note :** la synchronisation des attributs avec Adobe Target peut prendre jusqu’à 24 heures. |
| Que représentent les mesures de chargement de fichiers dans la source des [!DNL Customer Attributes] ? | Vous pouvez vérifier le statut des attributs chargés dans les [!DNL Customer Attributes] à l’aide des mesures suivantes : <ul><li>Enregistrements : nombre d’enregistrements dans le fichier d’attributs.</li><li>**Nouveaux enregistrements :** nombre de nouveaux enregistrements présents dans le fichier d’attributs.</li> <li>**Enregistrements mis à jour :** nombre d’enregistrements existants dans les [!DNL Customer Attributes] avec des valeurs mises à jour dans le fichier.</li><li>**Toutes les données (enregistrements) :** nombre total d’enregistrements effectivement chargés dans les [!DNL Customer Attributes].</li></ul> |

{style="table-layout:auto"}
