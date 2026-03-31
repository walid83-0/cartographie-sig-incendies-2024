-- ============================================
-- Projet : Cartographie SIG Incendies 2024
-- Fichier : create_view.sql
-- Description : Création de la vue agrégée
--               des incendies par commune
--               (utilisée pour la carte V2)
-- ============================================
 
-- Suppression de la vue si elle existe déjà
DROP VIEW IF EXISTS incendies_par_commune;
 
-- Création de la vue agrégée par commune
-- Cette vue cumule toutes les surfaces brûlées
-- par commune pour une représentation
-- cartographique précise (carte V2)
CREATE VIEW incendies_par_commune AS
SELECT
    code_insee,
    commune,
    departement,
    COUNT(*)                        AS nb_incendies,
    SUM(surface_totale)             AS surface_totale_m2,
    SUM(surface_totale) / 10000.0   AS surface_hectares
FROM incendies
GROUP BY code_insee, commune, departement;
