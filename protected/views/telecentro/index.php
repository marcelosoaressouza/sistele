<?php
  $this->breadcrumbs=array('Telecentros',);
  $this->menu=array(array('label'=>'Criar', 'url'=>array('create')), array('label'=>'Relatório(s)', 'url'=>array('report')));
?>

<script type="text/javascript">
<!--
    function get_checkedbox() {
        var c_value = "";
        if (document.pressed == '')
        {
            for (var i = 0; i < document.frm.emails.length; i++)
            {
                if (document.frm.emails[i].checked) { c_value = c_value + document.frm.emails[i].value + "\n"; }    
            }
        
                    
            if (c_value == "")
            {
                jAlert ("Escolha ao menos um Telecentro na lista.", "Alerta Sistele");
                return false;
            }
        }
    }
-->
</script>

<?php
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
        });");
?>

<?php
    echo CHtml::link('Busca Avançada','#',array('class'=>'search-button'));
?>

<br/>

<!-- begin search-form -->
<div class="search-form" style="display:none">
    <?php $this->renderPartial('_search',array('model'=>$model));?>
</div>
<!-- end search-form -->

<?php
    echo CHtml::beginForm('/telecentro/options', 'post', array('id'=>'frm','name'=>'frm', 'onsubmit'=>'return get_checkedbox()'));
    echo '<center>';
    echo '&nbsp;&nbsp;'.CHtml::submitButton('Adicionar Novo Registro', array('name'=>'Adicionar' , 'onclick' => 'document.pressed=this.name'));
    echo '&nbsp;&nbsp;'.CHtml::submitButton('Relatório(s)'           , array('name'=>'Relatorios', 'onclick' => 'document.pressed=this.name'));
    echo '&nbsp;&nbsp;'.CHtml::submitButton('Enviar E-Mail'          , array('name'=>'Mail'      , 'onclick' => 'document.pressed=""'));
    echo '</center>';
?>

<?php

$dataProvider = $model->search();
$dataProvider->pagination->pageSize = 250;

$this->widget('zii.widgets.grid.CGridView', array(
                  'id'=>'telecentro-grid',
                  'dataProvider'=>$dataProvider,
                  'enableSorting'=>true,
                  //'filter'=>$model,
                  'columns'=>array(
                                   array('name' => ''  , 'value' => 'CHtml::checkBox("emails[]", null, array("value" => $data->email))', 'type'=>'raw', 'htmlOptions' => array('width'=>5), 'filter'=>false),
                                   array('name' => 'codigo'  , 'value' => 'CHtml::link($data->codigo, "/telecentro/viewBox/".$data->id, array("class"=>"viewbox"))', 'type'=>'raw', 'htmlOptions' => array('width'=>5), 'filter'=>false,),
                                   'nome',
                                   'responsavel',
                                   'email',
                                   'municipio',
                                   'uf',
//                                   'telefones',
                                   'proponente',
                                   array('class'=>'CButtonColumn',
                                         'template'=>'{view}{update}{delete}{bolsista}',
                                         'buttons'=>array('bolsista' => array('label'=>'Ver Bolsistas','imageUrl'=>Yii::app()->request->baseUrl.'/images/bolsista.png','url'=>'Yii::app()->createUrl("bolsista/ver", array("id"=>$data->id))',),),
                                        ),
                                 ),
              ));
?>

<?php echo CHtml::endForm(); ?>