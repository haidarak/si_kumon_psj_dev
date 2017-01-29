<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\MuridPembayaran;

/**
 * MuridPembayaranSearch represents the model behind the search form of `app\models\MuridPembayaran`.
 */
class MuridPembayaranSearch extends MuridPembayaran
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'murid_id', 'kelas_id', 'bulan_tagihan', 'tahun_tagihan'], 'integer'],
            [['tanggal_bayar', 'bukti_bayar', 'keterangan'], 'safe'],
            [['tagihan', 'pembayaran'], 'number'],
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
        $query = MuridPembayaran::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'murid_id' => $this->murid_id,
            'kelas_id' => $this->kelas_id,
            'tanggal_bayar' => $this->tanggal_bayar,
            'tagihan' => $this->tagihan,
            'pembayaran' => $this->pembayaran,
            'bulan_tagihan' => $this->bulan_tagihan,
            'tahun_tagihan' => $this->tahun_tagihan,
        ]);

        $query->andFilterWhere(['like', 'bukti_bayar', $this->bukti_bayar])
            ->andFilterWhere(['like', 'keterangan', $this->keterangan]);

        return $dataProvider;
    }
}
