select 
    code as airport_id,
    description as airport_name
from 
    {{ source('dbt_dataset', 'airports') }}