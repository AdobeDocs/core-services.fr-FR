---
description: Découvrez comment activer les paramètres de confidentialité pour les cookies de navigateur. Vous pouvez supprimer les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles.
solution: Experience Cloud, Analytics, Target
title: Paramètres de confidentialité pour les cookies de navigateur
uuid: f6a56e8b-b021-49db-8eb4-6c14af0c7243
feature: Cookies
topic: Administration
role: Admin
level: Experienced
exl-id: 5d852e0e-4004-4f94-a6f7-3a14a96cd42f
source-git-commit: ea50808d2514ff3c94ffa1bee2d9aa3ddf51f120
workflow-type: tm+mt
source-wordcount: '293'
ht-degree: 100%

---

# Activation des paramètres de confidentialité pour les cookies de navigateur{#enable-privacy-settings-for-browser-cookies}

Vous pouvez supprimer les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles. Cette fonctionnalité constitue un paramètre de confidentialité qui exclut les utilisateurs refusant la collecte de données. Il vous permet de respecter l’intention d’un utilisateur d’arrêter le traitement par Analytics.

**Pour activer les paramètres de confidentialité pour les cookies de navigateur**

1. Accédez à **[!UICONTROL Outils d’administration]** > **[!UICONTROL Suites de rapports]**.
1. Accédez à **[!UICONTROL Modifier les paramètres]** > **[!UICONTROL Général]** > **[!UICONTROL Paramètres de confidentialité]**.
1. Activez les **[!UICONTROL paramètres de confidentialité]** (pour mobiles ou ordinateurs de bureau).

>[!IMPORTANT]
>
>De nombreuses applications mobiles (telles que les navigateurs intégrés aux applications Facebook ou Twitter) peuvent ressembler à des navigateurs mobiles de base, mais n’acceptent pas tous les cookies. L’activation de cette fonctionnalité peut exclure une grande partie du trafic mobile des rapports Analytics.

**À propos des paramètres de confidentialité du navigateur**

Les législations et réglementations en vigueur ont stipulé que le fait qu’un utilisateur bloque les cookies revient à se désinscrire du profilage. En activant cette fonctionnalité, les données collectées auprès des navigateurs de bureau dans lesquels l’utilisateur a bloqué tous les cookies seront exclues des rapports Analytics. Si Adobe n’est pas en mesure de reconnaître le navigateur web, les données sont incluses dans les rapports [!DNL Analytics].

Les législateurs du monde entier ont déclaré (à la fois dans la réglementation et la jurisprudence) que les paramètres pour les cookies de navigateur indiquent que l’utilisateur choisit de s’exclure du profilage. Plus précisément, ces législateurs ont déclaré que le paramètre du navigateur servant à bloquer les cookies tiers constitue une demande d’exclusion du suivi tiers (intersite). Le blocage de tous les cookies constitue une demande d’exclusion de tout suivi. Bien que les identifiants côté serveur (tels que l’adresse IP ou l’agent utilisateur) puissent représenter une option attrayante pour contourner les paramètres de cookies des navigateurs, certains législateurs les considèrent comme un moyen d’outrepasser le choix de l’utilisateur.
