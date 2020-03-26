---
description: Supprimez les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles. Ce paramètre de confidentialité exclut les utilisateurs qui opt-out de la collecte de données Analytics.
keywords: cookies;privacy
seo-description: Supprimez les utilisateurs ayant bloqué tous les cookies sur les navigateurs de bureau et mobiles. Ce paramètre de confidentialité exclut les utilisateurs qui opt-out de la collecte de données Analytics.
seo-title: Activation des paramètres de confidentialité pour les cookies de navigateur
solution: Marketing Cloud,Adobe Analytics,Adobe Target,Adobe Social
title: Activation des paramètres de confidentialité pour les cookies de navigateur
uuid: f6a56e8b-b021-49db-8eb4-6c14af0c7243
translation-type: tm+mt
source-git-commit: f7ec8bf6087a18be41c9efbf05f60e6cfd24e566

---


# Activation des paramètres de confidentialité pour les cookies de navigateur{#enable-privacy-settings-for-browser-cookies}

Vous pouvez supprimer les utilisateurs qui ont bloqué tous les cookies sur les navigateurs de bureau et mobiles. Cette fonctionnalité est un paramètre de confidentialité qui exclut les utilisateurs qui opt-out de la collecte de données, ce qui vous permet de respecter l’intention d’un utilisateur d’arrêter le traitement Analytics.

**Pour activer les paramètres de confidentialité des cookies de navigateur**

1. Navigate to **[!UICONTROL Admin Tools]** > **[!UICONTROL Report Suites]**.
1. Click **[!UICONTROL Edit Settings]** > **[!UICONTROL General]** > **[!UICONTROL Privacy Settings]**.
1. Activez les **[!UICONTROL paramètres de confidentialité]** (pour mobiles ou ordinateurs de bureau).

>[!IMPORTANT]
>
>Sachez que de nombreuses applications mobiles (comme le navigateur intégré pour Facebook ou Twitter) peuvent apparaître comme un navigateur mobile standard, mais n’autorisent pas tous les cookies. L’activation de cette fonctionnalité peut exclure une forte proportion du trafic mobile des rapports Analytics.

**A propos des paramètres de confidentialité du navigateur**

Les lois et les consignes réglementaires ont indiqué que l’action d’un utilisateur consistant à bloquer les cookies est la même que celle d’un utilisateur opt-out de profilage. En activant cette fonctionnalité, les données collectées à partir des navigateurs de bureau, où l’utilisateur a défini le navigateur pour bloquer tous les cookies, seront exclues des rapports Analytics. Si Adobe ne parvient pas à reconnaître le navigateur Web, les données seront incluses dans les rapports Analytics.

Les législateurs du monde entier ont déclaré (à la fois dans le guide et dans les règlements) que les paramètres du navigateur de cookies sont une indication de la préférence de l’utilisateur pour opt-out du profilage. Plus précisément, ces législateurs ont déclaré que le paramètre du navigateur pour bloquer les cookies tiers est une demande d’exclusion du suivi tiers (intersite). Le blocage de tous les cookies est une demande d’exclusion pour tout suivi. Bien que les identifiants côté serveur (tels que l’adresse IP ou l’agent utilisateur) puissent être une option souhaitable qui contourne les paramètres du navigateur de cookies, certains législateurs les  comme un contournement du choix de l’utilisateur.