<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[MuridInitaltest]].
 *
 * @see MuridInitaltest
 */
class MuridInitaltestQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return MuridInitaltest[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return MuridInitaltest|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
