<?php
$this->breadcrumbs = array('Telecentros'=>array('index'), $model->nome);

$this->menu = array(
                    array('label'=>'Listar Todos', 'url'=>array('index')),
                    array('label'=>'Criar', 'url'=>array('create')),
                    array('label'=>'Atualizar', 'url'=>array('update', 'id'=>$model->id)),
                    array('label'=>'Apagar', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
                   );
?>

<?php $this->widget('zii.widgets.CDetailView', array(
                        'data'=>$model,
                        'attributes'=>array(
                        'codigo',
                        'nome',
                        'endereco',
                        'cep',
                        'municipio',
                        'uf',
                        'ponto_de_referencia',
                        'responsavel',
                        'email',
                        'telefones',
                        'proponente',
                        'tipo_de_conexao',
                        'tipo_de_telecentro',
                        'observacao',
                        ),
                    ));
?>