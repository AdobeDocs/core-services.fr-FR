---
description: Découvrez comment activer les paramètres de confidentialité pour les cookies de navigateur. Vous pouvez supprimer les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles.
keywords: cookies;confidentialité
solution: Experience Cloud, Analytics, Target, Social
title: 'Paramètres de confidentialité pour les cookies de navigateur '
uuid: f6a56e8b-b021-49db-8eb4-6c14af0c7243
feature: Cookies
topic: Administration
role: Administrator
level: Experienced
exl-id: 5d852e0e-4004-4f94-a6f7-3a14a96cd42f
source-git-commit: f720e37b693da2c657cb1efab45620c60bfa81a4
workflow-type: tm+mt
source-wordcount: '296'
ht-degree: 60%

---

# Activation des paramètres de confidentialité pour les cookies de navigateur {#enable-privacy-settings-for-browser-cookies}

Vous pouvez supprimer les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles. Cette fonctionnalité est un paramètre de confidentialité qui exclut les utilisateurs qui se sont désinscrits de la collecte de données, ce qui vous permet de respecter l’intention d’un utilisateur d’arrêter le traitement d’Analytics.

**Pour activer les paramètres de confidentialité pour les cookies de navigateur**

1. Accédez à **[!UICONTROL Outils d’administration]** > **[!UICONTROL Suites de rapports]**.
1. Cliquez sur **[!UICONTROL Modifier les paramètres]** > **[!UICONTROL Général]** > **[!UICONTROL Paramètres de confidentialité]**.
1. Activez les **[!UICONTROL paramètres de confidentialité]** (pour mobiles ou ordinateurs de bureau).

>[!IMPORTANT]
>
>De nombreuses applications mobiles (telles que le navigateur intégré à l’application pour Facebook ou Twitter) peuvent apparaître comme navigateur mobile standard, mais n’autorisent pas tous les cookies. L’activation de cette fonctionnalité peut exclure une grande partie du trafic mobile des rapports Analytics.

**À propos des paramètres de confidentialité du navigateur**

Les législations et réglementations en vigueur ont stipulé que le fait qu’un utilisateur bloque les cookies revient à se désinscrire du profilage. En activant cette fonction, les données collectées auprès des navigateurs de bureau, où l’utilisateur a défini le navigateur pour bloquer tous les cookies, sont exclues des rapports Analytics. Si Adobe ne peut pas reconnaître le navigateur web, les données sont incluses dans les rapports [!DNL Analytics].

Les législateurs du monde entier ont déclaré (à la fois dans la réglementation et la jurisprudence) que les paramètres pour les cookies de navigateur indiquent que l’utilisateur choisit de s’exclure du profilage. Plus précisément, ces législateurs ont déclaré que le paramètre du navigateur servant à bloquer les cookies tiers constitue une demande d’exclusion du suivi tiers (intersite). Le blocage de tous les cookies constitue une demande d’exclusion de tout suivi. Bien que les identifiants côté serveur (tels que l’adresse IP ou l’agent utilisateur) puissent être une option souhaitable qui contourne les paramètres du navigateur de cookies, certains législateurs les considèrent comme un contournement du choix de l’utilisateur.
