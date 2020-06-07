

  create or replace view `pivotal-bonbon-279114`.`dbt_dev`.`airports`
  OPTIONS()
  as (
    select 
    code as airport_id,
    description as airport_name
from 
    `pivotal-bonbon-279114`.`dbt_dataset`.`airports`
  );
