---
description: Découvrez le flux de travail de haut niveau de la gestion des offres, notamment l’emplacement et la création d’offres, l’insertion d’activités d’offres et l’affichage de rapports.
seo-description: Découvrez le flux de travail de haut niveau de la gestion des offres, notamment l’emplacement et la création d’offres, l’insertion d’activités d’offres et l’affichage de rapports.
seo-title: Processus de gestion des offres
title: Processus de gestion des offres
uuid: c95ec474-88de-4e6e-92bf-f49f3a7b32c5
index: y
internal: n
snippet: y
translation-type: tm+mt
source-git-commit: 2f0c2eb70313c42da9e7ac1d75429ec768dea10d

---


# Processus de gestion des offres{#offer-management-workflow}

Découvrez le flux de travail de haut niveau de la gestion [!UICONTROL des]offres, y compris l’emplacement et la création d’offres, l’insertion d’activités d’offres et l’affichage de rapports.

## Étape 1 - Déterminer où dans vos modèles de courrier électronique vous avez besoin d’offres personnalisées {#section_F184E589428B403EA8EB921BF230CF87}

Identifiez les campagnes par courrier électronique dans lesquelles vous souhaitez insérer des offres personnalisées. A partir de là, déterminez les emplacements dans votre modèle de courrier électronique pour insérer ces offres. Par exemple, vous pouvez modifier l’offre de produit en fonction du secteur ou de la personne du client, modifier le message en fonction des mêmes critères et modifier l’image en fonction de la géographie du client.

![](assets/workflow1.png)

## Étape 2 - Déterminer les attributs de la campagne que vous souhaitez cibler et les partager avec la gestion des offres {#section_1461F1FAC0B943E5BBDED6B3B00E9D5C}

Lors de la création d’une offre dans la gestion des [!UICONTROL offres], vous pouvez définir des règles d’éligibilité qui limitent les profils susceptibles de recevoir certaines offres. Ces règles d’éligibilité peuvent être définies en fonction d’attributs (ou de champs) existant dans Adobe Campaign. Ces champs doivent être partagés à partir de Campaign par un utilisateur de niveau administrateur avant qu’ils ne s’affichent dans le créateur de règles d’éligibilité de la gestion des [!UICONTROL offres] .

Pour plus d’informations sur le partage de ces attributs, voir [Partage d’attributs d’une campagne vers la gestion](campaign.md#task_4DFA9A20D7B04E1F9AFF4774D67B6EBC)des offres.

## Étape 3 - Saisir les emplacements requis dans la gestion des  offres {#section_71619756A86F4DB58B8200D8A1CE1B87}

Un emplacement permet de s’assurer que le contenu de l’offre approprié s’affiche au bon endroit dans votre modèle de courrier électronique. Lorsque vous ajoutez du contenu à une offre, vous serez invité à sélectionner un emplacement dans lequel ce contenu peut être affiché.

Vous pouvez avoir plusieurs emplacements avec le même emplacement. Dans l’exemple suivant, il existe deux emplacements pour deux images de taille différente et un emplacement unique pour le texte qui s’affiche en haut et en bas du modèle.

Après avoir déterminé les emplacements dont vous avez besoin, vous pouvez les ajouter à l’onglet [!UICONTROL Emplacement] .

![](assets/workflow2.png)

## Etape 4 - Création des offres {#section_C4F9732B0596425EB0BD5AE76E4BA6EF}

Créez les offres que vous utiliserez dans votre campagne par courrier électronique. Il existe des données et du contenu qui peuvent être ajoutés à l’offre afin de déterminer la meilleure offre à diffuser et le contenu à afficher. Lorsque vous créez une représentation de contenu, associez-la à l’un des emplacements définis dans [Emplacements](placements.md). Une fois que vous avez créé et envoyé une offre, elle peut être utilisée dans une activité d’offre.

![](assets/workflow3.png)

## Etape 5 - Créez votre campagne par courrier électronique et insérez une activité d’offre {#section_6FD36404759B4C6E9FD3A65ACABB26C8}

Maintenant que vous avez créé vos offres, vous pouvez les utiliser dans une campagne par courrier électronique. Dans l’éditeur de contenu, vous pouvez sélectionner un bloc et insérer une activité d’offre. Une activité d’offre vous permet de sélectionner un groupe d’offres dans votre inventaire d’offres, à partir duquel le moteur de décision déterminera la meilleure offre à fournir à chaque utilisateur.

![](assets/workflow4.png)

## Etape 6 - Préparation et envoi de votre campagne par courrier électronique {#section_EDD8EA4696664130A678D7C4483DA806}

Désormais, lorsque vous préparez votre campagne par courrier électronique, la gestion des [!UICONTROL offres] détermine la meilleure offre à proposer à chaque visiteur en fonction de la date actuelle, des attributs de profil et de la priorité. Il détermine également si une représentation du contenu est disponible pour l’emplacement de cet emplacement.

Dans l’exemple suivant, supposons que vous ayez configuré une campagne par courrier électronique avec une activité d’offre contenant 3 offres (A, B, C). Vous pouvez déterminer l’offre à diffuser dans l’un des emplacements de notre courrier électronique. Au moment de la préparation, la gestion des [!UICONTROL offres] :

1. Analyser la date actuelle, les données de profil de chaque utilisateur et la priorité.
1. Comparez ces informations aux données des offres.
1. Déterminez la meilleure offre à proposer.

![](assets/workflow5.png)

## Etape 7 - Affichage des rapports {#section_2104BAACAE154DE29B6EEB967C46F226}

Vous pouvez afficher un rapport sur les offres diffusées et sur la manière dont elles se sont comportées dans une activité d’offre. Pour afficher ce rapport, sélectionnez l’onglet Rapports dans la page d’accueil d’Adobe Campaign Standard.
