<?php
  $this->breadcrumbs=array('Telecentros'=>array('index'), 'Criar',);
  $this->menu=array(array('label'=>'Listar Todos', 'url'=>array('index')),);
?>

<?php echo $this->renderPartial('_form', array('modelTelecentro'=>$modelTelecentro));?>