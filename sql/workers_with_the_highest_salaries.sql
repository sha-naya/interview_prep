with
table1 as (select worker_id from worker where salary IN (select max(salary) from worker)),
table2 as (select t.worker_title from title t inner join table1 t1 on t.worker_ref_id = t1.worker_id)
select * from table2