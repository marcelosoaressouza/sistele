<?php
return array(
           'sourceLanguage' =>'en_US',
           'language' =>'pt',

           'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
           'name'=>'Sistema Telecentro Ambiente Digital',

           'preload'=>array('log'),

           'import'=>array(
               'application.models.*',
               'application.components.*',
           ),

           'modules'=>array(
               /*
               'gii'=>array(
                   'class'=>'system.gii.GiiModule',
                   'password'=>'sistele',
               ),
               */
           ),

           // application components
           'components'=>array(
               // 'cache' => array ('class' => 'CMemCache','servers'=>array(array('host'=>'localhost','port'=>11211,),),),
               'user'=>array('allowAutoLogin'=>true,),
               // uncomment the following to enable URLs in path-format
               'urlManager'=>array(
                   'urlFormat'=>'path',
                   'showScriptName'=>false,
                   'rules'=>array(
                       '<controller:\w+>/<id:\d+>'=>'<controller>/view',
                       '<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
                       '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
                   ),
               ),
                'db'=>array(
                        'connectionString' => 'pgsql:host=localhost;dbname=sistele',
                        'emulatePrepare' => true,
                        // 'schemaCachingDuration' => 3600,
                        'username' => 'sistele',
                        'password' => '1234sistele1234',
                        'charset' => 'utf8',
                ),
               
               'errorHandler'=>array('errorAction'=>'site/error',),
               'log'=>array(
                   'class'=>'CLogRouter',
                   'routes'=>array(
                       array(
                           'class'=>'CFileLogRoute',
                           'levels'=>'error, warning',
                       ),
                       // uncomment the following to show log messages on web pages
                       /*
                       array(
                           'class'=>'CWebLogRoute',
                       ),
                       */
                   ),
               ),
           ),

           'params'=>array('adminEmail'=>'contato@ambientedigital.org',),

       );