<div class="view">

<b>
<?php echo CHtml::encode($data->getAttributeLabel('id'));?>:</b>
<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id));?>
<br />

<b>
<?php echo CHtml::encode($data->getAttributeLabel('codigo'));?>:</b>
<?php echo CHtml::encode($data->codigo);?><br />

<b>
<?php echo CHtml::encode($data->getAttributeLabel('nome'));?>:</b>
<?php echo CHtml::encode($data->nome);?><br />

<b>
<?php echo CHtml::encode($data->getAttributeLabel('responsavel'));?>:</b>
<?php echo CHtml::encode($data->responsavel);?><br />

<b>
<?php echo CHtml::encode($data->getAttributeLabel('email'));?>:</b>
<?php echo CHtml::encode($data->email);?><br />

<b>
<?php echo CHtml::encode($data->getAttributeLabel('telefones'));?>:</b>
<?php echo CHtml::encode($data->telefone);?><br />

<b>
<?php echo CHtml::encode($data->getAttributeLabel('proponente'));?>:</b>
<?php echo CHtml::encode($data->entidade_proponente);?><br />
</div>