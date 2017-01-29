<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\TingkatanBiaya;
use app\models\Pegawai;
use yii\jui\DatePicker

/* @var $this yii\web\View */
/* @var $model app\models\Murid */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="murid-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kelamin')->dropDownList(
        ['Laki-Laki'=>'Laki-Laki','Perempuan'=>'Perempuan'],
        ['prompt'=>'Pilih Jenis Kelamin']
    ) ?>    

    <?= $form->field($model, 'tanggal_lahir')->widget(DatePicker::className(), [
        'dateFormat' => 'php:y-m-d',] 
    ) ?>

    <?= $form->field($model, 'alamat')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'kodepos')->textInput() ?>

    <?= $form->field($model, 'tingkatan_biaya_id')->dropDownList(
        ArrayHelper::map(TingkatanBiaya::find()->all(),'id', 'nama'),
        ['prompt'=>'Pilih Tingkat Pendidikan']
    ) ?>

    <?= $form->field($model, 'nama_sekolah')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'no_anggota')->textInput() ?>

    <?= $form->field($model, 'no_kursus')->textInput() ?>

    <?= $form->field($model, 'pegawai_id')->dropDownList(
        ArrayHelper::map(Pegawai::find()->all(),'id', 'nama'),
        ['prompt'=>'Pilih Mentor']
    ) ?>

    <?= $form->field($model, 'motivasi')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'catatan_khusus')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tanggal_masuk')->widget(DatePicker::className(), [
        'dateFormat' => 'php:y-m-d',] 
    ) ?>

    <?= $form->field($model, 'tanggal_selesai')->widget(DatePicker::className(), [
        'dateFormat' => 'php:y-m-d',] 
    ) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Save'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
