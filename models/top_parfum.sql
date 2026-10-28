{{ config(materialized='materialized_view') }}

select parfum, ca
from {{ ref('ca_par_parfum') }}
order by ca desc
limit 1