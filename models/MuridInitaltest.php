<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_murid_initialtest".
 *
 * @property int $id
 * @property int $murid_id
 * @property string $jenis
 * @property string $waktu
 * @property int $jawaban_benar
 * @property int $titik_pangkal
 * @property int $kelompok
 */
class MuridInitaltest extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_murid_initialtest';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['murid_id', 'jenis', 'waktu', 'jawaban_benar', 'titik_pangkal', 'kelompok'], 'required'],
            [['murid_id', 'jawaban_benar', 'titik_pangkal', 'kelompok'], 'integer'],
            [['waktu'], 'safe'],
            [['jenis'], 'string', 'max' => 100],
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
            'jenis' => Yii::t('app', 'Jenis'),
            'waktu' => Yii::t('app', 'Waktu'),
            'jawaban_benar' => Yii::t('app', 'Jawaban Benar'),
            'titik_pangkal' => Yii::t('app', 'Titik Pangkal'),
            'kelompok' => Yii::t('app', 'Kelompok'),
        ];
    }

    /**
     * @inheritdoc
     * @return MuridInitaltestQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MuridInitaltestQuery(get_called_class());
    }
}
