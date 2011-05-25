<div class="view">

<b><?php echo CHtml::encode($data->getAttributeLabel('id'));?>:</b>
<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id));?><br />

<b><?php echo CHtml::encode($data->getAttributeLabel('nome'));?>:</b>
<?php echo CHtml::encode($data->nome);?><br />

<b><?php echo CHtml::encode($data->getAttributeLabel('email'));?>:</b>
<?php echo CHtml::encode($data->email);?><br />

<b><?php echo CHtml::encode($data->getAttributeLabel('telefones'));?>:</b>
<?php echo CHtml::encode($data->telefones);?><br />

<b><?php echo CHtml::encode($data->getAttributeLabel('tipo_bolsa'));?>:</b>
<?php echo CHtml::encode($data->tipo_bolsa);?><br />

<b><?php echo CHtml::encode($data->getAttributeLabel('inicio_vigencia'));?>:</b>
<?php echo CHtml::encode($data->inicio_vigencia );?><br />

<b><?php echo CHtml::encode($data->getAttributeLabel('termino_vigencia'));?>:</b>
<?php echo CHtml::encode($data->termino_vigencia);?><br />

<b><?php echo CHtml::encode($data->getAttributeLabel('url_lattes'));?>:</b>
<?php echo CHtml::encode($data->url_lattes);?><br />

</div>