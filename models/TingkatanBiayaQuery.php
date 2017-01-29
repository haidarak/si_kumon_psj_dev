<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[TingkatanBiaya]].
 *
 * @see TingkatanBiaya
 */
class TingkatanBiayaQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return TingkatanBiaya[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return TingkatanBiaya|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
