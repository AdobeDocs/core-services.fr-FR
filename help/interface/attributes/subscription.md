---
description: Découvrez les sources de données des solutions et comment configurer les abonnements. Les abonnements permettent d’établir le flux de données d’attributs du client entre Experience Cloud et les solutions (Analytics et Target).
keywords: attributs du client;services principaux
seo-description: Découvrez les sources de données des solutions et comment configurer les abonnements. Les abonnements permettent d’établir le flux de données d’attributs du client entre Experience Cloud et les solutions (Analytics et Target).
seo-title: Configuration des abonnements
solution: Experience Cloud
title: Configuration des abonnements
uuid: f74a8155-0a21-46b3-9b1e-4c838f72f24f
translation-type: tm+mt
source-git-commit: 979b2202a70e2a5362aa86a65a17d7c4279b3a1a

---


# Configuration des abonnements

Découvrez les sources de données des solutions et comment configurer les abonnements. Les abonnements permettent d’établir le flux de données d’attributs du client entre Experience Cloud et les solutions (Analytics et Target).

Un abonnement à Adobe Analytics permet par exemple d’activer les données dans les rapports. Si vous utilisez Adobe Target, vous pouvez télécharger les attributs de client pour le ciblage et la segmentation.

**[!UICONTROL Sources d’attributs cliente]** &gt; **[!UICONTROL Créer une source d’attributs cliente]** &gt; **[!UICONTROL Nouveau]**

![](assets/configure_subscription_page.png)

| Élément | Description |
|--- |--- |
| Solution | **Adobe Analytics**<br>Sélectionnez Analytics, spécifiez les suites de rapports destinées à recevoir les données d’attribut, ainsi que les attributs à inclure.<br>**Adobe Target**<br>Vous pouvez télécharger des attributs de client pour le ciblage et la segmentation. Cette fonctionnalité est utile si vous souhaitez cibler un test sur la base de données d’attribut, ou rendre les données disponibles pour la segmentation dans Analytics.<br>Les données d’attribut du client chargées pour un visiteur sont disponibles lors de la connexion dans Target &gt; Audiences.<br>Plusieurs sources de données sont prises en charge. Lorsque vous [définissez des ID client](../core-services/core-services.md) sur votre site web, vérifiez qu’au moins un des alias est abonné à Target. |
| Suite de rapports (Analytics) | Suites de rapports issues d’Analytics.<br>Vous ne pouvez pas ajouter plus de 10 suites de rapports aux abonnements Analytics au sein d’une même source d’attributs. Au moment de choisir quelles suites de rapports vous souhaitez inclure, tenez compte des suggestions suivantes :<ul><li>Choisissez des suites de rapports ayant un jeu commun de clients authentifiés. Si les clients authentifiés dans une suite de rapports diffèrent des clients authentifiés dans une autre suite de rapports, séparez chacune d’elles dans des sources d’attributs distinctes.</li><li>Si possible, le volume du trafic doit être le même dans les suites de rapports incluses dans une source d’attributs.</li></ul><br>Si vous détenez plus de dix suites de rapports avec un jeu commun de clients authentifiés, vous pouvez configurer d’autres sources d’attributs du client, chacune d’elles pouvant contenir jusqu’à dix suites de rapports. |
| Attributs à inclure (Analytics et Target) | Attributs que vous souhaitez envoyer à la solution.<br>Lors de la configuration des abonnements et de la sélection des attributs, les restrictions suivantes s’appliquent, selon les solutions que vous détenez :<ul><li>Foundation : 0</li><li>Select : 3</li><li>Prime : 15</li><li>Ultimate : 200</li><li>Standard : 3 au total</li><li>Premium : 200 par suite de rapports</li><li>Target Standard : 5</li><li>Target Premium : 200</li></ul><br>**Remarque :** Lorsque vous effectuez la mise à niveau vers Analytics Premium, un délai de 24 heures est nécessaire avant que des attributs supplémentaires soient disponibles. Il se peut que l’erreur Nombre maximal d’abonnements des attributs s’affiche durant ce délai. |
