---
description: En savoir plus sur les exigences en matière de fichiers de données et les sources de données multiples pour le transfert [!DNL Customer Attributes] à Experience Cloud.
solution: Experience Cloud
title: Fichier de données et sources de données
uuid: 9dd0e364-889b-45db-b190-85c0930a101e
feature: Customer Attributes
topic: Administration
role: Admin
level: Experienced
exl-id: e2dfe10d-7003-4afa-a5e6-57703d74efd4
source-git-commit: c39672f0d8a0fd353b275b2ecd095ada1e2bf744
workflow-type: tm+mt
source-wordcount: '1178'
ht-degree: 88%

---

# À propos du fichier de données et des sources de données pour [!DNL Customer Attributes]

Exigences liées aux fichiers de données et sources de données multiples pour le transfert [!DNL Customer Attributes] à Experience Cloud.

Il vous faut accéder à la gestion de la relation client (CRM) ou à d’autres données similaires de votre société. Les données que vous transférez vers Experience Cloud doivent être `.csv` fichier . Si vous chargez le fichier via FTP ou sFTP, vous devez également charger un fichier `.fin`.

[!DNL Customer Attributes] est conçu pour gérer quelques fichiers par jour. Pour atténuer le problème lié au retardement du traitement dû à un grand nombre de petits fichiers, les fichiers envoyés dans les 30 minutes suivant un lot précédent depuis une même organisation sont acheminés vers une file d’attente de priorité inférieure.

## Types de fichiers autorisés et exigences en termes d’attribution de noms {#section_6F64FA02ACCC4215B0862CB6A1821FBF}

<table id="table_C27955F6B52A45B28BEEAAF14FFC86D8"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Type de fichier </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p> <span class="filepath"> .csv </span> </p> </td> 
   <td colname="col2"> <p>Fichier de valeurs séparées par des virgules (tels ceux créés dans Excel). Ce fichier contient les données d’attributs du client. </p> <p> <b>Exigences en matière de dénomination :</b> assurez-vous que les extensions de nom de fichier ne contiennent pas d’espaces vides. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <span class="filepath"> .fin </span> </p> </td> 
   <td colname="col2"> <p>(Requis) Le fichier <span class="filepath">.fin</span> indique au système quand le chargement des données est terminé. Le nom du fichier <span class="filepath">.fin</span> doit correspondre au nom du fichier <span class="filepath">.csv</span>. </p> <p>Adobe recommande de créer un fichier texte vide avec une extension <span class="filepath">.fin</span>. Un fichier vide permet de gagner de l’espace et d’accélérer le chargement. </p> <p> <p>Remarque : Il n’est pas possible de renommer le fichier <span class="filepath">.fin</span> après son chargement. Le fichier <span class="filepath">.fin</span> doit être chargé séparément ; il ne peut pas s’agir d’un fichier précédemment chargé et renommé. </p> </p> <p>Après avoir téléchargé le fichier <span class="filepath">.fin</span> via le système FTP des attributs du client, le système extrait rapidement les données (en moins d’une minute). Cette configuration diffère des autres systèmes FTP d’Adobe, qui captent les données moins fréquemment (environ une fois par heure). </p> <p>Le fichier <span class="filepath">.fin</span> n’est pas nécessaire en cas de chargement par glisser-déplacer. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <span class="filepath"> .gz</span> ou <span class="filepath">.zip </span> </p> </td> 
   <td colname="col2"> <p> <span class="filepath"> .gz</span> (gzip) ou <span class="filepath">.zip</span> – pour les fichiers compressés. Un fichier <span class="filepath">.zip</span> ne peut pas contenir plus d’un fichier dans l’archive. </p> <p> <b>Exigences en termes d’attribution de nom :</b> le nom du fichier <span class="filepath">.zip</span> ou <span class="filepath">.gz</span> doit correspondre au nom du fichier <span class="filepath">.csv</span>. Si, par exemple, votre fichier <span class="filepath">.csv</span> se nomme <span class="filepath">crm_petit.csv</span>, le fichier <span class="filepath">.zip</span> doit se nommer <span class="filepath">crm_petit.csv.zip</span>. </p> <p>Le fichier .fin doit correspondre au fichier .csv. </p> </td> 
  </tr> 
 </tbody> 
</table>

## Conditions requises pour les fichiers de données d’attributs {#section_169FBF5B7BBA47CE825B7A330CF3FE98}

**Exemple de fichier CSV**

Le fichier CSV doit respecter le format suivant :

![Conditions requises pour les fichiers de données dʼattributs](assets/cvs.png)

Le même fichier affiché dans un éditeur de texte :

![Conditions requises pour les fichiers de données dʼattributs](assets/csv_txt.png)

**Instructions**

<table id="table_A9849CC9AA784763921DE057F0F61515"> 
 <thead> 
  <tr> 
   <th colname="col1" class="entry"> Élément </th> 
   <th colname="col2" class="entry"> Description </th> 
  </tr> 
 </thead>
 <tbody> 
  <tr> 
   <td colname="col1"> <p>Glisser-déposer </p> </td> 
   <td colname="col2"> <p>La taille du fichier glissé-déposé doit être inférieure à 100 Mo. </p> <p>Le fichier <span class="filepath">.fin</span> n’est pas nécessaire en cas de chargement par glisser-déplacer. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Colonne d’ID de client </p> </td> 
   <td colname="col2"> <p> La première colonne doit être un ID de client unique. L’ID utilisé doit correspondre à l’ID transmis au service Experience Cloud ID. </p> <p>Pour Analytics, l’ID est stocké dans une prop ou une eVar. </p> <p>Pour Target, la valeur setCustomerID . </p> <p> Cet ID de client est l’identifiant unique utilisé par la gestion de la relation client pour chaque personne de votre base de données. Les autres colonnes contiennent les attributs issus de la gestion de la relation client. Vous choisissez le nombre d’attributs à charger. </p> <p>Il est préférable d’utiliser des noms lisibles et faciles à retenir pour les titres de colonne, mais cela n’est pas obligatoire. Lorsque vous validez le schéma après le chargement, vous pouvez mapper des noms conviviaux aux lignes et colonnes chargées. </p> <p> <b>À propos des ID de client</b> </p> <p>En règle générale, une entreprise utilise un ID de client provenant d’un système de gestion de la relation client. L’ID est défini par l’appel <span class="codeph">setCustomerIDs</span> lorsqu’une personne se connecte. Cet identifiant est également utilisé comme clé dans le fichier CRM téléchargé vers Experience Cloud. Un <a href="t-crs-usecase.md" format="dita" scope="local"> ID d’alias </a> est un nom convivial pour un entrepôt de données en Audience Manager, où les données d’alias sont stockées. Le système envoie des alias à ce magasin de données (via setCustomerIDs). Le fichier de gestion de la relation client (CRM) est appliqué aux données de ce magasin de données. </p> <p>Pour plus d’informations sur <span class="codeph">setCustomerIDs</span>, voir <a href="https://experienceleague.adobe.com/docs/id-service/using/reference/authenticated-state.html?lang=fr" format="https" scope="external">ID de client et états d’authentification</a>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>En-têtes et colonnes suivants </p> </td> 
   <td colname="col2"> <p>Les en-têtes suivants doivent représenter le nom de chaque attribut. </p> <p> Ces colonnes doivent contenir les attributs du client issus de la gestion de la relation client. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Limites d’attribut </p> </td> 
   <td colname="col2"> <p>Vous pouvez télécharger des centaines de <span class="filepath"> .csv </span> au service Attribut client dans Experience Cloud. Toutefois, lors de la configuration des abonnements et de la sélection des attributs, les restrictions suivantes sʼappliquent, selon les applications que vous détenez : </p> <p> 
     <ul id="ul_2BB85067918D4BB3B59394F3E3E37A6D"> 
      <li id="li_93703988B9934384B4B94A839D028380"> <b>Analytics Standard</b> : 3 au total </li> 
      <li id="li_D1E5E7BD24C54591B14D15DE97447835"> <b>Analytics Premium</b> : 200 par suite de rapports </li> 
      <li id="li_8C891FE3D1EF49FA9F81E2E32CD0B9CA"> <b>Adobe Target Standard :</b> 5 </li> 
      <li id="li_2B66D43023F34EA685CE2C38A9250CEA"> <b>Adobe Target Premium :</b> 200 </li> 
     </ul> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Limites de ligne </p> </td> 
   <td colname="col2"> <p>Il n’existe aucune limite connue quant au nombre de lignes. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Limites de colonne </p> </td> 
   <td colname="col2"> <p>Pour des raisons pratiques, limitez le nombre de colonnes à environ 200. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Limites de caractères </p> </td> 
   <td colname="col2"> <p>Lors de la création d’un abonnement Analytics, la longueur des champs des fichiers chargés est tronquée à 255. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Instructions et limites de taille FTP </p> </td> 
   <td colname="col2"> <p> 
     <ul id="ul_E157EE6F98914EADA0C103D1D1E705D3"> 
      <li id="li_84FBD455DD164A28AC16F4A5AB19E4B3">Pour chaque chargement par FTP, le fichier ne doit pas dépasser 4 Go. </li> 
      <li>Pour chaque chargement, la limite de la taille minimale de fichier est de 10 Mo. </li>
      <li>Vous pouvez télécharger un fichier toutes les demi-heures. </li>
      <li id="li_B69A20C51D824727AA99C1F6F78537A4"> Déposez de préférence vos fichiers <span class="filepath">.csv</span> et <span class="filepath">.fin</span> dans le dossier racine du site FTP. </li> 
     </ul> </p> <p> <p>Important : l’espace total autorisé pour le compte FTP est de 40 Go. Il est de votre responsabilité de supprimer les fichiers traités. </p> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Exigences relatives aux fichiers </p> </td> 
   <td colname="col2"> <p> Chaque source d’attribut doit contenir le même nombre de champs séparés par des virgules. </p> <p> Les champs contenant un saut de ligne, un guillemet double ou des virgules doivent être placés entre guillemets. </p> <p> Les guillemets doubles d’un champ doivent être précédés d’une séquence d’échappement à l’aide d’une barre oblique inverse (\). </p> <p> Les colonnes vides sont stockées sous la forme <span class="term"> null </span>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Fichiers multiples </p> </td> 
   <td colname="col2"> <p>Lors du chargement des données d’attributs du client, si vous souhaitez charger plusieurs fichiers en succession rapide, en particulier si les fichiers sont volumineux, vérifiez que le fichier précédent a été traité avant de charger le fichier suivant. Vous pouvez vous en assurer en vérifiant le moment où le fichier précédent a été déplacé vers le dossier traité ou en échec dans votre compte FTP d’[!UICONTROL Customer Attributes]. </p> <p> Diviser un fichier volumineux en fichiers de plus petite taille puis les envoyer en succession rapide peut ralentir le traitement, sauf si vous pouvez vous assurer du traitement de chaque fichier avant l’envoi du suivant. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Encodage des caractères </p> </td> 
   <td colname="col2"> <p>Pour le Japon, l’UTF-8 est obligatoire. </p> </td> 
  </tr> 
   <tr> 
   <td colname="col1"> <p>Données historiques </p> </td> 
   <td colname="col2"> <p> Les attributs du client sont liés au profil du visiteur sous-jacent dans [!DNL Analytics]. Ainsi, les [!UICONTROL Customer Attributes] sont associés au visiteur pendant toute la durée de vie du profil de ce visiteur dans [!DNL Analytics]. Ce profil inclut le comportement survenu avant la première connexion du client. </p> <p> Si vous utilisez la méthode de renvoi de Data Warehouse, les données sont liées à un post_visid_high/low qui repose sur l’Analytics ID (AID). Si vous utilisez le service Experience Cloud ID, les données sont liées à un post_visid_high/low basé sur Experience Cloud ID (MID). </p> <p> Notez que la méthode de renvoi du Data Warehouse ne sera plus disponible à compter d’octobre 2022. </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Flux de données </p> </td> 
   <td colname="col2"> <p>Les attributs du client ne sont pas disponibles dans les flux de données. </p> </td> 
  </tr> 
 </tbody> 
</table>

## Utilisation de plusieurs sources de données {#section_76DEB6001C614F4DB8BCC3E5D05088CB}

Lorsque vous créez, modifiez ou supprimez une source d’attributs du client, la synchronisation des ID avec la nouvelle source de données peut prendre jusqu’à une heure.

L’ID d’alias de chaque source d’attributs du client doit être unique. Si plusieurs sources de données utilisent le même ID, elles peuvent être configurées comme suit :

**Dans VisitorAPI.js ou l’outil Experience Cloud ID de Dynamic Tag Management :**

Définissez deux ID client qui correspondent aux sources de données adéquates :

```
Visitor.setCustomerIDs({ 
     "ds_id1":"123456", 
     "ds_id2":"123456" 
});
```

(Pour plus d’informations, voir [ID de client et états de l’authentification](https://experienceleague.adobe.com/docs/id-service/using/reference/authenticated-state.html?lang=fr).)

Dans **[!UICONTROL Experience Cloud]** > **[!UICONTROL Personnes]** > **[!UICONTROL Attributs du client]** :

Créez deux sources d’attributs du client à l’aide d’ID d’alias uniques correspondant aux ID de client ci-dessus. L’utilisation de cette méthode permet l’envoi du même ID de référence à plusieurs sources d’attributs du client.
