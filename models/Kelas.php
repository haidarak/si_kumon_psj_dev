<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_kelas".
 *
 * @property int $id
 * @property string $nama
 */
class Kelas extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_kelas';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama'], 'required'],
            [['nama'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'nama' => Yii::t('app', 'Nama Kelas'),
        ];
    }

    /**
     * @inheritdoc
     * @return KelasQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new KelasQuery(get_called_class());
    }
}
