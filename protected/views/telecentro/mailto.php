<?php
  $this->pageTitle=Yii::app()->name . ' - Enviar E-Mail';
  $this->breadcrumbs=array('Enviar E-Mail',);
?>

<?php

if (empty($emails))
    {
    echo "<br/><br/><center><h2>Nenhum destinatário selecionado.</h2></center>";
    
}
else
{
?>

<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array('action'=>Yii::app()->createUrl($this->route), 'method'=>'post',));?>
    
<div class="row">
  <?php echo CHtml::label('Destinatário(s)', 'label-destinatario');?><br/>
  <?php echo CHtml::textArea('destinatario', implode(', ', $emails), array('rows'=>5, 'cols'=>100));?>
</div>

<div class="row">
  <?php echo CHtml::label('Assunto', 'label-assunto');?><br/>
  <?php echo CHtml::textField('assunto', 'Sem Assunto', array('size' => 64));?>
</div>

<div class="row">
  <?php echo CHtml::label('Mensagem','label-mensagem');?><br/>
  <?php echo CHtml::textArea('mensagem', "\n\n---\ncontato@ambientedigital.org\nhttp://blog.ambientedigital.org/", array('rows'=>10, 'cols'=>100));?>
</div>

<div class="row buttons">
  <?php echo CHtml::submitButton('Enviar'); ?>
</div>

<?php
    $this->endWidget();
}

?>

</div>