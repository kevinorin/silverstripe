<?php

global $project;
$project = 'mysite';

global $databaseConfig;
// $databaseConfig = array(
//     "type" => 'MySQLDatabase',
//     "server" => "localhost", 
//     "username" => "modbdste_cmsuser", 
//     "password" => "5f@dmOD2zgp1", 
//     "database" => "modbdste_maincms",
//     "path" => '',
// );

$databaseConfig = array(
    "type" => 'MySQLDatabase',
    "server" => "localhost", 
    "username" => "root", 
    "password" => "aa123", 
    "database" => "dbsteps",
    "path" => '',
);

Director::set_environment_type('dev');

// Set the default locale for a multi-lingual site
Translatable::set_default_locale('en_US');
 
// Define which objects you wish to include in your translations (can be any DataObject)
Object::add_extension('SiteTree', 'Translatable');
Object::add_extension('SiteConfig', 'Translatable');

i18n::set_locale('en_US');
Translatable::set_allowed_locales(array(
    'en_US',
    'es_ES'
 ));

FulltextSearchable::enable();