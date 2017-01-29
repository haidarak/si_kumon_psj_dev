<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MuridPembayaranSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Murid Pembayarans');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="murid-pembayaran-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Create Murid Pembayaran'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'murid_id',
            'kelas_id',
            'tanggal_bayar',
            'tagihan',
            // 'pembayaran',
            // 'bulan_tagihan',
            // 'tahun_tagihan',
            // 'bukti_bayar:ntext',
            // 'keterangan:ntext',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
