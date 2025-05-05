---
title: « [!DNL Audience Library] »
description: Découvrez comment gérer la traduction des données des visiteurs et visiteuses en segmentation dʼaudience dans  [!DNL Audience Library] dʼExperience Cloud.
solution: Experience Cloud
type: Documentation
uuid: 92faf3a8-1375-4e32-905b-74cad48144d3
feature: Audience Library
topic: Administration
role: Admin
level: Experienced
exl-id: 1c6e54ac-4886-46ed-9df7-201d2df31847
source-git-commit: b257260bdbb7870dd6da807bceddfcddd2aef779
workflow-type: tm+mt
source-wordcount: '701'
ht-degree: 94%

---

# Audiences Experience Cloud {#topic_679810123CAA4E0CA4FA3417FB0100C7}

[!DNL Audience Library] affiche les audiences dans Experience Cloud. Les audiences sont des collections de visiteurs et visiteuses (une liste d’identifiants [!DNL Experience Cloud]). Vous pouvez gérer la traduction des données de visiteurs et visiteuses en segmentation d’audience. Ainsi, la création et la gestion d’audiences est similaire à la création et à l’utilisation de segments. Vous pouvez également partager les segments ciblés avec des produits et services dans [!DNL Experience Cloud].

![Audiences Experience Cloud](assets/audiences.png)

Les audiences peuvent être créées ou dérivées à partir de diverses sources, par exemple :

* Nouvelles audiences créées dans [!DNL Experience Cloud]
* [!DNL Analytics] segments publiés dans [!DNL Experience Cloud]
* [!DNL Audience Manager]

**Audiences en temps réel et historiques**

Toutes les audiences, quelle que soit leur origine, sont accessibles pour un ciblage en temps réel. Toutefois, les audiences partagées à partir d’Analytics vers Audience Manager ne sont pas accessibles pour le ciblage en temps réel. Le système évalue les audiences de deux manières :

* Les audiences historiques d’Analytics sont évaluées toutes les quatre heures. Le temps total de traitement et de partage peut prendre jusqu’à huit heures. Les audiences historiques incluent toujours les visiteurs et visiteuses récurrents.
* Les audiences en temps réel sont issues des audiences Experience Cloud et évaluées en temps réel.

## Utilisation des audiences par les applications {#concept_01EB9345C5344597BC94A864EDD38EE1}

Le tableau suivant décrit lʼutilisation des audiences dans les applications Experience Cloud :

| Solution | Description |
|--- |--- |
| Audiences Experience Cloud | Créez, gérez et partagez des audiences de manière native à l’aide de la bibliothèque d’audiences. Vous pouvez :<ul><li>utiliser des audiences en temps réel à l’aide d’attributs Analytics bruts.</li><li>combiner des audiences pour en créer des composites, en associant les données en temps réel aux données historiques.</li><li>afficher des vues graphiques de la taille estimée des audiences.</li></ul><br>Pour obtenir des suggestions sur le type d’audience à créer, voir [Options de création d’audience](https://experienceleague.adobe.com/docs/experience-cloud-kcs/kbarticles/KA-16471.html?lang=fr). |
| Analytics | Dans la segmentation, vous pouvez créer un segment, le combiner avec une suite de rapports, puis le publier vers Experience Cloud. La publication du segment l’affiche sur la page [!DNL Audience Library] dans Experience Cloud. (Voir [Publier des segments dans Experience Cloud](https://experienceleague.adobe.com/docs/analytics/components/segmentation/segmentation-workflow/seg-publish.html?lang=fr) dans l’aide [!DNL Analytics] pour en savoir plus.) L’audience est également disponible en tant qu’audience ciblée pour une expérience de campagne fournie par [!DNL Adobe Target], et dans [!DNL Audience Manager]. Une fois que vous avez partagé une audience à partir d’[!DNL Adobe Analytics] et que vous l’avez sélectionnée afin de l’utiliser dans une campagne active, les profils des visiteurs et visiteuses répondant aux critères de définition du segment des 90 derniers jours sont envoyés aux [!UICONTROL Services d’audience]. La limite pour les audiences partagées a été portée à 75. Les audiences partagées avec Experience Cloud à partir d’[!DNL Analytics] ne doivent pas dépasser 20 millions de profils membres uniques. De plus, en raison de la mise en cache, les suites de rapports supprimées dans Analytics ne disparaîtront pas d’Experience Cloud avant 12 heures. |
| Mobile Services | Analysez le trafic mobile à l’aide de la visualisation radiale dans le rapport [!UICONTROL Types d’appareils]. |
| [!DNL Target] | Le [service dʼID](https://experienceleague.adobe.com/docs/id-service/using/home.html?lang=fr) regroupe les ID de visiteur et les données dans un profil exploitable unique pouvant être utilisé dans plusieurs applications différentes. La case à cocher [!UICONTROL Publier dans Experience Cloud], qui sʼaffiche pendant le processus de création dʼun segment dans Adobe Analytics, met le segment à disposition dans la bibliothèque dʼaudiences personnalisées dʼAdobe Target. Un segment créé dans [!DNL Analytics] ou dans [!DNL Audience Manager] peut être utilisé pour des activités dans [!DNL Target]. Vous pouvez par exemple créer des activités de campagne d’après les mesures de conversion d’[!DNL Analytics] et les segments d’audience créés dans [!DNL Analytics]. |
| [!DNL Audience Manager] | Les audiences partagées sont disponibles dans la segmentation [!DNL Audience Manager]. Toutes les audiences Experience Cloud sont disponibles de manière native dans [!DNL Audience Manager], ce qui permet les éléments suivants :<ul><li>Automatisation intégrée relative à la façon dont elles sont partagées et consommées dans les workflows dʼapplication.</li><li>Destinations hors site</li><li>Modélisation analogue</li></ul> |
| Campaign | <ul><li>Importation des audiences partagées de différentes applications Adobe Experience Cloud dans Adobe Campaign.</li><li>Exportation des listes de destinataires sous la forme dʼaudiences partagées. Ces audiences partagées peuvent être utilisées dans les différentes applications Adobe Experience Cloud que vous utilisez.</li></ul> |
| Advertising Cloud | Utilisez l’audience comme cibles. |

{style="table-layout:auto"}

>[!IMPORTANT]
>
>Une fois qu’un visiteur se qualifie pour l’audience partagée depuis Analytics, un délai de 4 à 8 heures est nécessaire avant que les informations soient exploitables dans [!DNL Target], Ad Cloud et Campaign Standard.

## Éléments de l’interface de la bibliothèque d’audiences {#section_D04ACEF61CEF4B189AE6BA9F40D0DBF4}

[!DNL Experience Cloud] fournit une bibliothèque pour la création et la gestion des audiences, avec une identification d’audience native en temps réel.

**[!UICONTROL Experience Cloud]** > **[!UICONTROL Experience Platform]** > **[!UICONTROL Personnes]** > **[!UICONTROL Bibliothèque d’audiences]**

![Ajout dʼune audience dans la bibliothèque dʼaudiences](assets/audience_library.png)


| Élément | Description |
|--- |--- |
| Nouveau | [Création d’une audience](create.md). |
| Titre et description | En-tête de colonne qui identifie et décrit l’audience. |
| Auteur | Personne qui a créé le segment d’audience. |
| Source | Identifie l’emplacement où l’audience a été créée.<ul><li>**Analytics :** Segment créé dans Adobe Analytics, puis publié sur Experience Cloud.</li><li>**Experience Cloud :** nouvelle audience [créée dans la page Audiences d’Experience Cloud](create.md).</li><li>**Audience Manager :** les audiences créées dans Audience Manager s’affichent automatiquement sur la page Audiences d’Experience Cloud.</li></ul> |
| Taille actuelle | Taille actuelle de l’audience. |
| Actif | État actif du segment. |

{style="table-layout:auto"}

## Audiences Publish à partir d’Adobe Analytics

Pour plus d’informations, voir [Segments Publish vers Experience Cloud](https://experienceleague.adobe.com/fr/docs/analytics/components/segmentation/segmentation-workflow/seg-publish) dans la documentation Adobe Analytics.
