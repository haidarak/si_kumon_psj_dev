<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_murid_status_log".
 *
 * @property int $id
 * @property int $murid_id
 * @property int $status_id
 * @property string $date
 */
class MuridStatusLog extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_murid_status_log';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['murid_id', 'status_id', 'date'], 'required'],
            [['murid_id', 'status_id'], 'integer'],
            [['date'], 'safe'],
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
            'status_id' => Yii::t('app', 'Status ID'),
            'date' => Yii::t('app', 'Date'),
        ];
    }

    /**
     * @inheritdoc
     * @return MuridStatusLogQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MuridStatusLogQuery(get_called_class());
    }
}
