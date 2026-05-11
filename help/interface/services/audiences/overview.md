---
title: '[!DNL Audience Library]'
description: Découvrez comment gérer la traduction des données du visiteur en segmentation d’audience dans CX Enterprise [!DNL Audience Library].
solution: Experience Cloud
type: Documentation
uuid: 92faf3a8-1375-4e32-905b-74cad48144d3
feature: Audience Library
topic: Administration
role: Admin
level: Experienced
exl-id: 1c6e54ac-4886-46ed-9df7-201d2df31847
TQID: 'https://experienceleague.adobe.com/OJzZ78fOe0VjKvuYToUHiXIGBFL6lbs4Xp5O3nZvLKM'
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2:
  - id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2: id:id:
role_v2: id:
topic_v2:
  - id: bce87dde-a4ab-44c9-8a18-ad66e4ddb377
  - id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
  - id: ff2b9b37-92e0-45fc-b853-379d44c08c89
source-git-commit: f01d85af42b8f2c27dbada8f73546bc6fe4bf710
workflow-type: tm+mt
source-wordcount: 745
ht-degree: 48%

---

# Audiences CX Grands comptes

[!DNL Audience Library] affiche les audiences dans CX Enterprise. Les audiences sont des collections de visiteurs et visiteuses (une liste d’identifiants [!DNL CX Enterprise]). Vous pouvez gérer la traduction des données de visiteurs et visiteuses en segmentation d’audience. Ainsi, la création et la gestion des audiences sont similaires à la création et à l’utilisation de segments. Vous pouvez également partager les segments d’audiencde avec des produits et services dans [!DNL CX Enterprise].

![Audiences CX Grands comptes](assets/audiences.png)

Les audiences peuvent être créées ou dérivées à partir de diverses sources, par exemple :

* Nouveaux fichiers créés dans [!DNL CX Enterprise]
* [!DNL Analytics] les segments publiés sur [!DNL CX Enterprise]
* [!DNL Audience Manager]

**Audiences en temps réel et historiques**

Toutes les audiences, quelle que soit leur origine, sont accessibles pour un ciblage en temps réel. Toutefois, les audiences partagées à partir d’Analytics vers Audience Manager ne sont pas accessibles pour le ciblage en temps réel. Le système évalue les audiences de deux manières :

* Les audiences historiques d’Analytics sont évaluées toutes les quatre heures. Le temps total de traitement et de partage peut prendre jusqu’à huit heures. Les audiences historiques incluent toujours les visiteurs et visiteuses récurrents.
* Les audiences en temps réel sont sourcées dans les audiences d’entreprise CX et évaluées en temps réel.

## Utilisation des audiences par les applications

Le tableau suivant décrit l’utilisation des audiences dans les applications CX Enterprise :

| Solution | Description |
| --- | --- |
| Audiences d’entreprise CX | Créez, gérez et partagez des audiences en mode natif à l’aide de la bibliothèque d’audiences. Vous pouvez :<ul><li>Utilisez des audiences en temps réel à l’aide d’attributs d’analyse bruts.</li><li>Combinez les audiences pour créer des audiences composites, en associant les données historiques et en temps réel.</li><li>Consultez des vues graphiques de la taille estimée des audiences.</li></ul><br>Pour obtenir des suggestions sur le type d’audience à créer, voir [Options de création d’audience](https://experienceleague.adobe.com/docs/experience-cloud-kcs/kbarticles/KA-16471.html?lang=fr). |
| Analytics | Dans la segmentation, vous pouvez créer un segment, le combiner avec une suite de rapports, puis publier le segment sur l’expérience client d’entreprise. La publication du segment l’affiche sur la page [!DNL Audience Library] dans CX Enterprise. (Voir [Publication de segments sur CX Enterprise](https://experienceleague.adobe.com/docs/analytics/components/segmentation/segmentation-workflow/seg-publish.html?lang=fr) dans l’aide [!DNL Analytics] pour plus d’informations.) L’audience est également disponible en tant qu’audience ciblée pour une expérience de campagne diffusée par [!DNL Adobe Target] et dans [!DNL Audience Manager]. Une fois que vous avez partagé une audience à partir de [!DNL Adobe Analytics] et que vous l’avez sélectionnée afin de l’utiliser dans une campagne active, les profils du visiteur répondant aux critères de définition du segment des 90 derniers jours sont envoyés à [!UICONTROL Audience Services]. La limite pour les audiences partagées a été portée à 75. Les audiences partagées avec CX Enterprise depuis [!DNL Analytics] ne peuvent pas dépasser 20 millions de membres uniques. En outre, en raison de la mise en cache, les suites de rapports supprimées dans Analytics nécessitent 12 heures avant que la suppression ne s’affiche dans CX Enterprise. |
| Mobile Services | Analysez le trafic mobile à l’aide de la visualisation Sunburst dans le rapport [!UICONTROL Device Types]. |
| [!DNL Target] | Le [service dʼID](https://experienceleague.adobe.com/docs/id-service/using/home.html?lang=fr) regroupe les ID de visiteur et les données dans un profil exploitable unique pouvant être utilisé dans plusieurs applications différentes. La case à cocher [!UICONTROL Publish to CX Enterprise] lors du processus de création de segments dans Adobe Analytics permet au segment d’être disponible dans la bibliothèque d’audiences personnalisées d’Adobe Target. Un segment créé dans [!DNL Analytics] ou dans [!DNL Audience Manager] peut être utilisé pour des activités dans [!DNL Target]. Vous pouvez par exemple créer des activités de campagne d’après les mesures de conversion d’[!DNL Analytics] et les segments d’audience créés dans [!DNL Analytics]. |
| [!DNL Audience Manager] | Les audiences partagées sont disponibles dans la segmentation [!DNL Audience Manager]. Toutes les audiences CX Enterprise sont disponibles en mode natif dans [!DNL Audience Manager], qui offre les éléments suivants :<ul><li>Automatisation intégrée relative à la façon dont elles sont partagées et consommées dans les workflows dʼapplication.</li><li>Destinations hors site</li><li>Modélisation analogue</li></ul> |
| Campaign | <ul><li>Importez les audiences partagées de différentes applications Adobe CX Enterprise dans Adobe Campaign.</li><li>Exportation des listes de destinataires sous la forme dʼaudiences partagées. Ces audiences partagées peuvent être utilisées dans les différentes applications Adobe CX Enterprise que vous utilisez.</li></ul> |
| Advertising Cloud | Utilisez l’audience comme cibles. |

{style="table-layout:auto"}

>[!IMPORTANT]
>
>Une fois qu’un visiteur se qualifie pour l’audience partagée depuis Analytics, un délai de 4 à 8 heures est nécessaire avant que les informations soient exploitables dans [!DNL Target], Ad Cloud et Campaign Standard.

## Éléments de l’interface de la bibliothèque d’audiences

[!DNL CX Enterprise] fournit une bibliothèque pour la création et la gestion des audiences, avec une identification d’audience native en temps réel.

**[!UICONTROL CX Enterprise]** > **[!UICONTROL Experience Platform]** > **[!UICONTROL People]** > **[!UICONTROL Audience Library]**

![Ajout dʼune audience dans la bibliothèque dʼaudiences](assets/audience_library.png)


| Élément | Description |
| --- | --- |
| Nouveau | [Création d’une audience](https://experienceleague.adobe.com/fr/docs/core-services/interface/services/audiences/create). |
| Titre et description | En-tête de colonne qui identifie et décrit l’audience. |
| Auteur | Personne qui a créé le segment d’audience. |
| Source | Identifie l’emplacement où l’audience a été créée.<ul><li>**Analytics :** segment créé dans Adobe Analytics, puis publié sur l’expérience client Entreprise.</li><li>**CX Enterprise :** nouvelle audience [créée dans CX Enterprise Audiences](https://experienceleague.adobe.com/fr/docs/core-services/interface/services/audiences/create).</li><li>**Audience Manager :** Les audiences créées dans Audience Manager s’affichent automatiquement dans les audiences d’entreprise CX.</li></ul> |
| Taille actuelle | Taille actuelle de l’audience. |
| Actif | État actif du segment. |

{style="table-layout:auto"}

## Publication d’audiences à partir d’Adobe Analytics

Consultez [&#x200B; Publication de segments sur l’expérience client Enterprise &#x200B;](https://experienceleague.adobe.com/en/docs/analytics/components/segmentation/segmentation-workflow/seg-publish) dans la documentation d’Adobe Analytics pour plus d’informations.
