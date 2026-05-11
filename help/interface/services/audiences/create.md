---
title: Création d’une audience dans la bibliothèque d’audiences
description: Découvrez comment utiliser les règles d’attribut pour créer une audience partageable dans la bibliothèque d’audiences. Découvrez comment configurer une règle et définir une audience composite.
solution: Experience Cloud
uuid: 7e622539-296e-4ff3-93b0-ec1c08b35429
feature: Audience Library
topic: Administration
role: Admin
level: Experienced
exl-id: b65a12f5-fa89-400a-b279-13c381cd6c22
TQID: 'https://experienceleague.adobe.com/-zJW08nRR0XHxI8ink2lZt-R44irL2pMyWdqHsZQoUg'
product_v2: id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
feature_v2: id: fdbb8fc9-ffa3-4b86-88fe-aa4c5a3e1bc6
subfeature_v2: id:id:
role_v2: id:
topic_v2: id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87cid: bce87dde-a4ab-44c9-8a18-ad66e4ddb377id: d3cdead0-685a-4489-9250-4bb709942f66id: e1e0219c-f879-479f-8427-888ed2a6e9c2id: eddd9b14-83bd-4ff4-9072-54a4a484abb7
source-git-commit: f01d85af42b8f2c27dbada8f73546bc6fe4bf710
workflow-type: tm+mt
source-wordcount: 515
ht-degree: 60%

---

# Créer une audience

Dans [!UICONTROL Audience Library], vous pouvez utiliser des règles d’attribut pour créer une audience et définir une audience composite pour le partage dans les applications d’entreprise CX.

Cet article vous aidera à accomplir ce qui suit :

* Création d’une audience
* Création d’une règle
* Utilisation de règles pour définir une audience composite

Le graphique suivant représente deux règles dans une audience composite.

![Deux règles dans une audience composite](assets/audience_sharing.png)

Chaque cercle représente une règle qui définit l’appartenance à une audience. Les visiteurs qui remplissent les conditions requises pour devenir membres dans les deux règles d’audience se chevauchent pour devenir l’audience composite définie.

>[!NOTE]
>
>L’audience est entièrement définie une fois la collecte des données terminée pour la période spécifiée.

L’exemple suivant explique comment créer des règles pour une audience composite. L’audience se compose comme suit :

* Section Maison et jardin dérivée des données de page ou des données d’analyse brutes.
* Utilisateurs de Chrome et de Safari dérivés d’un segment [!DNL Adobe Analytics] [publié](overview.md) dans [!DNL CX Enterprise].

  ![Création de règles pour une audience composite](assets/audience_create.png)

**Création d’une audience**

1. Cliquez sur [!DNL CX Enterprise] applications (![Icône Applications](assets/apps-icon.png)), puis sur **[!UICONTROL People]** > **[!UICONTROL Audience Library].**

1. Sur la page [!UICONTROL Audiences], cliquez sur **[!UICONTROL New]**. ![ Nouvelle audience ](assets/add_icon_small.png)

   ![Création d’une audience](assets/audience_create_new.png)

1. Sur la page [!UICONTROL Create New Audience], renseignez les champs **[!UICONTROL Title]** et **[!UICONTROL Description]** .
1. Sous [!UICONTROL Rules], sélectionnez une suite de rapports de référence, puis une source d’attributs :

   * **[!UICONTROL Real-Time Analytics Data:]** (ou données brutes) Il s’agit de données d’attribut provenant de demandes d’images Real-Time Analytics. Elle comprend des eVars et des événements. Lorsque vous utilisez cette source d’attribut, vous devez sélectionner une suite de rapports et définir la dimension ou l’événement à inclure. Cette sélection de suite de rapports fournit la structure de variable utilisée par la suite de rapports.

     >[!NOTE]
     >
     >En raison de la mise en cache, les suites de rapports supprimées dans Analytics nécessitent 12 heures avant que la suppression ne s’affiche dans CX Enterprise.

   * **[!UICONTROL CX Enterprise:]** des données d’attributs provenant de sources [!DNL CX Enterprise]. Il peut, par exemple, s’agir de données de segments d’audience que vous créez dans [!DNL Analytics], ou de données d’[!DNL Audience Manager].

1. Définissez les règles d’audience, puis cliquez sur **[!UICONTROL Save].**

**Exemple : définition de règles pour une audience composite**

>[!NOTE]
>
>Lorsque vous définissez des règles d’audience, vous devez maîtriser le fonctionnement de vos variables de mise en œuvre.

Sous [!UICONTROL Rules], définissez les sélections d’attributs *`Home & Garden`* :

* **[!UICONTROL Attribute Source:]** les données brutes d’analyse
* Suite de rapports **[!UICONTROL Report Suite:]** 31
* DIMENSION = **[!UICONTROL Store (Merch) (v6)]** > **[!UICONTROL Equals]** > **[!UICONTROL Home & Garden]**

![Sélections dʼattributs dans la bibliothèque dʼaudiences](assets/home_garden.png)

Les visiteurs *Chrome et Safari* sont un segment d’audience partagé à partir d’Analytics :

* **[!UICONTROL Attribute Source:]** CX Entreprise
* Visiteurs **[!UICONTROL Dimension:]** Chrome et Safari

![Visiteurs Chrome et Safari](assets/chrome_safari.png)

Pour effectuer une comparaison, vous pouvez ajouter une règle *OU* pour afficher tous les visiteurs dʼune section du site telle que Patio et meubles.

![Règle OU dʼune audience](assets/audiences_rule_patio.png)

La règle obtenue est une audience définie composée des utilisateurs Chrome et Safari ayant visité Maison et jardin. Le segment Patio et meubles fournit des informations supplémentaires sur tous les visiteurs qui visitent cette section du site.

![Audience définie dans CX Enterprise](assets/defined_audience.png)

* **Historique (estimation) :** (cercle en pointillé) représente les règles créées en fonction des données [!DNL Analytics].
* **Audience réelle :** (cercle plein) règle créée qui possède 30 jours de données d’Audience Manager. Lorsque les données d’Audience Manager atteignent 30 jours, la ligne devient pleine et représente les chiffres réels.

Une fois la collecte des données terminée pour la période spécifiée, les cercles se combinent pour afficher une audience définie.

Une fois l’audience enregistrée, elle est disponible pour d’autres applications d’entreprise CX. Par exemple, vous pouvez inclure une audience partagée dans une [activité](https://experienceleague.adobe.com/en/docs/target/using/activities/activities) Adobe Target.
