<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_murid_sejarah".
 *
 * @property int $id
 * @property int $murid_id
 * @property string $no_kursus_sebelum
 * @property string $pembimbing_sebelum
 * @property string $tipang_sebelum
 * @property string $kemajuan_sebelum
 * @property string $tanggal_masuk_sebelum
 * @property string $tanggal_keluar_sebelum
 */
class MuridSejarah extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_murid_sejarah';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['murid_id', 'no_kursus_sebelum', 'pembimbing_sebelum', 'tipang_sebelum', 'kemajuan_sebelum', 'tanggal_masuk_sebelum', 'tanggal_keluar_sebelum'], 'required'],
            [['murid_id'], 'integer'],
            [['tanggal_masuk_sebelum', 'tanggal_keluar_sebelum'], 'safe'],
            [['no_kursus_sebelum'], 'string', 'max' => 20],
            [['pembimbing_sebelum'], 'string', 'max' => 150],
            [['tipang_sebelum', 'kemajuan_sebelum'], 'string', 'max' => 50],
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
            'no_kursus_sebelum' => Yii::t('app', 'No Kursus Sebelum'),
            'pembimbing_sebelum' => Yii::t('app', 'Pembimbing Sebelum'),
            'tipang_sebelum' => Yii::t('app', 'Tipang Sebelum'),
            'kemajuan_sebelum' => Yii::t('app', 'Kemajuan Sebelum'),
            'tanggal_masuk_sebelum' => Yii::t('app', 'Tanggal Masuk Sebelum'),
            'tanggal_keluar_sebelum' => Yii::t('app', 'Tanggal Keluar Sebelum'),
        ];
    }

    /**
     * @inheritdoc
     * @return MuridSejarahQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MuridSejarahQuery(get_called_class());
    }
}
