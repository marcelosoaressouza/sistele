<!-- search-form -->
<div class="wide form">

               <?php $form=$this->beginWidget('CActiveForm', array(
            'action'=>Yii::app()->createUrl($this->route),
            'method'=>'get',
            ));
?>

<div class="row">
<?php echo $form->label($model,'id');?>
<?php echo $form->textField($model,'id',array('size'=>10,'maxlength'=>10));?>
</div>

<div class="row">
<?php echo $form->label($model,'nome');?>
<?php echo $form->textField($model,'nome',array('size'=>60,'maxlength'=>256));?>
</div>


<div class="row">
<?php echo $form->label($model,'email');?>
<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>128));?>
</div>

<div class="row">
<?php echo $form->label($model,'telefones');?>
<?php echo $form->textField($model,'telefones');?>
</div>

<div class="row">
<?php echo $form->label($model,'tipo_bolsa');?>
<?php echo $form->textField($model,'tipo_bolsa');?>
</div>

<div class="row">
<?php echo $form->label($model,'inicio_vigencia');?>
<?php echo $form->textField($model,'inicio_vigencia');?>
</div>

<div class="row">
<?php echo $form->label($model,'termino_vigencia');?>
<?php echo $form->textField($model,'termino_vigencia');?>
</div>

    <div class="row">
<?php echo $form->label($model,'url_lattes');?>
<?php echo $form->textField($model,'url_lattes');?>
</div>

    <div class="row">
<?php echo $form->label($model,'id_telecentro');?>
<?php echo $form->textField($model,'id_telecentro',array('size'=>10,'maxlength'=>10));?>
</div>

<div class="row buttons">
<?php echo CHtml::submitButton('Buscar');?>
</div>

<?php $this->endWidget();?>

</div>
<!-- search-form -->