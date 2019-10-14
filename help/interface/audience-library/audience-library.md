---
description: Gérez la traduction des données du visiteur en segmentation de l’audience.
seo-description: Gérez la traduction des données du visiteur en segmentation de l’audience.
seo-title: Audiences
solution: Experience Cloud
title: Audiences
uuid: 92faf3a8-1375-4e32-905b-74cad48144d3
translation-type: tm+mt
source-git-commit: d304e625bd2125854d9ed932674522284995e030

---


# Audiences {#topic_679810123CAA4E0CA4FA3417FB0100C7}

Les audiences sont des collections de visiteurs (une liste d’identifiants visiteur). Les services d’audience d’Adobe gèrent la conversion des données de visiteur en segmentation de l’audience. Ainsi, la création et la gestion des audiences sont similaires à la création et à l’utilisation de segments, avec la possibilité de partager les segments d’audience dans [!DNL Experience Cloud].

![](assets/audiences.png)

Les audiences peuvent être créées ou dérivées à partir de diverses sources, par exemple :

* Nouvelles audiences créées dans [!DNL Experience Cloud]
* Segments [!DNL Analytics] publiés dans [!DNL Experience Cloud]
* De [!DNL Audience Manager]

**Audiences en temps réel et historiques**

Toutes les audiences, quelle que soit leur origine, sont accessibles pour un ciblage en temps réel. Toutefois, les audiences partagées à partir d’Analytics vers Audience Manager ne sont pas accessibles pour le ciblage en temps réel. Le système les évalue de deux façons :

* Les audiences historiques dérivant des analyses sont évaluées toutes les 12 heures. Elles comprennent toujours les visiteurs récurrents.
* Les audiences en temps réel sont issues des audiences Experience Cloud et évaluées en temps réel.

## Utilisation des audiences par les solutions {#concept_01EB9345C5344597BC94A864EDD38EE1}

Le tableau suivant décrit l’utilisation des audiences par les solutions Experience Cloud :

| Solution | Description |
|--- |--- |
| Audiences Experience Cloud | Créez, gérez et partagez des audiences de manière native à l’aide de l’interface [Bibliothèque d’audiences](../audience-library/audience-library.md). Vous pouvez effectuer les opérations suivantes :<ul><li>utiliser des audiences en temps réel à l’aide d’attributs Analytics bruts ;</li><li>combiner des audiences pour en créer des composites, en associant les données en temps réel aux données historiques ;</li><li>afficher des vues graphiques de la taille estimée des audiences.</li></ul><br>Pour obtenir des suggestions sur le type d’audience que vous souhaitez créer, consultez la section [Audiences Experience Cloud](https://helpx.adobe.com/marketing-cloud-core/kb/People/Audience-Creation-Options.html). |
| Analytics | Dans la segmentation, vous pouvez créer un segment, le combiner avec une suite de rapports, puis le [publier dans Experience Cloud](../audience-library/audience-library.md). La publication du segment l’affiche sur la page [Audiences](../audience-library/audience-library.md). L’audience est également disponible en tant qu’audience ciblée pour un contenu de campagne fourni par Adobe Target et dans Audience Manager.   Une fois qu’une audience est partagée à partir d’Analytics et sélectionnée en vue d’être utilisée dans une campagne active, tous les profils du visiteur répondant aux critères de définition du segment pour les 90 derniers jours sont envoyés à la plateforme des services d’audience Experience Cloud.   Important : Vous devez limiter à 20 le nombre d’audiences partagées depuis Analytics pour éviter des retards de traitement supplémentaires. Les audiences partagées avec Experience Cloud depuis Analytics ne doivent pas dépasser 20 millions de membres. En outre, en raison de la mise en cache, les suites de rapports supprimées dans Analytics ne disparaîtront pas d’Experience Cloud avant 12 heures. |
| Mobile Services | Analysez le trafic mobile à l’aide de la visualisation du rapport sur les [!UICONTROL types de périphériques]. |
| Target | Le [service d’identification](https://docs.adobe.com/content/help/en/id-service/using/home.html) unifie les identifiants et les données du visiteur dans un profil unique pouvant être utilisé à l’échelle de toutes les solutions. La fonction [Publier dans Experience Cloud](../audience-library/audience-library.md), qui s’affiche pendant le processus de création d’un segment dans Adobe Analytics, rend le segment disponible dans la bibliothèque d’audiences personnalisées d’Adobe Target. Un segment créé dans Analytics ou dans Audience Manager peut être utilisé pour des activités dans Target.  Vous pouvez par exemple créer des activités de campagne d’après les mesures de conversion d’Analytics et les segments d’audience créés dans Analytics. |
| Audience Manager | Les audiences partagées sont disponibles dans la segmentation Audience Manager. Toutes les audiences Experience Cloud sont disponibles de manière native dans Audience Manager, qui permet ce qui suit :<ul><li>Automatisation intégrée relative à la façon dont elles sont partagées et consommées dans les processus de solution</li><li>Destinations hors site</li><li>Modélisation analogue</li></ul> |
| Campaign | <ul><li>Importer les audiences partagées de différentes solutions Adobe Experience Cloud dans Adobe Campaign.</li><li>Exporter les listes de destinataires sous la forme d’audiences partagées. Ces audiences partagées peuvent être utilisées dans les différentes solutions Adobe Experience Cloud que vous utilisez.</li></ul> |
| Media Optimizer | Utilisez l’audience comme cibles. |

>[!IMPORTANT]
>
>Une fois qu’un visiteur se qualifie pour l’audience partagée depuis Analytics, un délai de 24 à 48 heures est nécessaire avant que les informations soient exploitables dans Target, Media Optimizer et Campaign.

## Plus d’aide : questions, conseils et cas d’utilisation {#section_C7F151644D8A45F7B6FC54F58845635D}

| Aide pour | Ressource |
|--- |--- |
| Vous ne trouvez pas Audiences ? | Vérifiez que des privilèges d’accès vous ont été attribués. Voir [Prise en main - Activation de vos solutions pour les services principaux](../core-services/core-services.md).<br>Cliquez [ici](https://www.adobe.com/go/audiences) pour demander l’accès au service principal Profils et audiences (formulaire de configuration des intégrations). |
| Cas d’utilisation | Pour plus de conseils sur la solution à utiliser, accédez à [Options de création d’audiences](https://helpx.adobe.com/marketing-cloud-core/kb/People/Audience-Creation-Options.html) dans la base de connaissances. |
| Forum | Le [forum Audiences](https://forums.adobe.com/community/experience-cloud/platform/core-services/people-service/audiences) constitue une autre ressource d’aide pour les audiences. |

## Éléments de l’interface de la bibliothèque d’audiences {#section_D04ACEF61CEF4B189AE6BA9F40D0DBF4}

[!DNL Experience Cloud] fournit une bibliothèque pour la création et la gestion des audiences, avec une identification d’audience native en temps réel.

**[!UICONTROL Experience Cloud]** &gt; **[!UICONTROL Experience Platform]** &gt; **[!UICONTROL Personnes]** &gt; **[!UICONTROL Bibliothèque d’audiences]**

![](assets/audience_library.png)

| Élément | Description |
|--- |--- |
| Nouveau | [Création d’une audience](../audience-library/audience-library.md). |
| Titre et description | En-tête de colonne qui identifie et décrit l’audience. |
| Auteur | Personne ayant créé le segment d’audience. |
| Source | Permet d’identifier l’emplacement de création de l’audience.<ul><li>**Analytics :** segment créé dans reports &amp; analytics ou ad hoc analysis, puis [publié dans Experience Cloud](../audience-library/audience-library.md).</li><li>**Experience Cloud :** nouvelle audience [créée dans la page Audiences Experience Cloud](../audience-library/audience-library.md).</li><li>**Audience Manager :** les audiences créées par Audience Manager s’affichent automatiquement dans la page Audiences Experience Cloud.</li></ul> |
| Taille actuelle | Taille actuelle de l’audience. |
| Actif | État actif du segment. |
