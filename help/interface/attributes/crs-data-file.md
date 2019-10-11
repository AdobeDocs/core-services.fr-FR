---
description: Exigences en matière de fichiers de données et sources de données multiples pour transférer les attributs du client vers Experience Cloud.
keywords: attributs du client;services principaux
seo-description: Exigences en matière de fichiers de données et sources de données multiples pour transférer les attributs du client vers Experience Cloud.
seo-title: À propos du fichier de données et des sources de données pour les attributs du client
solution: Experience Cloud
title: À propos du fichier de données et des sources de données pour les attributs du client
uuid: 9dd0e364-889b-45db-b190-85c0930a101e
translation-type: tm+mt
source-git-commit: 6711229e3423de0040fa89c49d481ffa1e2f0a08

---


# À propos du fichier de données et des sources de données pour les attributs du client

Exigences en matière de fichiers de données et sources de données multiples pour transférer les attributs du client vers Experience Cloud.

Vous allez devoir accéder à la gestion de la relation client ou à d’autres données du même type de votre société. Les données que vous transférez vers Experience Cloud doivent être regroupées dans un fichier `.csv`. Si vous transférez le fichier par FTP ou sFTP, vous devez également transférer un fichier `.fin`.

La fonction Attributs du client est conçu pour gérer quelques fichiers par jour. Pour atténuer le problème lié au retardement du traitement dû à un grand nombre de petits fichiers, les fichiers envoyés dans les 30 minutes suivant un lot précédent depuis une même organisation sont acheminés vers une file d’attente de priorité inférieure.

<!-- <p>Articulate difference between this and SAINT. </p> -->

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
   <td colname="col2"> <p>Fichier de valeurs séparées par des virgules (tels ceux créés dans Excel). Ce fichier contient les données d’attributs du client. </p> <p> <b>Exigences en termes d’attribution de noms :</b> assurez-vous que les extensions de nom de fichier ne contiennent aucun espace blanc. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <span class="filepath"> .fin </span> </p> </td> 
   <td colname="col2"> <p>(Requis) Le fichier <span class="filepath">.fin</span> indique au système quand le transfert des données est terminé. Le nom du fichier <span class="filepath">.fin</span> doit correspondre au nom du fichier <span class="filepath">.csv</span>. </p> <p>Adobe recommande de créer un fichier texte vide avec une extension <span class="filepath">.fin</span>. Un fichier vide permet de gagner de l’espace et d’accélérer le transfert. </p> <p> <p>Remarque : Il n’est pas possible de renommer le fichier <span class="filepath">.fin</span> après son transfert. Le fichier <span class="filepath">.fin</span> doit être transféré séparément ; il ne peut pas s’agir d’un fichier précédemment transféré et renommé. </p> </p> <p>Après avoir téléchargé le fichier <span class="filepath">.fin</span> via le système FTP des attributs client, le système extrait rapidement les données (en moins d’une minute). Cette configuration diffère des autres systèmes FTP d’Adobe, qui captent les données moins fréquemment (environ une fois par heure). </p> <p>Le fichier <span class="filepath">.fin</span> n’est pas nécessaire en cas de transfert par glisser-déplacer. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p> <span class="filepath"> .gz</span> ou <span class="filepath">.zip </span> </p> </td> 
   <td colname="col2"> <p> <span class="filepath"> .gz</span> (gzip) ou <span class="filepath">.zip</span> – pour les fichiers compressés. Un fichier <span class="filepath">.zip</span> ne peut pas contenir plus d’un fichier dans l’archive. </p> <p> <b>Exigences en termes d’attribution de nom :</b> le nom du fichier <span class="filepath">.zip</span> ou <span class="filepath">.gz</span> doit correspondre au nom du fichier <span class="filepath">.csv</span>. Si, par exemple, votre fichier <span class="filepath">.csv</span> se nomme <span class="filepath">crm_petit.csv</span>, le fichier <span class="filepath">.zip</span> doit se nommer <span class="filepath">crm_petit.csv.zip</span>. </p> <p>Le fichier .fin doit correspondre au fichier .csv. </p> </td> 
  </tr> 
 </tbody> 
</table>


## Conditions requises pour les fichiers de données d’attributs {#section_169FBF5B7BBA47CE825B7A330CF3FE98}



**Exemple de fichier CSV**

Le fichier CSV doit adhérer au format suivant :

Exemple de CSV :

![](assets/cvs.png)

Le même fichier affiché dans un éditeur de texte :

![](assets/csv_txt.png)

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
   <td colname="col1"> <p>Glisser-déplacer </p> </td> 
   <td colname="col2"> <p>Le fichier glissé-déplacé ne doit pas faire plus de 100 Mo. </p> <p>Le fichier <span class="filepath">.fin</span> n’est pas nécessaire en cas de transfert par glisser-déplacer. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Colonne ID de client </p> </td> 
   <td colname="col2"> <p> La première colonne doit être un identifiant de client unique. L’identifiant utilisé doit correspondre à l’ID transmis au service d’Experience Cloud ID. </p> <p>Pour Analytics, l’ID est stocké dans une propriété ou un eVar. </p> <p>Pour Target, il s’agit de la valeur setCustomerID. (Voir <a href="../core-services/core-services.md#section_AD473A6A21C1446498E700363F9A8437" format="dita" scope="local">Analytics et Target - Synchronisation de l’ID client</a>) </p> <p> Cet identifiant de client est l’identifiant unique utilisé par la gestion de la relation client pour chaque personne de votre base de données. Les autres colonnes contiennent les attributs issus de la gestion de la relation client. Vous choisissez combien d’attributs transférer. </p> <p>Il est préférable d’utiliser des noms lisibles et faciles à retenir pour les titres de colonne, mais cela n’est pas obligatoire. Lorsque vous validez le schéma après le transfert, vous pouvez mapper les noms conviviaux aux lignes et colonnes transférées. </p> <p> <b>À propos des ID de client</b> </p> <p>En règle générale, une entreprise utilise un ID de client provenant d’un système de gestion de la relation client. L’ID est défini par l’appel <span class="codeph">setCustomerIDs</span> lorsqu’une personne se connecte. Cet ID sert également de clé dans le fichier de gestion de la relation client qui est transféré vers Experience Cloud. Un <a href="../attributes/t-crs-usecase.md#task_09DAC0F2B76141E491721C1E679AABC8" format="dita" scope="local">ID d’alias</a> est un nom convivial pour un magasin de données dans Audience Manager, où les données d’alias sont stockées. Le système envoie les alias à ce magasin de données (via setCustomerIDs). Le fichier de gestion de la relation client est appliqué aux données de ce magasin de données. </p> <p>Pour plus d’informations sur <span class="codeph">setCustomerIDs</span>, voir <a href="https://marketing.adobe.com/resources/help/en_US/mcvid/mcvid-authenticated-state.html" format="https" scope="external">ID de client et états d’authentification</a>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>En-têtes et colonnes consécutifs </p> </td> 
   <td colname="col2"> <p>Les en-têtes consécutifs doivent représenter le nom de chaque attribut. </p> <p> Ces colonnes doivent contenir les attributs du client issus de la gestion de la relation client. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Restrictions liées aux attributs </p> </td> 
   <td colname="col2"> <p>Vous pouvez transférer des centaines de colonnes <span class="filepath">.csv</span> vers le service d’attributs du client dans Experience Cloud. Toutefois, lors de la configuration des abonnements et de la sélection des attributs, les restrictions suivantes s’appliquent, selon les solutions que vous détenez : </p> <p> 
     <ul id="ul_2BB85067918D4BB3B59394F3E3E37A6D"> 
      <li id="li_93703988B9934384B4B94A839D028380"> <b>Analytics Standard</b> : 3 attributs au total </li> 
      <li id="li_D1E5E7BD24C54591B14D15DE97447835"> <b>Analytics Premium</b> : 200 attributs par suite de rapports </li> 
      <li id="li_8C891FE3D1EF49FA9F81E2E32CD0B9CA"> <b>Target Standard :</b> 5 </li> 
      <li id="li_2B66D43023F34EA685CE2C38A9250CEA"> <b>Target Premium :</b> 200 </li> 
     </ul> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Restrictions liées aux lignes </p> </td> 
   <td colname="col2"> <p>Il n’existe aucune restriction connue quant au nombre de lignes. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Restrictions liées aux colonnes </p> </td> 
   <td colname="col2"> <p>Pour des raisons pratiques, ne créez pas plus de 200 colonnes. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Limites de caractères </p> </td> 
   <td colname="col2"> <p>Lors de la création d’un abonnement Analytics, la longueur de champ pour les fichiers transférés est limitée à 255 caractères. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Consignes relatives au FTP et limites de taille </p> </td> 
   <td colname="col2"> <p> 
     <ul id="ul_E157EE6F98914EADA0C103D1D1E705D3"> 
      <li id="li_84FBD455DD164A28AC16F4A5AB19E4B3">Pour chaque transfert par FTP, le fichier ne doit pas dépasser 4 Go. </li> 
      <li>Pour chaque transfert, la limite de la taille minimale de fichier est de 10 Mo. </li>
      <li>Vous pouvez télécharger un fichier toutes les demi-heures. </li>
      <li id="li_B69A20C51D824727AA99C1F6F78537A4"> Déposez de préférence vos fichiers <span class="filepath">.csv</span> et <span class="filepath">.fin</span> dans le dossier racine du site FTP. </li> 
     </ul> </p> <p> <p>Important : L’espace total autorisé pour le compte FTP est de 40 Go. Il vous appartient de supprimer les fichiers traités. </p> </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Exigences liées aux fichiers </p> </td> 
   <td colname="col2"> <p> Chaque source d’attributs doit contenir le même nombre de champs séparés par une virgule. </p> <p> Les champs contenant un saut de ligne, un guillemet double ou des virgules doivent être placés entre guillemets simples. </p> <p> Les guillemets doubles dans un champ doivent être précédés d’une barre oblique arrière (\). </p> <p> Les colonnes vierges sont stockées comme <span class="term">valeur nulle</span>. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Fichiers multiples </p> </td> 
   <td colname="col2"> <p>Lors du transfert des données d’attributs du client, si vous souhaitez transférer plusieurs fichiers en succession rapide, en particulier si les fichiers sont volumineux, vérifiez que le fichier précédent a été traité avant de télécharger le fichier suivant. Vous pouvez vous en assurer en vérifiant le moment où le fichier précédent a été déplacé vers le dossier traité ou échoué dans votre compte FTP d’attributs du client. </p> <p> Le fait de diviser un fichier volumineux en fichiers plus petits et de les envoyer rapidement peut ralentir le traitement, sauf si vous pouvez vérifier que chaque fichier est complètement traité avant d’envoyer le suivant. </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Encodage des caractères </p> </td> 
   <td colname="col2"> <p>Pour le Japon, le codage UTF-8 est obligatoire. </p> </td> 
  </tr> 
   <tr> 
   <td colname="col1"> <p>Données historiques </p> </td> 
   <td colname="col2"> <p> Les attributs du client sont liés au profil du visiteur sous-jacent dans Analytics. Ainsi, les attributs du client sont associés au visiteur pendant toute la durée de vie de ce profil du visiteur dans Analytics. Cela comprend le comportement qui se produisait avant la première connexion du client. </p> <p> Si vous utilisez la méthode de renvoi de l’entrepôt de données, les données sont liées à un post_visid_high/low qui repose sur Analytics ID (AID). Si vous utilisez le service d’Experience Cloud ID, les données sont liées à un post_visid_high/low qui repose sur Experience Cloud ID (MID). </p> </td> 
  </tr> 
  <tr> 
   <td colname="col1"> <p>Flux de données </p> </td> 
   <td colname="col2"> <p>Les attributs du client ne sont pas disponibles dans les flux de données. </p> </td> 
  </tr> 
 </tbody> 
</table>


## Utilisation de plusieurs sources de données {#section_76DEB6001C614F4DB8BCC3E5D05088CB}

Lorsque vous créez, modifiez ou supprimez une source d’attributs cliente, la synchronisation des identifiants avec la nouvelle source de données peut prendre environ une heure.

L’ID d’alias de chaque source d’attributs cliente doit être unique. Si plusieurs sources de données utilisent un même ID, elles doivent être configurées de la façon suivante :

**Dans le fichier VisitorAPI.js ou l’outil Experience Cloud ID de Dynamic Tag Management :**

Définissez deux ID de client qui correspondent aux sources de données adéquates :

```
Visitor.setCustomerIDs({ 
     "ds_id1”:"123456", 
     "ds_id2":"123456" 
});
```

(Pour plus d’informations, voir [ID de client et états de l’authentification.)](https://marketing.adobe.com/resources/help/en_US/mcvid/?f=mcvid_customer_ids)

Dans **[!UICONTROL Experience Cloud]** &gt; **[!UICONTROL Personnes]** &gt; **[!UICONTROL Attributs du client]** :

Créez deux sources d’attributs du client à l’aide des identifiants d’alias uniques qui correspondent aux identifiants client ci-dessus. L’utilisation de cette méthode permet l’envoi du même ID de référence à plusieurs sources d’attributs clientes.
