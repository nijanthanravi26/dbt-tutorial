



select count(*)
from (

    select
        code

    from `pivotal-bonbon-279114`.`dbt_dataset`.`carriers`
    where code is not null
    group by code
    having count(*) > 1

) validation_errors

