<?php
  $this->pageTitle=Yii::app()->name . ' - Contato';
  $this->breadcrumbs=array('Contato',);
?>

<?php if(Yii::app()->user->hasFlash('contact')): ?>
  <div class="flash-success">
    <?php echo Yii::app()->user->getFlash('contact');?>
  </div>

<?php else: ?>

<div class="form">
  <?php $form=$this->beginWidget('CActiveForm');?>
  <?php echo $form->errorSummary($model);?>

<div class="row">
  <?php echo $form->labelEx($model,'Nome');?>
  <?php echo $form->textField($model,'name');?>
</div>

<div class="row">
  <?php echo $form->labelEx($model,'Email');?>
  <?php echo $form->textField($model,'email');?>
</div>

<div class="row">
  <?php echo $form->labelEx($model,'Assunto');?>
  <?php echo $form->textField($model,'subject',array('size'=>32,'maxlength'=>128));?>
</div>

<div class="row">
  <?php echo $form->labelEx($model,'');?>
  <?php echo $form->textArea($model,'body',array('rows'=>5, 'cols'=>53));?>
</div>

<!--

<?php if(CCaptcha::checkRequirements()): ?>
<div class="row">
  <?php echo $form->labelEx($model,'verifyCode');?>
<div>
  <?php $this->widget('CCaptcha');?>
  <?php echo $form->textField($model,'verifyCode');?>
</div>
<div class="hint">Por favor coloque as letras que você visualiza para confirmar o envio.</div>
<?php endif; ?>
-->

<div class="row buttons">
  <?php echo CHtml::submitButton('Enviar'); ?>
</div>

<?php $this->endWidget();?>

</div>
<!-- form -->

<?php endif;?>

<div align="right"<img src="../images/contato.png" alt="Sobre"/></div>