<?php 
$config['database'] = array (
  'DB_TYPE' => 'mysqli',
  'DB_HOST' => 'db',
  'DB_PORT' => 3306,
  'DB_USER' => 'root',
  'DB_PWD' => 'adminpwd',
  'DB_NAME' => 'kodbox',
  'DB_SQL_LOG' => true,
  'DB_FIELDS_CACHE' => true,
  'DB_SQL_BUILD_CACHE' => false,
);
$config['cache']['sessionType'] = 'redis';
$config['cache']['cacheType'] = 'redis';
$config['cache']['redis']['host'] = 'redis';
$config['cache']['redis']['port'] = '6379';