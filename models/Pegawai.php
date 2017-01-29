<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_pegawai".
 *
 * @property integer $id
 * @property string $nama
 * @property string $nomor_pegawai
 */
class Pegawai extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_pegawai';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama', 'nomor_pegawai'], 'required'],
            [['nama'], 'string', 'max' => 150],
            [['nomor_pegawai'], 'string', 'max' => 20],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'nama' => Yii::t('app', 'Nama Pegawai'),
            'nomor_pegawai' => Yii::t('app', 'Nomor Pegawai'),
        ];
    }

    /**
     * @inheritdoc
     * @return PegawaiQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new PegawaiQuery(get_called_class());
    }
}
