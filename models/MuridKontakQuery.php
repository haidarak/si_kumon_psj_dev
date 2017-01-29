<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[MuridKontak]].
 *
 * @see MuridKontak
 */
class MuridKontakQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return MuridKontak[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return MuridKontak|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
