-- Activation de l'extension PostGIS
CREATE EXTENSION IF NOT EXISTS postgis;
 
-- Suppression de la table si elle existe déjà
DROP TABLE IF EXISTS incendies;
 
-- Création de la table incendies
CREATE TABLE incendies (
    annee                           INTEGER,
    numero                          INTEGER,
    departement                     VARCHAR(3),
    code_insee                      VARCHAR(10),
    commune                         VARCHAR(100),
    date_alerte                     TIMESTAMP,
    surface_totale                  BIGINT,
    surface_foret                   BIGINT,
    surface_maquis                  BIGINT,
    autres_surfaces_naturelles      BIGINT,
    surfaces_agricoles              BIGINT,
    autres_surfaces                 BIGINT,
    nature                          VARCHAR(100),
    cause                           VARCHAR(100),
    deces_batiments                 VARCHAR(10)
);
