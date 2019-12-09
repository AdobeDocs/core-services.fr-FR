---
description: Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.
keywords: core services
seo-description: Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.
seo-title: Publication d’un segment d’audience Analytics
solution: Experience Cloud
title: Publication d’un segment d’audience Analytics
uuid: 4201dc22-4b79-457c-a614-949bba087617
translation-type: tm+mt
source-git-commit: ae97db27349940a8df7ee2ba6678683f57585678

---


# Publication d’un segment d’audience Analytics

Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.

1. Dans Analytics, [créez un segment](https://docs.adobe.com/content/help/en/analytics/components/segmentation/segmentation-workflow/seg-build.html).
1. Dans le Créateur de segments, activez l’option **[!UICONTROL Publier ce segment dans Experience Cloud]**.

   ![](assets/ec_audience_example.png)

   | Élément | Description |
   |--- |---|
   | Publier ce segment dans Experience Cloud (pour &lt;nom de la suite de rapports&gt;) | Publie ce segment dans Experience Cloud. Vous pouvez utiliser l’audience pour des activités de marketing et de segmentation dans Adobe Target, Audience Manager, Advertising Cloud, Campaign et Audience Analytics.<br>Pour que le segment soit publié, les champs Titre et Description doivent être renseignés.<br>Lorsque cette option est cochée, le titre et la définition de segment de l’audience sont partagés, mais pas les données. Lorsqu’une audience est associée à une activité dans Target, Analytics commence à envoyer les identifiants des visiteurs à inclure dans cette audience Experience Cloud et Target. À ce stade, le nom de l’audience et les données correspondantes commencent à s’afficher sur la page Audiences d’Experience Cloud.<br>Les audiences partagées avec Experience Cloud depuis Analytics ne doivent pas dépasser 20 millions de membres.<br>En raison de la mise en cache, les suites de rapports supprimées dans Analytics ne disparaîtront pas d’Experience Cloud avant 12 heures.<br>Pour supprimer un segment qui a été publié dans Experience Cloud, vous devez tout d’abord en annuler la publication. Pour annuler la publication d’un segment, il vous suffit **de désactiver la case à cocher** que vous avez cochée pour le publier. Vous **ne pouvez pas** annuler la publication d’un segment qui est actuellement utilisé par l’une des solutions Adobe suivantes : [!DNL Analytics] (dans [!DNL Audience Analytics]), [!DNL Campaign], [!DNL Advertising Cloud] (pour les utilisateurs de [!DNL Core Service] et d’[!DNL Audience Manager]) et tous les autres partenaires externes (pour les utilisateurs de [!DNL Audience Manager]). Vous **pouvez** annuler la publication d’un segment utilisé par [!DNL Target].<br>Une fois qu’un visiteur se qualifie pour l’audience partagée depuis Analytics, un délai de 24 à 48 heures est nécessaire avant que les informations soient exploitables dans Target, Advertising Cloud et Campaign.<br>**Confidentialité des données**<br>Les audiences ne sont pas filtrées d’après l’état d’authentification d’un visiteur. Si un visiteur peut parcourir votre site qu’il soit authentifié ou non, les actions qui se produisent lorsqu’il n’est pas authentifié peuvent avoir pour conséquence que le visiteur est inclus dans une audience. Revoyez la [présentation de la politique de confidentialité d’Analytics](https://docs.adobe.com/help/en/analytics/technotes/privacy-overview.html) pour bien comprendre toutes les implications du partage des audiences en matière de confidentialité. |
   | Sélectionner l’intervalle de création des audiences | Notez qu’il s’agit d’un **intervalle** aléatoire et non fixe. |

1. Cliquez sur **[!UICONTROL Enregistrer]**.
1. Accédez à [!DNL Adobe Target], cliquez sur [!UICONTROL Audiences].
1. Sur la page [!UICONTROL Audiences], recherchez l’audience provenant d’Experience Cloud.

   Ces audiences peuvent être utilisées dans des activités.
