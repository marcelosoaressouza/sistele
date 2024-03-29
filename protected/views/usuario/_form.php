<div class="form">

               <?php $form=$this->beginWidget('CActiveForm', array(
                               'id'=>'usuario-form',
                               'enableAjaxValidation'=>false,
                               ));
?>

<p class="note">Fields with <span class="required">*</span> are required.</p>

                                                    <?php echo $form->errorSummary($model);
?>

<div class="row">
                   <?php echo $form->labelEx($model,'username');
?>
<?php echo $form->textField($model,'username',array('size'=>32,'maxlength'=>32));
?>
<?php echo $form->error($model,'username');
?>
</div>

<div class="row">
                   <?php echo $form->labelEx($model,'password');
?>
<?php echo $form->textField($model,'password',array('size'=>16,'maxlength'=>16));
?>
<?php echo $form->error($model,'password');
?>
</div>

<div class="row">
                   <?php echo $form->labelEx($model,'email');
?>
<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>256));
?>
<?php echo $form->error($model,'email');
?>
</div>

<div class="row buttons">
                   <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save');
?>
</div>

<?php $this->endWidget();
?>

</div><!-- form -->