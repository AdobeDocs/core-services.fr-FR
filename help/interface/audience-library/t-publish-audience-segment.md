---
description: Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.
keywords: services principaux
seo-description: Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.
seo-title: Publication d’un segment d’audience Analytics
solution: Experience Cloud
title: Publication d’un segment d’audience Analytics
uuid: 4201 dc 22-4 b 79-457 c-a 614-949 bba 087617
translation-type: tm+mt
source-git-commit: 85879d92104d8b6d739fb4d17dc8cfb7483a9343

---


# Publication d’un segment d’audience Analytics

Publiez un segment d’audience Analytics dans Experience Cloud et dans Adobe Target pour les activités de marketing liées aux audiences.

1. Dans Analytics, [créez un segment](https://marketing.adobe.com/resources/help/en_US/analytics/segment/seg_build.html).
1. Dans le Créateur de segments, activez l&#39;option **[!UICONTROL d&#39;audience]** Make This an Experience Cloud.

   ![](assets/ec_audience_example.png)

   | Élément | Description |
   |--- |---|
   | Faire de ceci une audience Experience Cloud (pour &lt;nom de la suite de rapports&gt;) | Publie ce segment dans Experience Cloud. Vous pouvez utiliser l’audience pour vos activités marketing dans Adobe Target et pour la segmentation dans Audience Manager.<br>Pour que le segment soit publié, les champs Titre et Description doivent être renseignés.<br>Lorsque cette option est cochée, le titre et la définition de segment de l’audience sont partagés, mais pas les données. Lorsqu’une audience est associée à une activité dans Target, Analytics commence à envoyer les identifiants des visiteurs à inclure dans cette audience Experience Cloud et Target. À ce stade, le nom de l’audience et les données correspondantes commencent à s’afficher sur la page Audiences d’Experience Cloud.<br>Les audiences partagées au cloud d&#39;expérience d&#39;Analytics ne peuvent pas dépasser 20 millions de membres du public.<br>En raison de la mise en cache, les suites de rapports supprimées dans Analytics nécessitent 12 heures avant que la suppression ne s&#39;affiche dans Experience Cloud.<br>Dans Analytics, vous pouvez modifier ou supprimer un segment publié. Si le segment est en cours d’utilisation, un message d’avertissement s’affiche lorsque vous le modifiez. Vous ne pouvez pas supprimer un segment publié en cours d’utilisation par Adobe Target.<br>Une fois qu&#39;un visiteur est admissible pour l&#39;audience partagée à partir d&#39;Analytics, il y a un délai de 24 à 48 heures avant que ces informations ne puissent être exploitées dans Target, dans le cloud de publication et dans la campagne.<br>**Les privacyaudiences privprivées**<br>ne sont pas filtrées en fonction de l&#39;état d&#39;authentification d&#39;un visiteur. Si un visiteur peut parcourir votre site qu’il soit authentifié ou non, les actions qui se produisent lorsqu’il n’est pas authentifié peuvent avoir pour conséquence que le visiteur est inclus dans une audience. Revoyez la [présentation de la politique de confidentialité d’Analytics](https://marketing.adobe.com/resources/help/en_US/reference/?f=c_Privacy_Overview) pour bien comprendre toutes les implications du partage des audiences en matière de confidentialité. |
   | Sélectionner l’intervalle de création des audiences | Notez qu’il s’agit d’un **intervalle** aléatoire et non fixe. |

1. Cliquez sur **[!UICONTROL Enregistrer]**.
1. Accès [!DNL Adobe Target], cliquez [!UICONTROL sur Audiences].
1. Sur la page [!UICONTROL Audiences] , localisez l&#39;audience provenant de Experience Cloud.

   Ces audiences peuvent être utilisées dans des activités.
