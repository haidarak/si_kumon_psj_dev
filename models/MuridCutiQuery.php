<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[MuridCuti]].
 *
 * @see MuridCuti
 */
class MuridCutiQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return MuridCuti[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return MuridCuti|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
