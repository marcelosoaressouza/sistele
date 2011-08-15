<!--
Sistema Telecentros (sistele) Ambiente Digital.
Brasília, Distrito Federal, Brasil. 2011.

Equipe:
Marcelo Soares Souza (marcelo at juntadados dot org)
Fabiana Sherine Ganem dos Santos (fabiana at juntadados dot org)

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

http://www.gnu.org/licenses/gpl-2.0.html
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br" lang="pt-br">
<head>
  <title><?php echo CHtml::encode($this->pageTitle);?></title>
  
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="language" content="pt-br" />

  <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
  <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />

  <!--[if lt IE 8]>
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
  <![endif]-->

  <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />
  <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/outros.css" />
  
	<?php
		$cs = Yii::app()->clientScript;  
		$cs->registerCoreScript('jquery');    
		$cs->registerCoreScript('jquery.ui');    

		$cs->registerCssFile(Yii::app()->baseUrl    . '/3rdparty/jquery.alerts/jquery.alerts.css');
		$cs->registerScriptFile(Yii::app()->baseUrl . '/3rdparty/jquery.alerts/jquery.alerts.js', CClientScript::POS_HEAD);
		
                $cs->registerCssFile(Yii::app()->baseUrl    . '/3rdparty/jquery.fancybox-1.3.1/fancybox/jquery.fancybox-1.3.1.css');
                $cs->registerScriptFile(Yii::app()->baseUrl . '/3rdparty/jquery.fancybox-1.3.1/fancybox/jquery.fancybox-1.3.1.js', CClientScript::POS_HEAD);
                $cs->registerScriptFile(Yii::app()->baseUrl . '/js/sistele.js', CClientScript::POS_HEAD);
	?>
  

</head>

<body>
<div class="container" id="page">
  <!-- header -->
  <div id="header">
    <div id="logo"><img src="/images/logo.png"/></div>
  </div>
  <!-- header -->

  <!-- mainmenu -->
  <div id="mainmenu">
    <?php $this->widget('zii.widgets.CMenu', array('items'=>array(
                                             array('label'=>'Inicio','url'=>array('/site/index')),
                                             // array('label'=>'Quem Somos?', 'url'=>array('/site/page', 'view'=>'about')),
                                             array('label'=>'Telecentros', 'url'=>array('/telecentro')),
                                             //array('label'=>'Contato', 'url'=>array('/site/contact')),
                                             array('label'=>'Acessar', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                                             array('label'=>'Sair ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
                                             ),));
    ?>
  </div>
  <!-- mainmenu -->

  <?php $this->widget('zii.widgets.CBreadcrumbs', array('links'=>$this->breadcrumbs,));?>

  <!-- begin of content -->

  <?php echo $content; ?>
  
  <!-- end of content -->

  <!-- begin of footer -->
  <div id="footer">
    <strong>Sistema Telecentros Ambiente Digital 1.0.3</strong><br/>
    Este é um <a href="http://pt.wikipedia.org/wiki/Software_livre">Software Livre</a> licenciado sobre a <a href="http://www.gnu.org/licenses/gpl-2.0.html">GPLv2.</a><br/>
    Desenvolvido utilizando o Framework <a href="http://www.yiiframework.com/">Yii</a> (PHP5).<br/>
  </div>
  <!-- end of footer -->

</div>
</body>
</html>
