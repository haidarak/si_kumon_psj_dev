<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\MuridPembayaranSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="murid-pembayaran-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'murid_id') ?>

    <?= $form->field($model, 'kelas_id') ?>

    <?= $form->field($model, 'tanggal_bayar') ?>

    <?= $form->field($model, 'tagihan') ?>

    <?php // echo $form->field($model, 'pembayaran') ?>

    <?php // echo $form->field($model, 'bulan_tagihan') ?>

    <?php // echo $form->field($model, 'tahun_tagihan') ?>

    <?php // echo $form->field($model, 'bukti_bayar') ?>

    <?php // echo $form->field($model, 'keterangan') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
