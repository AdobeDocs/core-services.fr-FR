---
description: Découvrez les sources de données des solutions et comment configurer les abonnements. Les abonnements activent le flux de données d’attributs du client entre Experience Cloud et les applications (Analytics et Target).
solution: Experience Cloud
title: Configuration des abonnements
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: cfa2aa5c-337f-401e-80eb-cbe36cb1d41e
source-git-commit: 2f126877f6a5f090884ebe093f35e4f6d90b4df6
workflow-type: tm+mt
source-wordcount: '392'
ht-degree: 75%

---

# Configuration des abonnements dans Experience Cloud

Découvrez les sources de données des applications et comment configurer les abonnements. Les abonnements permettent d’[!DNL customer attribute] le flux de données entre Experience Cloud et les applications ([!DNL Analytics] et [!DNL Target]).

Par exemple, un abonnement Adobe Analytics active les données d’attribut dans les rapports. Si vous utilisez Adobe Target, vous pouvez charger des attributs de client pour le ciblage et la segmentation.

**[!UICONTROL Source des attributs du client]** > **[!UICONTROL Créer un Source des attributs du client]** > **[!UICONTROL Nouveau]**

![Configuration des abonnements dans Experience Cloud](assets/configure_subscription_page.png)

| Élément | Description |
|--- |--- |
| Solution | **Adobe Analytics**<br> Sélectionnez [!DNL Analytics], spécifiez les suites de rapports destinées à recevoir les données d’attribut, ainsi que les attributs à inclure.<br>**Adobe Target**<br> Vous pouvez charger des attributs de client pour le ciblage et la segmentation. Cette fonctionnalité est utile si vous souhaitez cibler un test sur la base de données d’attribut, ou rendre les données disponibles pour la segmentation dans Analytics.<br>Les données d’attribut du client chargées pour un visiteur sont disponibles lors de la connexion dans **[!DNL Target]** > **Audiences**.<br>Plusieurs sources de données sont prises en charge. Lorsque vous définissez des ID de client sur votre site web, vérifiez qu’au moins un des alias est abonné à [!DNL Target]. |
| Suite de rapports (Adobe Analytics) | Suites de rapports issues d’Analytics.<br>Vous ne pouvez pas ajouter plus de 10 suites de rapports aux abonnements Analytics au sein d’une même source d’attributs. Lorsque vous choisissez les suites de rapports à inclure, tenez compte des suggestions suivantes :<ul><li>Choisissez des suites de rapports ayant un jeu commun de clients authentifiés. Si les clients authentifiés d’une suite de rapports ne chevauchent pas les clients authentifiés d’une autre suite de rapports, séparez ces suites de rapports en différentes sources d’attributs.</li><li>Si possible, les suites de rapports incluses dans une source d’attributs doivent avoir un volume de trafic similaire.</li></ul><br>Si vous détenez plus de dix suites de rapports avec un jeu commun de clients authentifiés, vous pouvez configurer d’autres sources d’attributs du client, chacune d’elles pouvant contenir jusqu’à dix suites de rapports. |
| Attributs à inclure (Analytics et [!DNL Target]) | Attributs à envoyer à lʼapplication. <br>Lors de la configuration des abonnements et de la sélection des attributs, les restrictions suivantes sʼappliquent _par suite de rapports_, selon les applications que vous détenez :<ul><li>Foundation : 0</li><li>Select : 3</li><li>Prime : 15</li><li>Ultimate : 200</li><li>Standard : 3 au total</li><li>Premium : 200 par suite de rapports</li><li>[!DNL Target] Standard : 5</li><li>[!DNL Target] Premium : 200</li></ul><br>**Remarque :** lorsque vous effectuez la mise à niveau vers Analytics Premium, un délai de 24 heures est nécessaire avant que des attributs supplémentaires soient disponibles. Il se peut que l’erreur Abonnement max d’attribut s’affiche pendant ce délai. |

{style="table-layout:auto"}
