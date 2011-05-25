<?php
$this->breadcrumbs=array( 'Bolsistas'=>array('index'), 'Gerenciar',
                   );

$this->menu=array(array('label'=>'Listar Bolsista', 'url'=>array('index')), array('label'=>'Criar Bolsista', 'url'=>array('create')),);

Yii::app()->clientScript->registerScript('search', "
        $('.search-button').click(function(){
        $('.search-form').toggle();
        return false;
        });
        $('.search-form form').submit(function(){
        $.fn.yiiGridView.update('bolsista-grid', {
        data: $(this).serialize()
        });
        return false;
        });
        ");
?>

<h1>Gerenciar Bolsistas</h1>

<?php echo CHtml::link('Busca Avançada','#',array('class'=>'search-button'));?>

<div class="search-form" style="display:none">
                                   <?php $this->renderPartial('_search',array(
                                           'model'=>$model,
                                               ));
?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
                        'id'=>'bolsista-grid',
                        'dataProvider'=>$model->search(),
                        'filter'=>$model,
                        'columns'=>array(
                            'nome',
                            'email',
                            'telefones',
                            'tipo_bolsa',
                            'inicio_vigencia',
                            'termino_vigencia',
                            'url_lattes',
                            'id_telecentro',
                            'telecentro.nome',
                            array(
                                'class'=>'CButtonColumn',
                            ),
                        ),
                    ));
?>
