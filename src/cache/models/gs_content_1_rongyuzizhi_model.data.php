<?php
if (!defined('IN_FINECMS')) exit();
return array (
  'types' => 
  array (
    'id' => 'int',
    'catid' => 'smallint',
    'content' => 'mediumtext',
    'zhanshitupian' => 'varchar',
    'shijian' => 'bigint',
  ),
  'fields' => 
  array (
    0 => 'id',
    1 => 'catid',
    2 => 'content',
    3 => 'zhanshitupian',
    4 => 'shijian',
  ),
  'primary_key' => 'id',
);