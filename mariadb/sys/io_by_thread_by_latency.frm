TYPE=VIEW\r
query=select if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,\'/\',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,\'@\',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) where `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like \'wait/io/file/%\' and `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0 group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,\'/\',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,\'@\',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc\r
md5=dce25697cb41a32a6d6e919f318d5d12\r
updatable=0\r
algorithm=2\r
definer_user=mariadb.sys\r
definer_host=localhost\r
suid=0\r
with_check_option=0\r
timestamp=2022-10-16 16:26:44\r
create-version=2\r
source=SELECT IF(processlist_id IS NULL,\n             SUBSTRING_INDEX(name, \'/\', -1),\n             CONCAT(processlist_user, \'@\', processlist_host)\n          ) user,\n       SUM(count_star) total,\n       sys.format_time(SUM(sum_timer_wait)) total_latency,\n       sys.format_time(MIN(min_timer_wait)) min_latency,\n       sys.format_time(AVG(avg_timer_wait)) avg_latency,\n       sys.format_time(MAX(max_timer_wait)) max_latency,\n       thread_id,\n       processlist_id\n  FROM performance_schema.events_waits_summary_by_thread_by_event_name\n  LEFT JOIN performance_schema.threads USING (thread_id)\n WHERE event_name LIKE \'wait/io/file/%\'\n   AND sum_timer_wait > 0\n GROUP BY thread_id, processlist_id, user\n ORDER BY SUM(sum_timer_wait) DESC;\r
client_cs_name=utf8mb3\r
connection_cl_name=utf8mb3_general_ci\r
view_body_utf8=select if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,\'/\',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,\'@\',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`)) where `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like \'wait/io/file/%\' and `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0 group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,if(`performance_schema`.`threads`.`PROCESSLIST_ID` is null,substring_index(`performance_schema`.`threads`.`NAME`,\'/\',-1),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,\'@\',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc\r
mariadb-version=100903\r
