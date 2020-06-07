




select count(*)
from (
    select OP_UNIQUE_CARRIER as id from `pivotal-bonbon-279114`.`dbt_dataset`.`flights`
) as child
left join (
    select carrier_id as id from `pivotal-bonbon-279114`.`dbt_dev`.`carriers`
) as parent on parent.id = child.id
where child.id is not null
  and parent.id is null

