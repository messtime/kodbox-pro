TYPE=VIEW\r
query=select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0 and `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> \'mysql\' and `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> \'PRIMARY\' order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME`\r
md5=fcec883d9422ee0089c8d60c48eb8238\r
updatable=1\r
algorithm=1\r
definer_user=mariadb.sys\r
definer_host=localhost\r
suid=0\r
with_check_option=0\r
timestamp=2022-10-16 16:26:44\r
create-version=2\r
source=SELECT object_schema,\n       object_name,\n       index_name\n  FROM performance_schema.table_io_waits_summary_by_index_usage\n WHERE index_name IS NOT NULL\n   AND count_star = 0\n   AND object_schema != \'mysql\'\n   AND index_name != \'PRIMARY\'\n ORDER BY object_schema, object_name;\r
client_cs_name=utf8mb3\r
connection_cl_name=utf8mb3_general_ci\r
view_body_utf8=select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null and `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0 and `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> \'mysql\' and `performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> \'PRIMARY\' order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME`\r
mariadb-version=100903\r
