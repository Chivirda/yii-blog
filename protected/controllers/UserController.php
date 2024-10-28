<?php

class UserController extends Controller
{
	public function actionDelete(): void
	{
		$this->render('delete');
	}

	public function actionRegister(): void
{
    $model=new User('register');

    // uncomment the following code to enable ajax-based validation
    if(isset($_POST['ajax']) && $_POST['ajax']==='user-register-form')
    {
        echo CActiveForm::validate($model);
        Yii::app()->end();
    }

    if(isset($_POST['User']))
    {
        $model->attributes=$_POST['User'];
        if($model->validate())
        {
			$model->password=CPasswordHelper::hashPassword($model->password);
			if ($model->save(false)) {
				Yii::app()->user->setFlash('success', 'Пользователь успешно зарегистрирован!');
				$this->redirect(Yii::app()->homeUrl);
			}
        }
    }
    $this->render('register',array('model'=>$model));
}

	public function actionUpdate(): void
	{
		$this->render('update');
	}

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}
