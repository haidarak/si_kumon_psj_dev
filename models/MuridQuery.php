<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[Murid]].
 *
 * @see Murid
 */
class MuridQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return Murid[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return Murid|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
