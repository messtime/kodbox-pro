TYPE=VIEW\r
query=select `s2`.`avg_us` AS `avg_us`,ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on(`s1`.`avg_us` <= `s2`.`avg_us`)) group by `s2`.`avg_us` having ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) > 0.95 order by ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) limit 1\r
md5=9d4c91bfffb022a4413bbda627e2c569\r
updatable=0\r
algorithm=2\r
definer_user=mariadb.sys\r
definer_host=localhost\r
suid=0\r
with_check_option=0\r
timestamp=2022-10-16 16:26:44\r
create-version=2\r
source=SELECT s2.avg_us avg_us,\n       IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM performance_schema.events_statements_summary_by_digest), 0), 0) percentile\n  FROM sys.x$ps_digest_avg_latency_distribution AS s1\n  JOIN sys.x$ps_digest_avg_latency_distribution AS s2\n    ON s1.avg_us <= s2.avg_us\n GROUP BY s2.avg_us\nHAVING IFNULL(SUM(s1.cnt)/NULLIF((SELECT COUNT(*) FROM performance_schema.events_statements_summary_by_digest), 0), 0) > 0.95\n ORDER BY percentile\n LIMIT 1;\r
client_cs_name=utf8mb3\r
connection_cl_name=utf8mb3_general_ci\r
view_body_utf8=select `s2`.`avg_us` AS `avg_us`,ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on(`s1`.`avg_us` <= `s2`.`avg_us`)) group by `s2`.`avg_us` having ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) > 0.95 order by ifnull(sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0),0) limit 1\r
mariadb-version=100903\r
