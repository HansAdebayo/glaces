{{ config(materialized='materialized_view') }}

select
    parfum,
    count(*) as nb_ventes,
    sum(prix) as ca
from {{ ref('ventes') }}
group by parfum
