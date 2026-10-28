{{ config(materialized='materialized_view') }}

select
    parfum,
    count(*) as nb_ventes,
    sum(prix) as ca,
    avg(prix) as panier_moyen
from {{ ref('ventes') }}
group by parfum