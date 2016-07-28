<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "tbl_user".
 *
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property string $authKey
 */
class TblUser extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'password', 'authKey'], 'required'],
            [['username'], 'string', 'max' => 50],
            [['password', 'authKey'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'username' => Yii::t('app', 'Username'),
            'password' => Yii::t('app', 'Password'),
            'authKey' => Yii::t('app', 'Auth Key'),
        ];
    }

    public function getAuthKey(){
        throw new \yii\web\NotSupportedException();
        //return $this->authKey;
    }

    public function getId(){
        return $this->id;
    }

    public function validateAuthKey($authKey){
        throw new \yii\web\NotSupportedException();
        //return $this->authKey === $authKey;
    }

    public static function findIdentity($id){
        return self::findOne($id);
    }

    public static function findIdentityByAccessToken($token, $type=null){
        throw new \yii\web\NotSupportedException();
    }

    public static function findByUsername($username){
        return self::findOne(['username'=>$username]);
    }

    public  function validatePassword($password){
        // return $this->password === sha1($password); used to enable encrypt using sha, however, still not found how gii encrypt this to sha1
        return $this->password === ($password);
    }
}
