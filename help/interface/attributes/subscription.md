---
description: Découvrez les sources de données des solutions et comment configurer les abonnements. Les Abonnements activent le flux de données d’attributs du client entre Experience Cloud et les solutions (Analytics et Cible).
keywords: Customer Attributes;core services
seo-description: Découvrez les sources de données des solutions et comment configurer les abonnements. Les Abonnements activent le flux de données d’attributs du client entre Experience Cloud et les solutions (Analytics et Cible).
seo-title: Configuration des abonnements
solution: Experience Cloud
title: Configuration des abonnements
uuid: f74a8155-0a21-46b3-9b1e-4c838f72f24f
translation-type: tm+mt
source-git-commit: 0bc7032d0052ba03beac1140dfbfd630e1802bfd
workflow-type: tm+mt
source-wordcount: '400'
ht-degree: 51%

---


# Configuration des abonnements

Découvrez les sources de données des solutions et comment configurer les abonnements. Les Abonnements permettent d’activer le flux de données d’attributs du client entre Experience Cloud et les solutions (Analytics et [!DNL Target]).

Par exemple, un abonnement Adobe Analytics active les données d’attribut dans les rapports. Si vous utilisez Adobe Cible, vous pouvez télécharger les attributs du client pour le ciblage et la segmentation.

**[!UICONTROL Source]** d’attributs cliente > **[!UICONTROL Créer une source]** d’attributs cliente > **[!UICONTROL Nouveau]**

![](assets/configure_subscription_page.png)

| Élément | Description |
|--- |--- |
| Solution | **Adobe Analytics **<br>Sélectionnez Analytics, spécifiez les suites de rapports destinées à recevoir les données d’attribut, ainsi que les attributs à inclure.<br>**Adobe**<br>TargetVous pouvez télécharger des attributs du client pour le ciblage et la segmentation. Cette fonctionnalité est utile si vous souhaitez cibler un test sur la base de données d’attribut, ou rendre les données disponibles pour la segmentation dans Analytics.<br>Les données d’attribut de client téléchargées pour un visiteur sont disponibles à la connexion, dans **[!DNL Target]**>** Audiences **.<br>Plusieurs sources de données sont prises en charge. Lorsque vous[définissez des ID client](../core-services/core-services.md)sur votre site web, vérifiez qu’au moins un des alias est abonné à[!DNL Target]. |
| Suite de rapports (Analytics) | Suites de rapports issues d’Analytics.<br>Vous ne pouvez pas ajouter plus de 10 suites de rapports aux abonnements Analytics au sein d’une même source d’attributs. Lorsque vous choisissez les suites de rapports à inclure, tenez compte des suggestions suivantes :<ul><li>Choisissez des suites de rapports ayant un jeu commun de clients authentifiés. Si les clients authentifiés d’une suite de rapports ne chevauchent pas les clients authentifiés d’une autre suite de rapports, séparez ces suites de rapports en différentes sources d’attributs.</li><li>Si possible, les suites de rapports incluses dans une source d’attributs doivent avoir un volume de trafic similaire.</li></ul><br>Si vous détenez plus de dix suites de rapports avec un jeu commun de clients authentifiés, vous pouvez configurer d’autres sources d’attributs du client, chacune d’elles pouvant contenir jusqu’à dix suites de rapports. |
| Attributs à inclure (Analytics et [!DNL Target]) | Attributs à envoyer à la solution. <br>Lors de la configuration d’abonnements et de la sélection d’attributs, les limites suivantes s’appliquent _par suite de rapports,_ en fonction des solutions que vous détenez :<ul><li>Foundation : 0</li><li>Select : 3</li><li>Prime : 15</li><li>Ultimate : 200</li><li>Standard : 3 au total</li><li>Premium : 200 par suite de rapports</li><li>[!DNL Target] Standard : 5</li><li>[!DNL Target] Premium : 200</li></ul><br>**Remarque :**Lorsque vous effectuez la mise à niveau vers Analytics Premium, un délai de 24 heures est nécessaire avant que des attributs supplémentaires soient disponibles. Il se peut que l’erreur Nombre maximal d’abonnements des attributs s’affiche durant ce délai. |
