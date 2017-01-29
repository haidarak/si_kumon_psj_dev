<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\MuridPembayaran */

$this->title = Yii::t('app', 'Create Murid Pembayaran');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Murid Pembayarans'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="murid-pembayaran-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
