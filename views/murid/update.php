<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Murid */

$this->title = Yii::t('app', 'Ubah {modelClass} : ', [
    'modelClass' => 'Murid',
]) . $model->nama;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Murids'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->nama, 'url' => ['view', 'id' => $model->nama]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="murid-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
