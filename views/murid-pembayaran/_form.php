<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Murid;
use app\models\Kelas;
use yii\jui\DatePicker

/* @var $this yii\web\View */
/* @var $model app\models\MuridPembayaran */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="murid-pembayaran-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'murid_id')->dropDownList(
        ArrayHelper::map(Murid::find()->all(),'id', 'nama'),
        ['prompt'=>'Pilih Murid']
    ) ?>

    <?= $form->field($model, 'kelas_id')->dropDownList(
        ArrayHelper::map(Kelas::find()->all(),'id', 'nama'),
        ['prompt'=>'Pilih Kelas (boleh kosong)']
    ) ?>

    <?= $form->field($model, 'tanggal_bayar')->widget(DatePicker::className(), [
        'dateFormat' => 'php:y-m-d',] 
    ) ?>

    <?= $form->field($model, 'tagihan')->textInput() ?>

    <?= $form->field($model, 'pembayaran')->textInput() ?>

    <?= $form->field($model, 'bulan_tagihan')->textInput() ?>

    <?= $form->field($model, 'tahun_tagihan')->textInput() ?>

    <?= $form->field($model, 'bukti_bayar')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'keterangan')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
