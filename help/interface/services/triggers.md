---
description: Découvrez comment configurer les Triggers Experience Cloud.
solution: Experience Cloud
title: Présentation de Triggers
uuid: dab536e3-1969-4661-919e-5b15f423fecd
feature: Admin Console
topic: Administration
role: Admin
level: Experienced
exl-id: 9dc26e2f-479b-49a5-93ce-b877559fea43
source-git-commit: 0de22f02b4063a54d0b09b6abc1aa16221f42f4b
workflow-type: tm+mt
source-wordcount: '675'
ht-degree: 93%

---

# Experience Cloud Triggers

[!UICONTROL Triggers] d’Experience Cloud vous permet d’identifier, définir et surveiller les comportements clés des consommateurs et consommatrices, puis de générer une communication entre applications destinée à réengager les visiteurs et visiteuses. Vous pouvez utiliser des déclencheurs pour la personnalisation et les décisions en temps réel.

Par exemple :

* Configurez un remarketing rapide pour les abandons de panier ou les abandons de panier sans suppression de produits
* Formulaires et demandes incomplets
* Actions ou séquence d’actions sur site

![Exemple de déclencheur](../assets/trigger-abandonment-2.png)

>[!NOTE]
>
>Retrouvez plus d’informations sur l’utilisation de [!UICONTROL Triggers] dans [Campaign Standard](https://experienceleague.adobe.com/docs/campaign-standard/using/integrating-with-adobe-cloud/working-with-campaign-and-triggers/using-triggers-in-campaign.html?lang=fr).

## Types de déclencheurs

En règle générale, un déclencheur peut prendre 15 à 90 minutes pour lancer une campagne marketing. Ce délai varie en fonction de l’implémentation de la collecte de données, de la charge sur le pipeline, de la configuration personnalisée du déclencheur défini et du workflow dans Adobe Campaign.

* **Abandon :** vous pouvez créer un trigger qui se déclenche lorsqu’un visiteur consulte un produit mais ne l’ajoute pas au panier.
* **Action :** vous pouvez créer des triggers, par exemple, pour qu’ils se déclenchent après des inscriptions à une newsletter, des abonnements par e-mail ou des demandes de cartes de crédit (confirmations). Si vous êtes un détaillant, vous pouvez créer un déclencheur pour un visiteur qui s’inscrit à un programme de fidélité. Dans le secteur des médias et du divertissement, créez des déclencheurs pour les personnes qui regardent un programme en particulier et qui doivent répondre à une enquête.
* **Début et fin de session :** créez un déclencheur pour les événements de début et de fin de session.

## Création d’un trigger Experience Cloud {#task_821F37183AC045E5AC8EED20317598FE}

Créez un déclencheur et configurez les conditions correspondantes. Vous pouvez par exemple indiquer les critères des règles d’un déclencheur pendant une visite, comme des mesures telles que Abandon du panier ou des dimensions telles que le nom du produit. Lorsque les règles sont satisfaites, le déclencheur s’exécute.

>[!NOTE]
>
>Pour des raisons techniques, le nombre de déclencheurs est actuellement limité à 100.

1. Dans Experience Cloud, cliquez sur ![menu](../assets/menu-icon.png), puis sur **[!UICONTROL Collecte de données/Launch]**.
2. Sur la carte [!UICONTROL Triggers], cliquez sur **[!UICONTROL Gérer Triggers]**.
3. Cliquez sur **[!UICONTROL Nouveau déclencheur]**, puis spécifiez le type de déclencheur :

   ![Résultat de l’étape](../assets/add-trigger.png)

4. Configurez le déclencheur en renseignant les champs suivants et en faisant glisser les éléments de mesure et de dimension vers les conteneurs de la règle :

   | Élément | Description |
   |--- |--- |
   | [!UICONTROL Nom] | Nom convivial du déclencheur. |
   | [!UICONTROL Description] | Description du déclencheur, de sa fonction, etc. |
   | [!UICONTROL Suite de rapports] | La [suite de rapports](https://experienceleague.adobe.com/docs/analytics/admin/manage-report-suites/report-suites-admin.html?lang=fr) Analytics utilisée pour ce déclencheur. Ce paramètre identifie les données de rapport à utiliser. |
   | Visite doit inclure<br>Visite ne doit pas inclure<br>Déclencheur après aucune action<br>Inclure métadonnées | Vous pouvez définir des critères ou des comportements de visiteur qui doivent se produire ou ne pas se produire. Par exemple, les règles pour un déclencheur d’abandon de panier simple peuvent ressembler à celles-ci :<ul><li>La visite doit inclure : [!UICONTROL Ajout au panier] (mesure) et [!UICONTROL Existe]. (Vous pouvez affiner davantage la règle avec une consultation de produit spécifique ou des dimensions telles que Types de navigateur.)</li><li>La visite ne doit pas inclure : [!UICONTROL Passage en caisse].</li><li>Déclencheur après aucune action pendant : 10 minutes</li><li>[!UICONTROL Inclure les métadonnées] : permet d’ajouter une dimension spécifique de [!DNL Campaign] ou des variables qui sont pertinentes par rapport au comportement d’un visiteur. Ce champ peut s’avérer utile pour la création d’un e-mail de remarketing correct par Adobe Campaign.</li></ul><br>Vous pouvez spécifier une logique [!UICONTROL Quelconque], [!UICONTROL Et] ou [!UICONTROL Ou] dans ou entre des conteneurs, selon les critères que vous déterminez comment étant importants pour la règle. |
   | [!UICONTROL Conteneur] | Vous définissez et stockez des règles, des conditions ou des filtres qui définissent un déclencheur dans les [!UICONTROL Conteneurs]. Si vous souhaitez que des événements se produisent en même temps, placez-les dans un même conteneur. En effet, chaque conteneur procède indépendamment au traitement au niveau de l’accès. Par exemple, si deux conteneurs sont associés par l’opérateur AND, vous pouvez vous attendre à ce que les règles remplissent les critères lorsque deux accès répondent aux exigences. |
   | Démarrer une nouvelle session après | Créez un déclencheur pour les événements de début et de fin de session. |

   {style="table-layout:auto"}

5. Cliquez sur **[!UICONTROL Enregistrer]**.
6. Utilisez ces déclencheurs pour le [remarketing en temps réel](https://experienceleague.adobe.com/docs/campaign-standard/using/integrating-with-adobe-cloud/working-with-campaign-and-triggers/about-adobe-experience-cloud-triggers.html?lang=fr) dans [!DNL Adobe Campaign].

## Exemples de déclencheurs

Exemples de triggers Experience Cloud :

### Déclencheur d’abandon de panier

Par exemple, la page suivante montre les règles que vous pouvez utiliser pour un déclencheur d’[!UICONTROL abandon de panier], selon les produits consultés lors d’une visite.

![Déclencheur dʼabandon de panier](../assets/abandonment-trigger.png)

### Déclencheur référent

Le trigger suivant se déclenche lorsqu’un accès est associé au produit Men’s Boots et au référent Facebook. Pour que les deux critères (*produits* et *référent*) soient évalués dans le même accès, ils doivent être ajoutés au même conteneur.

![Déclencheur de référent](../assets/fb-boots-promo.png)
