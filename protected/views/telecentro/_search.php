<!-- search-form -->
<div class="wide form">
<?php $form=$this->beginWidget('CActiveForm', array('action'=>Yii::app()->createUrl($this->route), 'method'=>'get',));?>

<div class="row">
<?php echo $form->label($model,'codigo');?>
<?php echo $form->textField($model,'codigo',array('size'=>5,'maxlength'=>5));?>
</div>

<div class="row">
<?php echo $form->label($model,'municipio');?>
<?php echo $form->textField($model,'municipio',array('size'=>24,'maxlength'=>32));?>
</div>
    
<div class="row">
<?php echo $form->label($model,'uf');?>
<?php echo $form->textField($model,'uf',array('size'=>4,'maxlength'=>4));?>
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
<?php echo $form->label($model,'proponente');?>
<?php echo $form->textField($model,'proponente',array('size'=>60,'maxlength'=>128));?>
</div>

<div class="row buttons">
<?php echo CHtml::submitButton('Buscar');?>
</div>

<?php $this->endWidget();?>

</div>
<!-- search-form -->