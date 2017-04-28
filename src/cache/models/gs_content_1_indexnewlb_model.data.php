<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'catid' => 'smallint',
    'content' => 'mediumtext',
    'zhanshitu' => 'varchar',
    'dianjitiaozhuan' => 'varchar',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'catid',
    2 => 'content',
    3 => 'zhanshitu',
    4 => 'dianjitiaozhuan',
  ),
  'primary_key' => 'id',
);