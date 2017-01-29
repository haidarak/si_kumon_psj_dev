<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_murid".
 *
 * @property integer $id
 * @property string $nama
 * @property string $kelamin
 * @property string $tanggal_lahir
 * @property string $nama_sekolah
 * @property string $alamat
 * @property integer $kodepos
 * @property integer $no_anggota
 * @property integer $no_kursus
 * @property integer $pegawai_id
 * @property string $motivasi
 * @property string $catatan_khusus
 * @property string $tanggal_masuk
 * @property string $tanggal_selesai
 * @property integer $tingkatan_biaya_id
 */
class Murid extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_murid';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama', 'kelamin', 'tanggal_lahir', 'nama_sekolah', 'alamat', 'kodepos', 'no_anggota', 'no_kursus', 'motivasi', 'catatan_khusus', 'tanggal_masuk', 'tingkatan_biaya_id'], 'required'],
            [['tanggal_lahir', 'tanggal_masuk', 'tanggal_selesai'], 'safe'],
            [['alamat', 'motivasi', 'catatan_khusus'], 'string'],
            [['kodepos', 'no_anggota', 'no_kursus', 'pegawai_id', 'tingkatan_biaya_id'], 'integer'],
            [['nama', 'nama_sekolah'], 'string', 'max' => 100],
            [['kelamin'], 'string', 'max' => 10],
            [['no_anggota'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'nama' => Yii::t('app', 'Nama'),
            'kelamin' => Yii::t('app', 'Jenis Kelamin'),
            'tanggal_lahir' => Yii::t('app', 'Tanggal Lahir'),
            'nama_sekolah' => Yii::t('app', 'Nama Sekolah'),
            'alamat' => Yii::t('app', 'Alamat'),
            'kodepos' => Yii::t('app', 'Kodepos'),
            'no_anggota' => Yii::t('app', 'No Anggota'),
            'no_kursus' => Yii::t('app', 'No Kursus'),
            'pegawai_id' => Yii::t('app', 'Pegawai'),
            'motivasi' => Yii::t('app', 'Motivasi'),
            'catatan_khusus' => Yii::t('app', 'Catatan Khusus'),
            'tanggal_masuk' => Yii::t('app', 'Tanggal Masuk'),
            'tanggal_selesai' => Yii::t('app', 'Tanggal Selesai'),
            'tingkatan_biaya_id' => Yii::t('app', 'Tingkat Pendidikan'),
        ];
    }

    /**
     * @inheritdoc
     * @return MuridQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MuridQuery(get_called_class());
    }

    public function getPegawai(){
        return $this->hasOne(Pegawai::classname(), ['id' => 'pegawai_id']);
    }

    public function getTingkatan(){
        return $this->hasOne(TingkatanBiaya::classname(), ['id' => 'tingkatan_biaya_id']);
    }
}
