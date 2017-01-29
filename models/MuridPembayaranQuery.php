<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[MuridPembayaran]].
 *
 * @see MuridPembayaran
 */
class MuridPembayaranQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return MuridPembayaran[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return MuridPembayaran|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
