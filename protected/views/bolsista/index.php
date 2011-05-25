<?php
$this->breadcrumbs=array('Bolsistas',);
$this->menu=array(array('label'=>'Criar Bolsista', 'url'=>array('create')),);
?>

<?php $this->widget('zii.widgets.CListView', array('dataProvider'=>$dataProvider, 'itemView'=>'_view',));?>
