---
title: Surveillance de l’utilisation de l’IA dédiée aux agences
description: Découvrez les tableaux de bord pour la surveillance de l’utilisation de l’IA dans CX Enterprise. Suivez l’adoption, examinez les conversations et les commentaires, et gérez les crédits d’IA pour l’utilisation, la qualité et la visibilité des coûts.
solution: Experience Cloud, Experience Platform
topic: Artificial Intelligence
feature: Agentic AI, AI Tools
role: Admin, User
level: Intermediate
autotag-review: '2026-05-27T16:30:16.764Z'
TQID: 'https://experienceleague.adobe.com/J74yr0gGkFu1bzTmMvhrQ8TNaRX6nRjWY9WAwd3uydk'
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
  - id: e1971122-7081-4556-9222-8a31bd71800c
feature_v2:
  - id: f84b2906-3ce9-4ef0-86f6-cda249273937
subfeature_v2:
  - id: cda95149-19e1-4cfa-a57e-751283a32378
topic_v2:
  - id: bbbea26f-9621-49eb-9ab8-e06fb3bbce8c
source-git-commit: 5c3f20052f8c0a847cd0c56f02697c1d749c040c
workflow-type: tm+mt
source-wordcount: 917
ht-degree: 2%

---

# Tableaux de bord de surveillance d’Agentic AI

Le tableau de bord de surveillance de l&#39;IA dédiée aux agences donne aux membres du Centre d&#39;excellence et aux autres intervenants en matière de gouvernance une visibilité sur l&#39;utilisation et l&#39;adoption de l&#39;IA dédiée aux agences. Vous pouvez afficher les tendances sur des périodes de 7 ou 30 jours pour voir qui utilise des [!DNL AI Assistant] ou d’autres surfaces de conversation (comme [Adobe Marketing Agent for Microsoft 365 Copilot](https://experienceleague.adobe.com/fr/docs/experience-cloud-ai/experience-cloud-ai/agents/ama-ms)) pour interagir avec les [!DNL Experience Platform Agents], ce qu’ils font dans ces interactions et la valeur qu’ils reçoivent. Ensemble, ces vues vous aident à guider l’adoption des agents à l’aide de données plutôt que d’hypothèses.

**Disponibilité**

* Actuellement, tout compte disposant d’une licence sur au moins une application native Experience Platform (Customer Journey Analytics, Journey Optimizer ou Real-Time CDP) peut accéder à ce tableau de bord
* Les mesures d’utilisation et d’adoption des applications [IA-first](agentic-ai.md#ai-first-cx-enterprise-applications) telles qu’Experimentation Accelerator, LLM Optimizer, Sites Optimizer, etc., ne sont pas incluses dans ce tableau de bord

Le tableau de bord [!UICONTROL Surveillance] comprend les vues suivantes :

| Tableau de bord | Rôle |
| --- | --- |
| **Vue d’ensemble** | Mesures agrégées concernant les utilisateurs, les conversations, les commentaires et la consommation de crédit |
| **Utilisateurs** | Fréquence d’utilisation, distribution et engagement par utilisateur |
| **Commentaires** | Signaux sur la qualité de la réponse et la satisfaction des utilisateurs |
| **Crédits AI** | Tendances de la consommation de crédit et solde restant |

Les agents concernés par la surveillance de l’utilisation sont répertoriés dans la section [Agents AI dans les applications CX Enterprise existantes](agentic-ai.md#existing-apps-table) dans la documentation [Agentic AI dans Adobe CX Enterprise](agentic-ai.md).

>[!VIDEO](https://video.tv.adobe.com/v/3491864?learn=on)

## Activer les autorisations relatives aux tableaux de bord {#permissions}

Accordez l’accès au tableau de bord dans [!DNL Adobe Experience Platform] en mettant à jour le profil ou le rôle de produit pour chaque utilisateur autorisé. La fonction [!UICONTROL Surveillance] s’affiche pour les utilisateurs sur la page d’accueil de l’entreprise CX une fois les autorisations activées.

1. Accédez à [!DNL Experience Platform] **Administration** > **Autorisations**.

1. Ouvrez le profil de produit ou le rôle à mettre à jour.

   ![Activer les autorisations relatives aux tableaux de bord](../features/assets/dashboards-permissions.png)

1. Sous **[!UICONTROL Assistant AI]** autorisations, cliquez sur **[!UICONTROL Ajouter une ressource]**, puis activez **[!UICONTROL Afficher le tableau de bord d’utilisation de l’assistant AI]**.

   Cette autorisation accorde l’accès aux tableaux de bord de surveillance de l’utilisation d’Agentic AI.

1. Sous Autorisations **[!UICONTROL Tableaux de bord]**, configurez l’accès aux tableaux de bord en fonction des responsabilités de chaque utilisateur.

   ![Activer les autorisations relatives aux tableaux de bord](../features/assets/dashboards-add-resource.png)

   Autorisations recommandées pour les utilisateurs autorisés à utiliser la gouvernance :

   * **[!UICONTROL Afficher le tableau de bord d’utilisation des licences]**
   * **[!UICONTROL Afficher les tableaux de bord standard]**
   * **[!UICONTROL Exporter les données du tableau de bord]** (facultatif, pour les utilisateurs et utilisatrices de gouvernance approuvés uniquement)

   Autorisations supplémentaires que vous pouvez accorder si nécessaire :

   * **[!UICONTROL Gérer les tableaux de bord personnalisés]**
   * **[!UICONTROL Afficher les tableaux de bord personnalisés]**
   * **[!UICONTROL Gestion des tableaux de bord standard]**

1. Pour afficher les tableaux de bord, revenez à la page d’accueil CX Enterprise, puis cliquez sur **[!UICONTROL Surveillance]**.

   ![Tableau de bord de surveillance d’Agentic AI](../features/assets/monitoring.png)

## Tableau de bord de présentation

Le tableau de bord Présentation est l’emplacement central des mesures d’adoption et d’engagement au sein de votre organisation. Il relie les tendances de haut niveau à une analyse plus approfondie. À partir de n’importe quelle mesure, vous pouvez explorer des conversations individuelles pour voir ce qui motive les chiffres.

### Mesures dans le tableau de bord de présentation

* **Invites au fil du temps :** tendances générales de croissance de l’utilisation et d’adoption.
* **Utilisateurs actifs et conversations :** nombre d’utilisateurs interagissant avec [!DNL Experience Platform Agents].
* **Nombre moyen d’invites par conversation :** Profondeur d’engagement par conversation.
* **Commentaires :** répartition des pouces vers le haut et des pouces vers le bas pour les commentaires des utilisateurs (pour les interactions [!DNL AI Assistant] uniquement).

>[!VIDEO](https://video.tv.adobe.com/v/3491865?learn=on)

### Relecture de la conversation

La relecture des conversations affiche les interactions individuelles, et pas seulement les agrégats. Vous pouvez analyser des modèles dans de nombreuses conversations et passer de tendances de haut niveau à une conversation spécifique.

* **Invite et historique des réponses :** invite de l’utilisateur et réponses fournies.
* **Signaux de retour d’informations :** utilisateurs d’interactions signalés par un pouce vers le haut ou vers le bas pour identifier une friction, des bloqueurs ou des besoins d’activation. Ces informations aident votre entreprise à améliorer la pertinence rapide et aident Adobe à améliorer la qualité de la réponse au fil du temps.

>[!VIDEO](https://video.tv.adobe.com/v/3491866?learn=on)

## Users dashboard

Le tableau de bord des utilisateurs montre comment l’adoption et l’engagement des agents varient selon les utilisateurs au fil du temps. Vous pouvez voir qui utilise activement [!DNL Experience Platform Agents], quelle surface ils utilisent et à quelle fréquence ils interagissent. Les administrateurs et les membres du COE peuvent explorer l’activité et les conversations des utilisateurs individuels pour comprendre les modèles d’engagement et le comportement d’utilisation.

### Mesures dans le tableau de bord des utilisateurs

* **Tendances d’adoption et d’engagement au fil du temps :** suivez l’évolution des segments d’utilisateurs au cours de la période sélectionnée. Les utilisateurs sont classés comme suit :
   * **Nouvelle :** première activité de la période sélectionnée, sans activité au cours des 12 mois précédents.
   * **Répéter :** activité de la période sélectionnée et de la période précédente.
   * **Retour :** activité de la période sélectionnée, mais pas de la période précédente.
   * **Inactif :** aucune activité pendant la période sélectionnée, mais activité pendant la période précédente.
* **Modèles d’engagement des utilisateurs :** fréquence à laquelle les utilisateurs interagissent avec les agents et évolution de l’engagement au fil du temps.
* **Activité de conversation :** nombre de conversations et d’invites par utilisateur.
* **Utilisateurs les plus actifs :** utilisateurs et équipes les plus engagés favorisent l’adoption des agents.

>[!VIDEO](https://video.tv.adobe.com/v/3491868?learn=on)

## Tableau de bord des commentaires

Le tableau de bord des commentaires affiche les commentaires des utilisateurs envoyés pour les interactions avec les agents. Vous pouvez voir quelles conversations ont été positives ou négatives par les utilisateurs et utilisatrices, et examiner les interactions derrière les commentaires. À partir de résumés de commentaires, explorez les conversations individuelles pour examiner les invites, les réponses, les détails de raisonnement et les notes de commentaires.

### Mesures dans le tableau de bord des commentaires

* **Tendances des commentaires au fil du temps :** évolution des commentaires des utilisateurs au fil du temps.
* **Commentaires des pouces vers le haut et vers le bas :** signaux d’interaction positifs et négatifs.
* **Catégories de commentaires :** justification derrière chaque pouce vers le haut et vers le bas.
* **Invite et historique des réponses :** les invites de l&#39;utilisateur et les réponses associées aux retours envoyés.
* **Détails et notes du retour d’informations :** contexte et commentaires supplémentaires des utilisateurs lors de l’envoi du retour d’informations.

>[!VIDEO](https://video.tv.adobe.com/v/3491878?learn=on)

## Tableau de bord des crédits AI

Le tableau de bord des crédits AI montre comment l’utilisation de [!DNL Experience Platform Agents] par votre entreprise se traduit par la consommation des crédits AI.

### Mesures sur le tableau de bord des crédits d’IA

* **Total des crédits AI consommés :** utilisation globale de l’agent dans les crédits AI.
* **Tendances quotidiennes et mensuelles :** pics, creux et changements dans les habitudes de consommation.
* **Crédits AI restants :** solde restant pour que vous puissiez planifier de manière proactive et éviter les dépassements.

>[!VIDEO](https://video.tv.adobe.com/v/3491867?learn=on)

## Plus d’aide sur cette rubrique

* [Tableau de bord d’utilisation des licences](https://experienceleague.adobe.com/fr/docs/experience-platform/dashboards/guides/license-usage) dans [!DNL Experience Platform]
* [IA dédiée aux agents dans Adobe CX Enterprise](agentic-ai.md)
* [Tâches de l’agent et consommation du crédit de l’IA](ai-credit-consumption.md)
* [Tableau de bord d’utilisation des licences](https://experienceleague.adobe.com/fr/docs/experience-platform/dashboards/guides/license-usage) (Experience Platform)
