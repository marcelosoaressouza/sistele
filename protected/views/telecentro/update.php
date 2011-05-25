<?php
$this->breadcrumbs=array('Telecentros'=>array('index'),
                       $modelTelecentro->nome=>array('view','id'=>$modelTelecentro->id),
                       'Atualizar',);

$this->menu=array(array('label'=>'Listar Todos', 'url'=>array('index')),
                array('label'=>'Criar', 'url'=>array('create')),
                array('label'=>'Visualizar Detalhe', 'url'=>array('view', 'id'=>$modelTelecentro->id)),
            );
?>

<?php echo $this->renderPartial('_form', array('modelTelecentro'=>$modelTelecentro));?>