<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Murid */

$this->title = $model->nama;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Murids'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="murid-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Ubah'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Hapus'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Anda yakin mau menghapus data ini?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'nama',
            'kelamin',
            'tanggal_lahir',
            'nama_sekolah',
            'alamat:ntext',
            'kodepos',
            'no_anggota',
            'no_kursus',
            'pegawai.nama',
            'motivasi:ntext',
            'catatan_khusus:ntext',
            'tanggal_masuk',
            'tanggal_selesai',
            'tingkatan.nama',
        ],
    ]) ?>

</div>
