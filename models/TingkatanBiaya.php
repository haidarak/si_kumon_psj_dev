<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_tingkatan_biaya".
 *
 * @property integer $id
 * @property string $nama
 * @property double $biaya
 */
class TingkatanBiaya extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_tingkatan_biaya';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama', 'biaya'], 'required'],
            [['biaya'], 'number'],
            [['nama'], 'string', 'max' => 150],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'nama' => Yii::t('app', 'Tingkat Pendidikan'),
            'biaya' => Yii::t('app', 'Biaya'),
        ];
    }

    /**
     * @inheritdoc
     * @return TingkatanBiayaQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TingkatanBiayaQuery(get_called_class());
    }
}
