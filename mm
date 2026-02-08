#!/usr/bin/env php
<?php
if(!defined("MMPATH")){
    define("MMPATH",dirname(__FILE__));
}
if(!defined("MMCLASSESPATH")){
    define("MMCLASSESPATH",MMPATH."/classes/Migrations/");
}
if(!defined("MMFILE")){
    define("MMFILE",MMPATH.'/newmigrationtemplate.subs');
}
$classData = file_get_contents(MMFILE,'r+');
$time      = time();
$file_path = MMCLASSESPATH."{$time}.php";
$f         = fopen($file_path,'a+');
fwrite($f,$classData);
fclose($f);
print ("Migration File: $file_path created!\n");
