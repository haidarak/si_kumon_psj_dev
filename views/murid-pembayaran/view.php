<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\MuridPembayaran */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Murid Pembayarans'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="murid-pembayaran-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'murid_id',
            'kelas_id',
            'tanggal_bayar',
            'tagihan',
            'pembayaran',
            'bulan_tagihan',
            'tahun_tagihan',
            'bukti_bayar:ntext',
            'keterangan:ntext',
        ],
    ]) ?>

</div>
