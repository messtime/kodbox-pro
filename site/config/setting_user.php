<?php 
// $config['database'] = array (
//   'DB_TYPE' => 'mysqli',
//   'DB_HOST' => 'db',
//   'DB_PORT' => 3306,
//   'DB_USER' => 'root',
//   'DB_PWD' => 'adminpwd',
//   'DB_NAME' => 'kodbox',
//   'DB_SQL_LOG' => true,
//   'DB_FIELDS_CACHE' => true,
//   'DB_SQL_BUILD_CACHE' => false,
// );
$config['cache']['sessionType'] = 'redis';
$config['cache']['cacheType'] = 'redis';
$config['cache']['redis']['host'] = 'redis';
$config['cache']['redis']['port'] = '6379';

$config['settings']['updload']['ChunkSize'] = 1024*1024*5;
$config['settings']['updload']['Threads'] = 15;
// $config['settings']['updload']['downloadSpeed'] = 100*1024*1024;

// $config['settings']['upload']['chunkSize'] = 1024*1024*5;

$config['database'] = array (
  'DB_TYPE' => 'mysqli',
  'DB_NAME' => 'kodbox',
  'DB_HOST' => 'mariadb',
  'DB_PORT' => 3306,
  'DB_USER' => 'root',
  'DB_PWD' => 'adminpwd',
  'DB_SQL_LOG' => true,
  'DB_FIELDS_CACHE' => true,
  'DB_SQL_BUILD_CACHE' => false,
);