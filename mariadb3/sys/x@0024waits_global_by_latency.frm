TYPE=VIEW\r
query=select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> \'idle\' and `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc\r
md5=63c324ddff171469768e3ef704df8c1e\r
updatable=1\r
algorithm=1\r
definer_user=mariadb.sys\r
definer_host=localhost\r
suid=0\r
with_check_option=0\r
timestamp=2022-10-16 16:26:45\r
create-version=2\r
source=SELECT event_name AS event,\n       count_star AS total,\n       sum_timer_wait AS total_latency,\n       avg_timer_wait AS avg_latency,\n       max_timer_wait AS max_latency\n  FROM performance_schema.events_waits_summary_global_by_event_name\n WHERE event_name != \'idle\'\n   AND sum_timer_wait > 0\n ORDER BY sum_timer_wait DESC;\r
client_cs_name=utf8mb3\r
connection_cl_name=utf8mb3_general_ci\r
view_body_utf8=select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> \'idle\' and `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0 order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc\r
mariadb-version=100903\r
