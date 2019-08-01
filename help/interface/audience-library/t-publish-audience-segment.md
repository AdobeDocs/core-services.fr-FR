---
description: Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.
keywords: services principaux
seo-description: Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.
seo-title: Publication d’un segment d’audience Analytics
solution: Experience Cloud
title: Publication d’un segment d’audience Analytics
uuid: 4201dc22-4b79-457c-a614-949bba087617
translation-type: tm+mt
source-git-commit: b74e0a08b43dfa8e5b35c5a650d159a58485883c

---


# Publication d’un segment d’audience Analytics

Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.

1. Dans Analytics, [créez un segment](https://marketing.adobe.com/resources/help/en_US/analytics/segment/seg_build.html).
1. On the Segment Builder, enable the **[!UICONTROL Publish this segment to the Experience Cloud]** option.

   ![](assets/ec_audience_example.png)

   | Élément | Description |
   |--- |---|
   | Publiez ce segment dans Experience Cloud (pour &lt; nom de suite de rapports &gt;). | Publie ce segment dans Experience Cloud. Vous pouvez utiliser l'audience pour les activités de marketing et de segmentation dans Adobe Target, Audience Manager, de publication Cloud, Campaign et Audience Analytics.<br>Pour que le segment soit publié, les champs Titre et Description doivent être renseignés.<br>Lorsque cette option est cochée, le titre et la définition de segment de l’audience sont partagés, mais pas les données. Lorsqu’une audience est associée à une activité dans Target, Analytics commence à envoyer les identifiants des visiteurs à inclure dans cette audience Experience Cloud et Target. À ce stade, le nom de l’audience et les données correspondantes commencent à s’afficher sur la page Audiences d’Experience Cloud.<br>Les audiences partagées avec Experience Cloud depuis Analytics ne doivent pas dépasser 20 millions de membres.<br>En raison de la mise en cache, les suites de rapports supprimées dans Analytics ne disparaîtront pas d’Experience Cloud avant 12 heures.<br>Pour supprimer un segment qui a été publié dans Experience Cloud, vous devez d'abord le dépublier. To unpublish a segment, just **unclick** the checkbox that you used to publish it. You **cannot** unpublish a segment that is currently in use by any of the following Adobe solutions: [!DNL Analytics] (in [!DNL Audience Analytics]), [!DNL Campaign], [!DNL Advertising Cloud] (for [!DNL Core Service] &amp; [!DNL Audience Manager] customers) and all other external partners (for [!DNL Audience Manager] customers). You **can** unpublish a segment that is in use by [!DNL Target].<br>Une fois qu’un visiteur se qualifie pour l’audience partagée depuis Analytics, un délai de 24 à 48 heures est nécessaire avant que les informations soient exploitables dans Target, Advertising Cloud et Campaign.<br>**Confidentialité des données**<br>Les audiences ne sont pas filtrées d’après l’état d’authentification d’un visiteur. Si un visiteur peut parcourir votre site qu’il soit authentifié ou non, les actions qui se produisent lorsqu’il n’est pas authentifié peuvent avoir pour conséquence que le visiteur est inclus dans une audience. Revoyez la [présentation de la politique de confidentialité d’Analytics](https://marketing.adobe.com/resources/help/en_US/reference/?f=c_Privacy_Overview) pour bien comprendre toutes les implications du partage des audiences en matière de confidentialité. |
   | Sélectionner l’intervalle de création des audiences | Notez qu’il s’agit d’un **intervalle** aléatoire et non fixe. |

1. Cliquez sur **[!UICONTROL Enregistrer]**.
1. Accédez à [!DNL Adobe Target], cliquez sur [!UICONTROL Audiences].
1. Sur la page [!UICONTROL Audiences], recherchez l’audience provenant d’Experience Cloud.

   Ces audiences peuvent être utilisées dans des activités.
