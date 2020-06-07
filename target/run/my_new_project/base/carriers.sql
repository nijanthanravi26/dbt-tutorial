

  create or replace view `pivotal-bonbon-279114`.`dbt_dev`.`carriers`
  OPTIONS()
  as (
    select 
    Code as carrier_id,
    Description as carrier_name
from 
    `pivotal-bonbon-279114`.`dbt_dataset`.`carriers`
  );
