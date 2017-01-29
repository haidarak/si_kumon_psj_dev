<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_murid_cuti".
 *
 * @property int $id
 * @property int $murid_id
 * @property string $tanggal_mulai
 * @property string $tanggal_selesai
 */
class MuridCuti extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_murid_cuti';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['murid_id', 'tanggal_mulai', 'tanggal_selesai'], 'required'],
            [['murid_id'], 'integer'],
            [['tanggal_mulai', 'tanggal_selesai'], 'safe'],
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
            'tanggal_mulai' => Yii::t('app', 'Tanggal Mulai'),
            'tanggal_selesai' => Yii::t('app', 'Tanggal Selesai'),
        ];
    }

    /**
     * @inheritdoc
     * @return MuridCutiQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MuridCutiQuery(get_called_class());
    }
}
