<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_murid_kontak".
 *
 * @property int $id
 * @property int $murid_id
 * @property string $peranan
 * @property string $nama
 * @property int $usia
 * @property string $pekerjaan
 * @property string $telepon
 */
class MuridKontak extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_murid_kontak';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['murid_id', 'peranan', 'nama', 'usia', 'pekerjaan', 'telepon'], 'required'],
            [['murid_id', 'usia'], 'integer'],
            [['peranan', 'pekerjaan'], 'string', 'max' => 100],
            [['nama'], 'string', 'max' => 150],
            [['telepon'], 'string', 'max' => 20],
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
            'peranan' => Yii::t('app', 'Peranan'),
            'nama' => Yii::t('app', 'Nama'),
            'usia' => Yii::t('app', 'Usia'),
            'pekerjaan' => Yii::t('app', 'Pekerjaan'),
            'telepon' => Yii::t('app', 'Telepon'),
        ];
    }

    /**
     * @inheritdoc
     * @return MuridKontakQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MuridKontakQuery(get_called_class());
    }
}
