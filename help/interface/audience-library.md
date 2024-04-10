---
title: «[!DNL Audience Library]«
description: Découvrez comment gérer la traduction des données du visiteur en segmentation d’audience dans Experience Cloud [!DNL Audience Library].
solution: Experience Cloud
type: Documentation
uuid: 92faf3a8-1375-4e32-905b-74cad48144d3
feature: Audience Library
topic: Administration
role: Admin
level: Experienced
exl-id: 1c6e54ac-4886-46ed-9df7-201d2df31847
source-git-commit: 064f3c981b921fd5aec9b252b839d8b7f59b3dee
workflow-type: tm+mt
source-wordcount: '732'
ht-degree: 60%

---

# Audiences Experience Cloud {#topic_679810123CAA4E0CA4FA3417FB0100C7}

Le [!DNL Audience Library] affiche les audiences dans l’Experience Cloud. Les audiences sont des collections de visiteurs (une liste de [!DNL Experience Cloud] ID). Vous pouvez gérer la traduction des données du visiteur en segmentation d’audience. Ainsi, la création et la gestion d’audiences est similaire à la création et à l’utilisation de segments. Vous pouvez également partager les segments ciblés avec des produits et services dans [!DNL Experience Cloud].

![Audiences Experience Cloud](assets/audiences.png)

Les audiences peuvent être créées ou dérivées à partir de diverses sources, par exemple :

* Nouvelles audiences créées dans [!DNL Experience Cloud]
* [!DNL Analytics] segments publiés dans [!DNL Experience Cloud]
* [!DNL Audience Manager]

**Audiences en temps réel et historiques**

Toutes les audiences, quelle que soit leur origine, sont accessibles pour un ciblage en temps réel. Toutefois, les audiences partagées à partir d’Analytics vers Audience Manager ne sont pas accessibles pour le ciblage en temps réel. Le système évalue les audiences de deux manières :

* Les audiences historiques d’Analytics sont évaluées toutes les quatre heures. Le temps total de traitement et de partage peut prendre jusqu’à huit heures. Les audiences historiques incluent toujours les visiteurs récurrents.
* Les audiences en temps réel proviennent d’audiences Experience Cloud et sont évaluées en temps réel.

## Utilisation des audiences par les applications {#concept_01EB9345C5344597BC94A864EDD38EE1}

Le tableau suivant décrit lʼutilisation des audiences dans les applications Experience Cloud :

| Solution | Description |
|--- |--- |
| Audiences Experience Cloud | Créer, gérer et partager des audiences en mode natif à l’aide d’ [[!DNL Audience Library]](audience-library.md). Vous pouvez :<ul><li>utiliser des audiences en temps réel à l’aide d’attributs Analytics bruts.</li><li>combiner des audiences pour en créer des composites, en associant les données en temps réel aux données historiques.</li><li>afficher des vues graphiques de la taille estimée des audiences.</li></ul><br>Pour obtenir des suggestions sur le type d’audience à créer, voir [Options de création d’audience](https://experienceleague.adobe.com/docs/experience-cloud-kcs/kbarticles/KA-16471.html?lang=fr). |
| Analytics | Dans la segmentation, vous pouvez créer un segment, le combiner avec une suite de rapports, puis publier le segment dans l’Experience Cloud. La publication du segment l’affiche sur la [!DNL Audience Library] page en Experience Cloud. (Voir [Publication de segments sur l’Experience Cloud](https://experienceleague.adobe.com/docs/analytics/components/segmentation/segmentation-workflow/seg-publish.html?lang=fr) dans [!DNL Analytics] aide pour plus de détails.) L’audience est également disponible en tant qu’audience ciblée pour une expérience de campagne diffusée par [!DNL Adobe Target], et dans [!DNL Audience Manager]. Après avoir partagé une audience à partir de [!DNL Adobe Analytics], puis sélectionnez-le pour l’utiliser dans une campagne active. Les profils des visiteurs qui répondent aux critères de définition du segment pour les 90 derniers jours sont envoyés à [!UICONTROL Services d’audience]. La limite pour les audiences partagées a été portée à 75. Audiences partagées avec l’Experience Cloud depuis [!DNL Analytics] ne peut pas dépasser 20 millions de membres uniques. En outre, en raison de la mise en cache, les suites de rapports supprimées dans Analytics nécessitent 12 heures avant que la suppression ne s’affiche dans Experience Cloud. |
| Mobile Services | Analysez le trafic mobile à l’aide de la visualisation radiale dans le rapport [!UICONTROL Types d’appareils]. |
| [!DNL Target] | Le [service dʼID](https://experienceleague.adobe.com/docs/id-service/using/home.html?lang=fr) regroupe les ID de visiteur et les données dans un profil exploitable unique pouvant être utilisé dans plusieurs applications différentes. Le [Publier vers l’Experience Cloud](audience-library.md) La case à cocher qui apparaît lors du processus de création de segment dans Adobe Analytics permet au segment d’être disponible dans la bibliothèque d’audiences personnalisées d’Adobe Target. Un segment créé dans [!DNL Analytics] ou [!DNL Audience Manager] peut être utilisé pour des activités dans [!DNL Target]. Vous pouvez par exemple créer des activités de campagne d’après les mesures de conversion d’[!DNL Analytics] et les segments d’audience créés dans [!DNL Analytics]. |
| [!DNL Audience Manager] | Les audiences partagées sont disponibles dans [!DNL Audience Manager] segmentation. Toutes les audiences Experience Cloud sont disponibles en mode natif dans [!DNL Audience Manager], qui fournit les éléments suivants :<ul><li>Automatisation intégrée relative à la façon dont elles sont partagées et consommées dans les workflows dʼapplication.</li><li>Destinations hors site</li><li>Modélisation analogue</li></ul> |
| Campaign | <ul><li>Importation des audiences partagées de différentes applications Adobe Experience Cloud dans Adobe Campaign.</li><li>Exportation des listes de destinataires sous la forme dʼaudiences partagées. Ces audiences partagées peuvent être utilisées dans les différentes applications Adobe Experience Cloud que vous utilisez.</li></ul> |
| Advertising Cloud | Utilisez l’audience comme cibles. |

{style="table-layout:auto"}

>[!IMPORTANT]
>
>Une fois qu’un visiteur se qualifie pour l’audience partagée depuis Analytics, un délai de 4 à 8 heures est nécessaire avant que les informations soient exploitables dans [!DNL Target], Ad Cloud et Campaign Standard.

## Plus d’aide : questions, conseils et cas d’utilisation {#section_C7F151644D8A45F7B6FC54F58845635D}

| Aide avec | Ressource |
|--- |--- |
| Audiences introuvables ? | Vérifiez que des privilèges d’accès vous ont été attribués. Voir [Prise en main - Activation de vos applications pour les services principaux](core-services.md).<br>Dirigez-vous [ici](https://adobe.allegiancetech.com/cgi-bin/qwebcorporate.dll?idx=X8SVES) pour demander lʼaccès au service principal Profils et audiences (formulaire de configuration des intégrations). |
| Forum | Le [forum des Audiences](https://experienceleaguecommunities.adobe.com/t5/Adobe-Experience-Cloud-Audiences/ct-p/experience-cloud-audiences-community) offre une ressource supplémentaire pour obtenir de l’aide au sujet des audiences. |

{style="table-layout:auto"}

## Éléments de l’interface de la bibliothèque d’audiences {#section_D04ACEF61CEF4B189AE6BA9F40D0DBF4}

[!DNL Experience Cloud] fournit une bibliothèque pour la création et la gestion des audiences, avec une identification d’audience native en temps réel.

**[!UICONTROL Experience Cloud]** > **[!UICONTROL Experience Platform]** > **[!UICONTROL Personnes]** > **[!UICONTROL Bibliothèque d’audiences]**

![Ajout dʼune audience dans la bibliothèque dʼaudiences](assets/audience_library.png)

| Élément | Description |
|--- |--- |
| Nouveau | [Création d’une audience](audience-library.md). |
| Titre et description | En-tête de colonne qui identifie et décrit l’audience. |
| Auteur | Personne qui a créé le segment d’audience. |
| Source | Identifie l’emplacement où l’audience a été créée.<ul><li>**Analytics :** un segment créé dans Adobe Analytics, puis [publié sur l’Experience Cloud](audience-library.md).</li><li>**Experience Cloud :** nouvelle audience [créée dans la page Audiences Experience Cloud](audience-library.md).</li><li>**AUDIENCE MANAGER :** L’Audience Manager Audiences créées s’affiche automatiquement dans les audiences Experience Cloud.</li></ul> |
| Taille actuelle | Taille actuelle de l’audience. |
| Actif | État actif du segment. |

{style="table-layout:auto"}
