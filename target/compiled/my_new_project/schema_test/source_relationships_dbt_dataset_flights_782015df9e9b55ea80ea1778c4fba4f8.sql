




select count(*)
from (
    select ORIGIN_AIRPORT_ID as id from `pivotal-bonbon-279114`.`dbt_dataset`.`flights`
) as child
left join (
    select airport_id as id from `pivotal-bonbon-279114`.`dbt_dev`.`airports`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null

