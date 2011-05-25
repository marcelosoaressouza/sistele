<?php
$this->breadcrumbs=array('Bolsistas'=>array('index'), 'Criar Bolsista',);
$this->menu=array(array('label'=>'Listar Todos', 'url'=>array('index')),);
?>

<?php echo $this->renderPartial('_form', array('modelBolsista'=>$modelBolsista, 'telecentro'=>Telecentro::model()->findAll()));?>