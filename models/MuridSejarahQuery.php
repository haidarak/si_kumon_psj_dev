<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[MuridSejarah]].
 *
 * @see MuridSejarah
 */
class MuridSejarahQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return MuridSejarah[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return MuridSejarah|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
