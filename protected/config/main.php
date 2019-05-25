<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Urgench branch of TUIT',
    'sourceLanguage'=>'en',
    'language'=>'uz',
    'theme' => 'custom',
	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
        'admin',
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'123',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),

	),

	// application components
	'components'=>array(
		'authManager' => array(
			// Будем использовать свой менеджер авторизации
			'class' => 'PhpAuthManager',
			// Роль по умолчанию. Все, кто не админы, модераторы и юзеры — гости.
			'defaultRoles' => array('guest'),
		),
		'user'=>array(
			// enable cookie-based authentication
			'class' => 'WebUser',
			'allowAutoLogin'=>true,
		),
		'mailer' => array(
			'class' => 'application.extensions.mailer.EMailer',
			'pathViews' => 'application.views.email',
			'pathLayouts' => 'application.views.layouts',
			'testMode' => false,
			'layout' => 'email',
		),
		// uncomment the following to enable URLs in path-format
		'request'=>array(
				'class'=>'DLanguageHttpRequest',
		),
		'urlManager'=>array(
            'class'=>'DLanguageUrlManager',
			'urlFormat'=>'path',
            'showScriptName'=>false,
			'rules'=>array(
                '/'=>array('site/index'),
				'auth'=>'site/login',
                'about'=>array('site/page',array('view'=>'about')),
                'category/<hash:[\w\W]+>'=>'category/view',
				'content/<hash:[\w\W]+>'=>'content/view',
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),
		'db'=>array(
			'connectionString' => 'mysql:host=localhost;dbname=ubtuit',
			'emulatePrepare' => true,
			'username' => 'root',
			'password' => '',
			'charset' => 'utf8',
		),
		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
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

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
        'translatedLanguages'=>array(
            'uz'=>"UZ",
            'ru'=>'РУ',
            'en'=>'EN',
        ),
		'address'=>array(
			'uz'=>'Al-Xorazmiy ko\'chasi, 110-uy',
			'ru'=>'ул. Ал-Хорезми, дом 110',
			'en'=>'Al-Khorezmi street, 110',
		),
		'org'=>array(
			'uz'=>'Muhammad Al-Xorazmiy nomidagi Toshkent axborot texnologiyalari universiteti Urganch filiali',
			'ru'=>'Ургенческий филиал Ташкентского университета информационных технологий имени Мухаммада Ал-Хорезми',
			'en'=>'Urgench branch of Tashkent university of information technologies named after Muhammad Al-Khorezmi',
		),
		'city'=>array(
			'uz'=>'Urganch, Xorazm',
			'ru'=>'Ургенч, Хорезм',
			'en'=>'Urgench, Khorezm',
		),
		'salt'=>'dsh4Bus78&n*JHVBT%bsak',
		'tel'=>'(998) 62 224 61 37',
		'fax'=>'(998) 62 224 61 37',
        'defaultLanguage'=>'uz',
		'adminEmail'=>'tuituf@tuit.uz',
		'smtp' => array(
			"host" => "smtp.googlemail.com:465",
			"debug" => 0,
			"auth" => true,
			"port" => 2525,
			"username" => "ubtuit@gmail.com",
			"password" => "sender159!@#125",
			"replyto" => "no-reply@ubtuit.uz",
			"fromname" => "TUIT Urgench branch",
			"from" => "admin@ubtuit.uz",
			"charset" => "utf-8",
		)
	),
);