# 🔥 Cartographie SIG des Incendies de Forêt en France - 2024

> Analyse géospatiale des incendies de forêt en France 2024 — PostgreSQL/PostGIS + QGIS

---

## 📋 Description

Projet personnel de cartographie géospatiale réalisé avec **PostgreSQL/PostGIS** et **QGIS**.  
Analyse et visualisation de **1 367 incendies de forêt** survenus en France en 2024, à partir des données open data officielles de la **BDIFF** (Base de Données sur les Incendies de Forêt).

---

## 🎯 Objectifs

- Importer et structurer des données open data dans une base **PostGIS**
- Réaliser des **analyses spatiales** par département et par commune
- Produire une **cartographie choroplèthe** en deux versions (V1 et V2)
- Illustrer la démarche itérative d'amélioration d'une carte géomatique

---

## 📊 Résultats clés

| Indicateur | Valeur |
|---|---|
| Nombre d'incendies recensés | 1 367 |
| Surface totale brûlée | 2 768 hectares |
| Département le plus touché (nb) | Bouches-du-Rhône (225 incendies) |
| Département le plus touché (surface) | Hérault (702 hectares) |
| Commune la plus touchée | Gigean - 34 (310 hectares) |

---

## 🗺️ Cartes produites

### V1 — Jointure directe CSV/Communes
Carte choroplèthe basée sur une jointure directe entre le CSV brut et les communes françaises.

### V2 — Vue PostGIS agrégée
Carte choroplèthe améliorée utilisant une vue SQL qui cumule toutes les surfaces brûlées par commune — représentation plus précise et complète.

---

## 🛠️ Outils utilisés

- **PostgreSQL 18** — Système de gestion de base de données
- **PostGIS** — Extension spatiale de PostgreSQL
- **QGIS** — Logiciel SIG open source
- **Excel** — Nettoyage du fichier CSV
- **BDIFF / data.gouv.fr** — Source des données open data
- **france-geojson** (Grégoire David) — Contours des communes françaises
