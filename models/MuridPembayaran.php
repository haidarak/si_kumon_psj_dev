<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_murid_pembayaran".
 *
 * @property int $id
 * @property int $murid_id
 * @property int $kelas_id
 * @property string $tanggal_bayar
 * @property double $tagihan
 * @property double $pembayaran
 * @property int $bulan_tagihan
 * @property int $tahun_tagihan
 * @property string $bukti_bayar
 * @property string $keterangan
 */
class MuridPembayaran extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_murid_pembayaran';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['murid_id', 'tanggal_bayar', 'tagihan', 'pembayaran', 'bulan_tagihan', 'tahun_tagihan'], 'required'],
            [['murid_id', 'kelas_id', 'bulan_tagihan', 'tahun_tagihan'], 'integer'],
            [['tanggal_bayar'], 'safe'],
            [['tagihan', 'pembayaran'], 'number'],
            [['bukti_bayar', 'keterangan'], 'string'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'murid_id' => Yii::t('app', 'Murid ID'),
            'kelas_id' => Yii::t('app', 'Kelas ID'),
            'tanggal_bayar' => Yii::t('app', 'Tanggal Bayar'),
            'tagihan' => Yii::t('app', 'Tagihan'),
            'pembayaran' => Yii::t('app', 'Pembayaran'),
            'bulan_tagihan' => Yii::t('app', 'Bulan Tagihan'),
            'tahun_tagihan' => Yii::t('app', 'Tahun Tagihan'),
            'bukti_bayar' => Yii::t('app', 'Bukti Bayar'),
            'keterangan' => Yii::t('app', 'Keterangan'),
        ];
    }

    /**
     * @inheritdoc
     * @return MuridPembayaranQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MuridPembayaranQuery(get_called_class());
    }

    public function getMurid(){
        return $this->hasOne(Murid::classname(), ['id' => 'murid_id']);
    }
}
