<!-- search-form -->
<div class="wide form">
<?php $form=$this->beginWidget('CActiveForm', array('action'=>Yii::app()->createUrl($this->route), 'method'=>'get',));?>

<div class="row">
<?php echo $form->label($model,'codigo');?>
<?php echo $form->textField($model,'codigo',array('size'=>5,'maxlength'=>5));?>
</div>

<div class="row">
<?php echo $form->label($model,'nome');?>
<?php echo $form->textField($model,'nome',array('size'=>60,'maxlength'=>128));?>
</div>

<div class="row">
<?php echo $form->label($model,'responsavel');?>
<?php echo $form->textField($model,'responsavel',array('size'=>60,'maxlength'=>128));?>
</div>

<div class="row">
<?php echo $form->label($model,'email');?>
<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>128));?>
</div>

<div class="row">
<?php echo $form->label($model,'telefones');?>
<?php echo $form->textField($model,'telefones',array('size'=>16,'maxlength'=>16));?>
</div>

<div class="row">
<?php echo $form->label($model,'proponente');?>
<?php echo $form->textField($model,'proponente',array('size'=>60,'maxlength'=>128));?>
</div>

<div class="row buttons">
<?php echo CHtml::submitButton('Buscar');?>
</div>

<?php $this->endWidget();?>

</div>
<!-- search-form -->