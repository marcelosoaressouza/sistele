<!-- Telecentro Form -->
<div class="form">
    
<?php $form=$this->beginWidget('CActiveForm', array('id'=>'telecentro-form','enableAjaxValidation'=>false,));?>

<p class="note">Campos com <span class="required">*</span> são obrigatórios.</p>

<?php echo $form->errorSummary($modelTelecentro);?>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'codigo');?><br/>
<?php echo $form->textField($modelTelecentro,'codigo',array('size'=>5,'maxlength'=>5));?>
<?php echo $form->error($modelTelecentro,'codigo');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'nome');?><br/>
<?php echo $form->textField($modelTelecentro,'nome',array('size'=>64,'maxlength'=>128));?>
<?php echo $form->error($modelTelecentro,'nome');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'endereco');?><br/>
<?php echo $form->textArea($modelTelecentro,'endereco', array('rows'=>2, 'cols'=>102));?>
<?php echo $form->error($modelTelecentro,'endereco');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'cep');?><br/>
<?php echo $form->textField($modelTelecentro,'cep',array('size'=>8,'maxlength'=>16));?>
<?php echo $form->error($modelTelecentro,'cep');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'municipio');?><br/>
<?php echo $form->textField($modelTelecentro,'municipio',array('size'=>24,'maxlength'=>128));?>
<?php echo $form->error($modelTelecentro,'municipio');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'uf');?><br/>
<?php echo $form->textField($modelTelecentro,'uf',array('size'=>2,'maxlength'=>2));?>
<?php echo $form->error($modelTelecentro,'uf');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'ponto_de_referencia');?>
<br/>
<?php echo $form->textArea($modelTelecentro,'ponto_de_referencia',array('rows'=>2, 'cols'=>102));?>
<?php echo $form->error($modelTelecentro,'ponto_de_referencia');?>
</div>


<div class="row">
<?php echo $form->labelEx($modelTelecentro,'responsavel');?><br/>
<?php echo $form->textField($modelTelecentro,'responsavel',array('size'=>64,'maxlength'=>128));?>
<?php echo $form->error($modelTelecentro,'responsavel');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'email');?><br/>
<?php echo $form->textField($modelTelecentro,'email',array('size'=>64,'maxlength'=>128));?>
<?php echo $form->error($modelTelecentro,'email');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'telefones');?><br/>
<?php echo $form->textArea($modelTelecentro,'telefones',array('rows'=>2, 'cols'=>102));?>
<?php echo $form->error($modelTelecentro,'telefones')?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'proponente');?><br/>
<?php echo $form->textField($modelTelecentro,'proponente',array('size'=>32,'maxlength'=>128));?>
<?php echo $form->error($modelTelecentro,'proponente');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'tipo_de_conexao');?><br/>
<?php echo $form->textField($modelTelecentro,'tipo_de_conexao',array('size'=>24,'maxlength'=>256));?>
<?php echo $form->error($modelTelecentro,'tipo_de_conexao');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'tipo_de_telecentro');?><br/>
<?php echo $form->textField($modelTelecentro,'tipo_de_telecentro',array('size'=>24,'maxlength'=>256));?>
<?php echo $form->error($modelTelecentro,'tipo_de_telecentro');?>
</div>

<div class="row">
<?php echo $form->labelEx($modelTelecentro,'observacao');?><br/>
<?php echo $form->textArea($modelTelecentro,'observacao',array('rows'=>2, 'cols'=>102));?>
<?php echo $form->error($modelTelecentro,'observacao')?>
</div>

<div class="row buttons">
<?php echo CHtml::submitButton($modelTelecentro->isNewRecord ? 'Criar' : 'Salvar');?>
</div>

<?php $this->endWidget();?>

</div>
<!-- Telecentro Form -->