<?php
  $this->breadcrumbs = array('Relatório(s) dos Telecentros',);
  $this->menu=array(array('label'=>'Criar', 'url'=>array('create')),);
?>

<?php
  $columns = array();

  if(isSet($_POST['column']))
  {
    $i = 0;
  
    foreach ($_POST['column'] as $column)
    {
      $columns[$i++] = $column;
      Yii::app()->request->cookies['report-'.$i] = new CHttpCookie('report-'.$i, $column);
    }

    Yii::app()->request->cookies['report'] = new CHttpCookie('report', $i);
    
    $selected = $columns;
    
  
  }
  else if (!empty(Yii::app()->request->cookies['report']->value))
  {
      $x = Yii::app()->request->cookies['report']->value;
      
      for ($i = 0 ; $i <= $x; $i++)
      {
        if(!empty(Yii::app()->request->cookies['report-'.$i]->value))
            $selected[$i] = Yii::app()->request->cookies['report-'.$i]->value;
        
      }
      
      $columns = $selected;
  }
  else
  {
    $columns = array(
                        'codigo',
                        'nome',
//                        'endereco',
                        'cep',
                        'municipio',
                        'uf',
//                        'ponto_de_referencia',
                        'responsavel',
//                        'email',
                        'telefones',
                        'proponente',
                        'tipo_de_conexao',
                        'tipo_de_telecentro',
//                        'observacao',
                    );
    $selected = '';

  }

  echo CHtml::beginForm();
  echo CHtml::checkBoxList('column', $selected,
                           array(
                    'codigo' => 'Código'
                    ,'nome' => 'Nome'
                    ,'endereco' => 'Endereço'
                    ,'cep' => 'CEP'
                    ,'municipio' => 'Município'
                    ,'uf' => 'UF'
                    ,'ponto_de_referencia' => 'Ponto de Referência'
                    ,'responsavel' => 'Responsável'
                    ,'email' => 'E-Mail(s)'
                    ,'telefones' => 'Telefone(s)'
                    ,'proponente' => 'Proponente'
                    ,'tipo_de_conexao' => 'Tipo de Conexão'
                    ,'tipo_de_telecentro' => 'Tipo de Telecentroi'
                    ,'observacao' => 'Observação'
                                )

                          );
  echo '<br/><br/>'.CHtml::submitButton('Gerar Relatório');
  echo CHtml::endForm();
  
  echo '<br/>';
  
  $dataProvider = $model->search();
  $dataProvider->pagination->pageSize = 250;

  $this->widget('zii.widgets.grid.CGridView', array('id'=>'telecentro-grid', 'dataProvider'=> $dataProvider,
                'enableSorting'=> true,
                'filter'=>$model,
                'ajaxUpdate'=>'false',
                'columns'=> $columns)
               );
?>