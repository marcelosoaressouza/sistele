<?php

class TelecentroController extends Controller
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
    return array(
             'accessControl', // perform access control for CRUD operations
           );
  }

  /**
   * Specifies the access control rules.
   * This method is used by the 'accessControl' filter.
   * @return array access control rules
   */
  public function accessRules()
  {
    return array(
             array('allow',
                   'actions'=>array('options'),
                   'users'=>array('*'),
                  ),
             array('allow', // allow authenticated user to perform 'create' and 'update' actions
                   'actions'=>array('index', 'view', 'create', 'update', 'delete', 'report', 'mail', 'viewbox'),
                   'users'=>array('@'),
                  ),
             array('allow', // allow admin user to perform 'admin' and 'delete' actions
                   'actions'=>array('admin'),
                   'users'=>array('admin'),
                  ),
             array('deny',  // deny all users
                   'users'=>array('*'),
                  ),
           );
  }

  /**
   * Lists selectedmodels.
  */
  public function actionOptions()
  {
    if(isSet($_POST['emails']))
    {
      $emails = $_POST['emails'];
    }

    if(isSet($_REQUEST['Adicionar']))
    {
      $this->redirect(array('telecentro/create'));
    }

    else if(isSet($_REQUEST['Relatorios']))
    {
      $this->redirect(array('telecentro/report'));
    }

    else if(isSet($_REQUEST['Mail']))
    {
      $this->redirect(array('telecentro/mail', 'emails' => $emails));
    }
  }

  public function actionMail()
  {
    if(isset($_POST['destinatario']))
    {
      $mailer = Yii::createComponent('application.extensions.mailer.EMailer');
      $mailer->IsSMTP();
      $mailer->Host = 'sistele.ambientedigital.org';
      $mailer->From = 'sistele@ambientedigital.org';
      $mailer->FromName = 'Sistema Telecentro Ambiente Digital - MMA';
      $mailer->CharSet = 'UTF-8';
      $mailer->Subject = $_POST['assunto'];
      $mailer->Body = $_POST['mensagem'];
      $mailer->AddAddress($_POST['destinatario']);
      $mailer->Send();

      $this->render('confirm', array('action' => array(0 => 'mail')));
    }

    else
    {
      $emails = $_GET['emails'];
      $to = array();

      foreach($emails as $str)
      {
        preg_match_all("/[A-Za-z0-9._-]+@\w+[\.\w+]+\b/", $str, $output);

        foreach($output as $emails)
        {
          foreach($emails as $email)
          {
            array_push($to, $email);
          }
        }


      }

      $emailList = array_unique($to);

      $this->render('mailto', array('emails' => $emailList));

    }
  }

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionView($id)
  {
    $model = new Telecentro;

    $this->render('view',array('model'=>$model->findByPk($id)));
    // $this->render('view',array('model'=>$model->with('adequacao')->findByPk($id),));
  }

  /**
   * Displays a particular model.
   * @param integer $id the ID of the model to be displayed
   */
  public function actionViewBox($id)
  {
    $model = new Telecentro;

    $this->renderpartial('viewbox',array('model' => $model->findByPk($id)));

  }

  /**
   * Creates a new model.
   * If creation is successful, the browser will be redirected to the 'view' page.
   */
  public function actionCreate()
  {
    $modelTelecentro = new Telecentro;

    if(isset($_POST['Telecentro']))
    {
      $modelTelecentro->attributes=$_POST['Telecentro'];

      if($modelTelecentro->save())
      {
        $this->redirect(array('view','id'=>$modelTelecentro->id));
      }
    }

    $this->render('create',array('modelTelecentro'=>$modelTelecentro));
  }

  /**
   * Updates a particular model.
   * If update is successful, the browser will be redirected to the 'view' page.
   * @param integer $id the ID of the model to be updated
   */
  public function actionUpdate($id)
  {
    $modelTelecentro=Telecentro::model()->findByPk((int)$id);

    if(isset($_POST['Telecentro']))
    {
      $modelTelecentro->attributes=$_POST['Telecentro'];

      if($modelTelecentro->save())
      {
        $this->redirect(array('view','id'=>$modelTelecentro->id));
      }
    }

    $this->render('update',array('modelTelecentro'=>$modelTelecentro));
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
      $this->loadModel($id)->delete();

      if(!isset($_GET['ajax']))
        $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
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
    $model=new Telecentro('search');
    $model->unsetAttributes();

    if(isset($_GET['Telecentro']))
    {
      $model->attributes=$_GET['Telecentro'];
    }


    $this->render('index',array('model'=>$model));

  }

  /**
   * Manages all models.
   */
  public function actionAdmin()
  {
    $model=new Telecentro('search');
    $model->unsetAttributes();

    if(isset($_GET['Telecentro']))
    {
      $model->attributes=$_GET['Telecentro'];
    }

    $this->render('admin',array('model'=>$model));
  }

  /**
   * Report(s)
   */
  public function actionReport()
  {
    $model = new Telecentro('search');
    $model->unsetAttributes();

    if(isset($_GET['Telecentro']))
    {
      $model->attributes=$_GET['Telecentro'];
    }

    $this->render('report', array('model'=>$model,));

  }

  /**
   * Returns the data model based on the primary key given in the GET variable.
   * If the data model is not found, an HTTP exception will be raised.
   * @param integer the ID of the model to be loaded
   */
  public function loadModel($id)
  {
    $model=Telecentro::model()->findByPk((int)$id);

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
    if(isset($_POST['ajax']) && $_POST['ajax']==='telecentro-form')
    {
      echo CActiveForm::validate($model);
      Yii::app()->end();
    }
  }
}
