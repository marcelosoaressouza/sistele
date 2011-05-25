<?php
$this->breadcrumbs = array('Bolsistas'=>array('index'), $model->nome,);

$this->menu = array(
                array('label'=>'Listar Todos os Bolsista', 'url'=>array('index')),
                array('label'=>'Criar Bolsista', 'url'=>array('create')),
                array('label'=>'Atualizar Bolsista', 'url'=>array('update', 'id'=>$model->id)),
                array('label'=>'Remover Bolsista', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
            );
?>

<h1><?php echo $model->nome;?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
                        'data'=>$model,
                        'attributes'=>array(
                            'nome',
                            'email',
                            'telefones',
                            'tipo_bolsa',
                            'inicio_vigencia',
                            'termino_vigencia',
                            'url_lattes',
                            array('name' => 'Telecentro', 'value'=> $model->telecentro->nome),
                        ),
                    ));
?>