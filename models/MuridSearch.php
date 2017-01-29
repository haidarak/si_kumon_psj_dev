<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Murid;

/**
 * MuridSearch represents the model behind the search form of `app\models\Murid`.
 */
class MuridSearch extends Murid
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'kodepos', 'no_anggota', 'no_kursus', 'pegawai_id', 'tingkatan_biaya_id'], 'integer'],
            [['nama', 'kelamin', 'tanggal_lahir', 'nama_sekolah', 'alamat', 'motivasi', 'catatan_khusus', 'tanggal_masuk', 'tanggal_selesai'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Murid::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
             $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'tanggal_lahir' => $this->tanggal_lahir,
            'kodepos' => $this->kodepos,
            'no_anggota' => $this->no_anggota,
            'no_kursus' => $this->no_kursus,
            'pegawai_id' => $this->pegawai_id,
            'tanggal_masuk' => $this->tanggal_masuk,
            'tanggal_selesai' => $this->tanggal_selesai,
            'tingkatan_biaya_id' => $this->tingkatan_biaya_id,
        ]);

        $query  ->andFilterWhere(['like', 'nama', $this->nama])
                ->andFilterWhere(['like', 'no_anggota', $this->no_anggota])
                ->andFilterWhere(['like', 'nama_sekolah', $this->nama_sekolah]);

        return $dataProvider;
    }
}
