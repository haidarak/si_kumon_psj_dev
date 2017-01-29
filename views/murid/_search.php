<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\MuridSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="murid-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'no_anggota') ?>

    <?= $form->field($model, 'nama') ?>

    <?= $form->field($model, 'nama_sekolah') ?>

    <?= //$form->field($model, 'kelamin') ?>

    <?= //$form->field($model, 'tanggal_lahir') ?>

    <?php // echo $form->field($model, 'alamat') ?>

    <?php // echo $form->field($model, 'kodepos') ?>

    <?php // echo $form->field($model, 'no_anggota') ?>

    <?php // echo $form->field($model, 'no_kursus') ?>

    <?php // echo $form->field($model, 'pegawai_id') ?>

    <?php // echo $form->field($model, 'motivasi') ?>

    <?php // echo $form->field($model, 'catatan_khusus') ?>

    <?php // echo $form->field($model, 'tanggal_masuk') ?>

    <?php // echo $form->field($model, 'tanggal_selesai') ?>

    <?php // echo $form->field($model, 'tingkatan_biaya_id') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
