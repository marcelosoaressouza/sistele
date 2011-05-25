<?php
$this->breadcrumbs=array('Bolsistas'=>array('index'),
                       $modelBolsista->nome=>array('view','id'=>$modelBolsista->id),
                       'Atualizar Bolsista',
                   );

$this->menu=array(
                array('label'=>'Listar Bolsista', 'url'=>array('index')),
                array('label'=>'Criar Bolsista', 'url'=>array('create')),
                array('label'=>'Ver Bolsista', 'url'=>array('view', 'id'=>$modelBolsista->id)),
            );
?>

<?php echo $this->renderPartial('_form', array('modelBolsista'=>$modelBolsista));?>