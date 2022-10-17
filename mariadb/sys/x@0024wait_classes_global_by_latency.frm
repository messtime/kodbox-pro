TYPE=VIEW\r
query=select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,\'/\',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> \'idle\' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,\'/\',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc\r
md5=b107bc5e0b1c409651fc3872b551fbd6\r
updatable=0\r
algorithm=2\r
definer_user=mariadb.sys\r
definer_host=localhost\r
suid=0\r
with_check_option=0\r
timestamp=2022-10-16 16:26:45\r
create-version=2\r
source=SELECT SUBSTRING_INDEX(event_name,\'/\', 3) AS event_class,\n       SUM(COUNT_STAR) AS total,\n       SUM(sum_timer_wait) AS total_latency,\n       MIN(min_timer_wait) AS min_latency,\n       IFNULL(SUM(sum_timer_wait) / NULLIF(SUM(COUNT_STAR), 0), 0) AS avg_latency,\n       MAX(max_timer_wait) AS max_latency\n  FROM performance_schema.events_waits_summary_global_by_event_name\n WHERE sum_timer_wait > 0\n   AND event_name != \'idle\'\n GROUP BY SUBSTRING_INDEX(event_name,\'/\', 3)\n ORDER BY SUM(sum_timer_wait) DESC;\r
client_cs_name=utf8mb3\r
connection_cl_name=utf8mb3_general_ci\r
view_body_utf8=select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,\'/\',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 and `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> \'idle\' group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,\'/\',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc\r
mariadb-version=100903\r
