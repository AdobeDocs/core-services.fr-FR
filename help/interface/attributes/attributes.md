---
description: Aperçu et conditions requises pour le transfert des attributs du client dans Experience Cloud.
keywords: core services;customer attributes
seo-description: Aperçu et conditions requises pour le transfert des attributs du client dans Experience Cloud.
seo-title: Attributs du client
solution: Experience Cloud
title: Attributs du client
uuid: 1621402d-990f-46f9-981a-473280559069
translation-type: tm+mt
source-git-commit: f7ec8bf6087a18be41c9efbf05f60e6cfd24e566

---


# Attributs du client

## Aperçu

To locate [!UICONTROL customer attributes] navigate to **[!DNL Experience Platform]** > **[!UICONTROL People]** > **[!UICONTROL Customer Attributes]**

Si vous capturez les données clients d’entreprise dans une base de données de gestion de la relation client, vous pouvez les transférer dans une source de données d’attributs du client dans Experience Cloud. Une fois le transfert effectué, utilisez les données dans [!DNL Adobe Analytics] et [!DNL Adobe Target].

![](assets/custom_reports.png)

## Conditions requises pour le transfert des attributs du client {#section_BD38693AFBF34926BA28E964963B4EA0}


* **Activation de la solution :** [activez vos solutions pour les services principaux](../core-services/core-services.md#concept_07ED1D5C64234E77976E6D572E78FB9C).

* **Appartenance au groupe :** pour transférer les données d’attributs du client, les utilisateurs doivent appartenir au [groupe Attributs du client](../admin-getting-started/admin-getting-started.md#task_3295A85536BF48899A1AB40D207E77E9). Vous devez également appartenir à un groupe Adobe Analytics ou à un  Adobe.

   Pour savoir si votre société a accès aux attributs du client, votre administrateur [!DNL Experience Cloud] doit ouvrir une session dans [!DNL Experience Cloud]. Navigate to **[!UICONTROL Administration]** > **[!UICONTROL Launch Admin Console]** > **[!UICONTROL Groups]**. Si les *Attributs du client* sont répertoriés comme l’un des groupes, vous êtes prêt à commencer.

   Les utilisateurs ajoutés au groupe Attributs du client verront l’option de menu Attributs [!UICONTROL du] client sur le côté gauche de l’interface d’Experience Cloud.

* **Les attributs du client nécessitent un** Adobe [!DNL at.js] (n’importe quelle version) ou [!DNL mbox.js] la version 58 ou ultérieure.


   Voir [Comment déployer at.js](https://docs.adobe.com/content/help/en/target/using/implement-target/client-side/deploy-at-js/how-to-deployatjs.html) ou la mise en oeuvre [de](https://docs.adobe.com/content/help/en/target/using/implement-target/client-side/mbox-implement/mbox-download.html)mbox.js.

## What is enterprise customer data? {#section_6F34C29F11414842AA57D2B1248FA3C6}

Les données d’entreprise résident dans d’autres systèmes. Cela peut être complexe et les significations varient en fonction des utilisateurs. Ces données peuvent inclure des informations telles que les adhésions, le niveau de fidélité, l’âge, le sexe, les produits détenus, les intérêts et la valeur de durée de vie.

L’image suivante est un exemple de fichier de données présentant les données des abonnés pour les produits, y compris les identifiants des membres, les produits autorisés, les produits les plus lancés, etc.

![](assets/01_crs_usecase.png)

After you create the data file, you can upload it to the customer attribute source that you create in **[!UICONTROL Experience Cloud]** > **[!UICONTROL Customer Attributes]**.

Voir [Transfert des données d’attributs du client](../attributes/t-crs-usecase.md#task_BCC327B2A0EF4A1BBB2934013AB92B78) pour en savoir plus sur ce processus.

## Cas d’utilisation des solutions {#section_4E77650F6CEE4C4ABCD0B3221A5AE5D9}

Une fois que les données résident dans Experience Cloud, vous pouvez les personnaliser et les partager dans des solutions pour les , la segmentation, les  de et les campagnes.

Par exemple :

| Solution | Avantages et cas d’utilisation |
|--- |--- |
| Adobe Analytics | Les marketeurs et analystes peuvent comprendre :<ul><li>Les campagnes en ligne les plus efficaces pour vos clients de niveau or.</li><li>Produits recherchés par les clients de niveau or par rapport aux produits recherchés par les clients de niveau platine.</li><li>Si la reconception de votre site a un impact positif sur les  pour les clients plus âgés.</li><li>Quels produits les clients ayant une faible valeur de durée de vie ont tendance à rechercher sur mon site ?</li></ul> |
| Adobe Target | Les données d’attribut permettent aux utilisateurs d’Adobe  de :<ul><li>Montrez aux membres du club de fidélité des réductions spéciales et   de.</li><li>Recommandez des produits plus chers à vos clients de luxe.</li><li>Pour les clients qui reçoivent déjà des courriers électroniques, affichez un de vente incitative  dans l’espace normalement réservé aux abonnements par courrier électronique.</li></ul> |
