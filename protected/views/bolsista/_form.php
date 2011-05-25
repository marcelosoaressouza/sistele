<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array('id'=>'bolsista-form', 'enableAjaxValidation'=>false,));?>

<p class="note">Campos com <span class="required">*</span> são obrigatórios.</p>

<?php echo $form->errorSummary($modelBolsista);?>

<div class="row">
<?php echo $form->labelEx($modelBolsista,'tipo_bolsa');?>
<?php echo $form->radioButtonList($modelBolsista,'tipo_bolsa', array('483'=>'483','241'=>'241'), array('separator'=>''));?>
<?php echo $form->error($modelBolsista,'tipo_bolsa');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelBolsista,'nome');?><br/>
<?php echo $form->textField($modelBolsista,'nome',array('size'=>48,'maxlength'=>256));?>
<?php echo $form->error($modelBolsista,'nome');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelBolsista,'email');?><br/>
<?php echo $form->textField($modelBolsista,'email',array('size'=>32,'maxlength'=>128));?>
<?php echo $form->error($modelBolsista,'email');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelBolsista,'telefones');?><br/>
<?php echo $form->textField($modelBolsista,'telefones');?>
<?php echo $form->error($modelBolsista,'telefones');?>
</div>

<div class="row">
<?php $data = $modelBolsista->isNewRecord ? array('value' => date('Y-m-d')) : array('value' => $modelBolsista->getAttribute('inicio_vigencia')); ?>

<?php echo $form->labelEx($modelBolsista,'inicio_vigencia');?><br/>

<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
    'name'=>'Bolsista[inicio_vigencia]',
    'value' => $data['value'],
    'model'=>$modelBolsista,
    'options'=>array('showAnim'=>'fold', 'dateFormat'=>'yy-mm-dd',),
    'htmlOptions'=>array('style'=>'height:20px;',),
));

?>
<?php echo $form->error($modelBolsista,'inicio_vigencia');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelBolsista,'termino_vigencia');?><br/>
<?php $data = $modelBolsista->isNewRecord ? array('value' => date('Y-m-d')) : array('value' => $modelBolsista->getAttribute('termino_vigencia')); ?>
<?php $this->widget('zii.widgets.jui.CJuiDatePicker', array(
    'name'=>'Bolsista[termino_vigencia]',
    'value' => $data['value'],
    'model'=>$modelBolsista,
    'options'=>array('showAnim'=>'fold', 'dateFormat'=>'yy-mm-dd',),
    'htmlOptions'=>array('style'=>'height:20px;',),
));
?>
<?php echo $form->error($modelBolsista,'termino_vigencia');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelBolsista,'url_lattes');?><br/>
<?php echo $form->textField($modelBolsista,'url_lattes');?>
<?php echo $form->error($modelBolsista,'url_lattes');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelBolsista,'id_telecentro');?><br/>
<?php echo CHtml::activeDropDownList($modelBolsista, 'id_telecentro', CHtml::listData(Telecentro::model()->findAll(), 'id', 'codigo'), array('empty'=>'Escolha um Telecentro'));?>
<?php echo $form->error($modelBolsista,'id_telecentro');?>

</div>

<div class="row buttons">
<?php echo CHtml::submitButton($modelBolsista->isNewRecord ? 'Criar' : 'Salvar');?>
</div>

<?php $this->endWidget();?>

</div><!-- form -->
