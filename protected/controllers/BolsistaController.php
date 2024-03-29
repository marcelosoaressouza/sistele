<?php

class BolsistaController extends Controller
{
  /**
   * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
   * using two-column layout. See 'protected/views/layouts/column2.php'.
   */
  public $layout='//layouts/column1';

  /**
   * @return array action filters
   */
  public function filters()
  {
    return array('accessControl');
  }

  /**
   * Specifies the access control rules.
   * This method is used by the 'accessControl' filter.
   * @return array access control rules
   */
  public function accessRules()
  {
    return array(
             array('allow',  // allow all users to perform 'index' and 'view' actions
                   'actions'=>array('index'),
                   'users'=>array('*'),
                  ),
             array('allow', // allow authenticated user to perform 'create' and 'update' actions
                   'actions'=>array('create','update','view', 'ver'),
                   'users'=>array('@'),
                  ),
             array('allow', // allow admin user to perform 'admin' and 'delete' actions
                   'actions'=>array('admin','delete'),
                   'users'=>array('admin'),
                  ),
             array('deny',  // deny all users
                   'users'=>array('*'),
                  ),
           );
  }

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id)
  {
    $model = new Bolsista;
    $this->render('view',array('model'=>$model->findByPk($id),));
  }

  /**
   * Creates a new model.
   * If creation is successful, the browser will be redirected to the 'view' page.
   */
  public function actionCreate()
  {
    $modelBolsista=new Bolsista;

    if(isset($_POST['Bolsista']))
    {
      $modelBolsista->attributes=$_POST['Bolsista'];

      if($modelBolsista->save())
      {
        $this->redirect(array('view','id'=>$modelBolsista->id));
      }
    }

    $this->render('create',array(
                    'modelBolsista'=>$modelBolsista,
                    'telecentro'=>Telecentro::model()->findAll()));
  }

  /**
   * Updates a particular model.
   * If update is successful, the browser will be redirected to the 'view' page.
   * @param integer $id the ID of the model to be updated
   */
  public function actionUpdate($id)
  {
    $modelBolsista=Bolsista::model()->findByPk((int)$id);

    if(isset($_POST['Bolsista']))
    {
      $modelBolsista->attributes=$_POST['Bolsista'];

      if($modelBolsista->save())
      {
        $this->redirect(array('view','id'=>$modelBolsista->id));
      }
    }

    $this->render('update',array('modelBolsista'=>$modelBolsista,));
  }


  /**
   * Deletes a particular model.
   * If deletion is successful, the browser will be redirected to the 'index' page.
   * @param integer $id the ID of the model to be deleted
   */
  public function actionDelete($id)
  {
    if(Yii::app()->request->isPostRequest)
    {
      // we only allow deletion via POST request
      $this->loadModel($id)->delete();

      // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
      if(!isset($_GET['ajax']))
      {
        $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
      }
    }

    else
    {
      throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
    }
  }

  /**
   * Lists all models.
   */
  public function actionIndex()
  {
    $dataProvider=new CActiveDataProvider('Bolsista');
    $this->render('index',array('dataProvider'=>$dataProvider,));
  }

  /**
   * Lista todos os Bolsista de um Telecentro
   */
  public function actionVer()
  {
    $dados = new CActiveDataProvider('Bolsista', array('criteria'=>array('condition'=>'id_telecentro='.$_GET["id"])));

    $this->render('ver', array('dados'=>$dados));
  }

  /**
   * Manages all models.
   */
  public function actionAdmin()
  {
    $model=new Bolsista('search');
    $model->unsetAttributes();

    if(isset($_GET['Bolsista']))
    {
      $model->attributes=$_GET['Bolsista'];
    }

    $this->render('admin',array('model'=>$model,));
  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer the ID of the model to be loaded
   */
  public function loadModel($id)
  {
    $model=Bolsista::model()->findByPk((int)$id);

    if($model===null)
    {
      throw new CHttpException(404,'The requested page does not exist.');
    }

    return $model;
  }

  /**
   * Performs the AJAX validation.
   * @param CModel the model to be validated
   */
  protected function performAjaxValidation($model)
  {
    if(isset($_POST['ajax']) && $_POST['ajax']==='bolsista-form')
    {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }
}
