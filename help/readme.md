---
source-git-commit: 58ccef353b492b1c2adfbb8c2471e1f92263e6e4
translation-type: tm+mt

---
# Instructions

**Remarque : Cette page (ou toute page readme. md) ne sera pas publiée dans la documentation destinée aux clients.**

## Table des matières

+ `TOC.md` à la racine du guide de l&#39;utilisateur fournit l&#39;organisation des rubriques contenues dans le guide de cette solution.
+ Chaque guide de l&#39;utilisateur sera unique `TOC.md`, dans lequel vous pouvez classer toutes les pages/rubriques selon vos besoins.
+ La première page de tous les guides d&#39;utilisateur est `overview.md`la suivante.

## Guide de l’utilisateur

+ L&#39;introduction au guide de l&#39;utilisateur est appelée `overview.md`
+ Chaque rubrique du guide de l&#39;utilisateur possède son propre répertoire.
   + S&#39;il existe une rubrique dans le guide intitulé *Implémentation*, le répertoire correspondant est `/implementation`
+ Tous les fichiers d&#39;image sont stockés `/assets` à la racine du guide de l&#39;utilisateur.
   + Toutes les images du `/assets` répertoire seront localisées.
   + Les images du `/no-localize` répertoire ne seront pas localisées (il existe une surprise !). Ceci permet de garantir que dans les versions loc, les ressources spécifiques ne sont pas reproduites inutilement.

## meta de niveau Guide de l&#39;utilisateur - données

+ Meta - data which décrit the user guide is stored in the `TOC.md`. Cela inclut :
   + product - nom du produit/fonctionnalité.
   + cloud - cloud auquel ce produit appartient.
   + audience - audience ou archétype à laquelle le guide est ciblé.
   + user-guide - nom du guide de l&#39;utilisateur.

## Métadonnées au niveau de la page - données

+ Métadonnées : les données requises pour décrire un document sont stockées dans chaque page individuelle. Cela inclut :
   + title - titre de la page.
   + description - description de la page.
   + seo-title - titre alternatif.
   + seo-description - titre alternatif pour le référencement.
   + short-title - (champ facultatif).
   + index - oui/non - la page sera indexée par la plateforme de recherche d&#39;Adobe.
   + translate - yes/no - cette page sera localisée.
   + version utilisée principalement pour AEM et Campaign, pour indiquer la version du produit.
   + private-feature-pack - utilisé principalement pour AEM.
   + bêta : ce produit est-il en version bêta ?
   + redirect - peut être utilisée pour créer une référence à une nouvelle page, le cas échéant.
   + doc-type : référence (par défaut)/dépannage/développeur/développeur/kb/whitepboy.

## Plus d’informations

Pour obtenir des instructions de publication, des guides de style, des exemples et d&#39;autres ressources, consultez le document [Collaboration Documentation](https://git.corp.adobe.com/AdobeDocs/collaborative-doc-instructions)
