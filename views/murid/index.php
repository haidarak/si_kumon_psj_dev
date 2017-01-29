<?php

use yii\helpers\Html;
use yii\grid\GridView;
use app\models\Pegawai;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MuridSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Kelola Murid');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="murid-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Tambah Murid'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'no_anggota',
            'nama',
            'nama_sekolah',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
