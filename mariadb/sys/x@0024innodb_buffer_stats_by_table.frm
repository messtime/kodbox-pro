TYPE=VIEW\r
query=select if(locate(\'.\',`ibp`.`TABLE_NAME`) = 0,\'InnoDB System\',replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',1),\'`\',\'\')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',-1),\'`\',\'\') AS `object_name`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate(\'.\',`ibp`.`TABLE_NAME`) = 0,\'InnoDB System\',replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',1),\'`\',\'\')),replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',-1),\'`\',\'\') order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc\r
md5=db96ddcff1919852c2c98356a6e4cc80\r
updatable=0\r
algorithm=2\r
definer_user=mariadb.sys\r
definer_host=localhost\r
suid=0\r
with_check_option=0\r
timestamp=2022-10-16 16:26:43\r
create-version=2\r
source=SELECT IF(LOCATE(\'.\', ibp.table_name) = 0, \'InnoDB System\', REPLACE(SUBSTRING_INDEX(ibp.table_name, \'.\', 1), \'`\', \'\')) AS object_schema,\n       REPLACE(SUBSTRING_INDEX(ibp.table_name, \'.\', -1), \'`\', \'\') AS object_name,\n       SUM(IF(ibp.compressed_size = 0, 16384, compressed_size)) AS allocated,\n       SUM(ibp.data_size) AS data,\n       COUNT(ibp.page_number) AS pages,\n       COUNT(IF(ibp.is_hashed, 1, NULL)) AS pages_hashed,\n       COUNT(IF(ibp.is_old, 1, NULL)) AS pages_old,\n       ROUND(IFNULL(SUM(ibp.number_records)/NULLIF(COUNT(DISTINCT ibp.index_name), 0), 0)) AS rows_cached\n  FROM information_schema.innodb_buffer_page ibp\n WHERE table_name IS NOT NULL\n GROUP BY object_schema, object_name\n ORDER BY SUM(IF(ibp.compressed_size = 0, 16384, compressed_size)) DESC;\r
client_cs_name=utf8mb3\r
connection_cl_name=utf8mb3_general_ci\r
view_body_utf8=select if(locate(\'.\',`ibp`.`TABLE_NAME`) = 0,\'InnoDB System\',replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',1),\'`\',\'\')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',-1),\'`\',\'\') AS `object_name`,sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if(`ibp`.`IS_HASHED`,1,NULL)) AS `pages_hashed`,count(if(`ibp`.`IS_OLD`,1,NULL)) AS `pages_old`,round(ifnull(sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where `ibp`.`TABLE_NAME` is not null group by if(locate(\'.\',`ibp`.`TABLE_NAME`) = 0,\'InnoDB System\',replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',1),\'`\',\'\')),replace(substring_index(`ibp`.`TABLE_NAME`,\'.\',-1),\'`\',\'\') order by sum(if(`ibp`.`COMPRESSED_SIZE` = 0,16384,`ibp`.`COMPRESSED_SIZE`)) desc\r
mariadb-version=100903\r
