<?php
  $this->pageTitle=Yii::app()->name . ' - Acessar';
  $this->breadcrumbs=array('Acessar',);
?>
<br/><br/>
<center>
<div class="form">
  <?php $form=$this->beginWidget('CActiveForm', array('id'=>'login-form',
                                                      'enableAjaxValidation'=>true,));

?>

<div class="row">
<?php echo $form->labelEx($model,'Login: ');?>
<?php echo $form->textField($model,'username');?>
<?php echo $form->error($model,'username');?>
</div>
<div class="row">
<?php echo $form->labelEx($model,'Senha: ');?>
<?php echo $form->passwordField($model,'password');?>
<?php echo $form->error($model,'password');?>
</div>
<div class="row rememberMe">
<?php echo $form->checkBox($model,'rememberMe');?>
<?php echo $form->label($model,'rememberMe');?>
<?php echo $form->error($model,'rememberMe');?>
</div>

<div class="row buttons"><?php echo CHtml::submitButton('Acessar');?>
</div>

<?php $this->endWidget();?>
</div><!-- form -->
</center>

<div align="right"<img src="../images/contato.png" alt="Sobre"/></div>
