{{ config(materialized='table') }}

SELECT
    ID_produit,
    Categorie,
    Sous_Categorie,
    Nom_du_produit
FROM {{ source('GOOGLE_DRIVE_TD', 'EXEMPLE_HYPERMARCHE_ACHATS') }}
