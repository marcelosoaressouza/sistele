<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{

    private $_id;
    public function authenticate()
    {
        $record=Usuario::model()->findByAttributes(array('username'=>$this->username));

        if($record===null)
        {
            $this->errorCode=self::ERROR_USERNAME_INVALID;
        }

        else if($record->password!==md5($this->password))
        {
            $this->errorCode=self::ERROR_PASSWORD_INVALID;
        }

        else
        {
//            $this->_id=$record->id;
//            $this->setState('title', $record->profile);
            $this->errorCode=self::ERROR_NONE;
        }

        return !$this->errorCode;

    }

    public function getIdUsuario()
    {
        return $this->_id;
    }

    /*
    public function authenticate()
    {
        $users=array(
            // username => password
            'demo'=>'demo',
            'admin'=>'admin',
        );
        if(!isset($users[$this->username]))
            $this->errorCode=self::ERROR_USERNAME_INVALID;
        else if($users[$this->username]!==$this->password)
            $this->errorCode=self::ERROR_PASSWORD_INVALID;
        else
            $this->errorCode=self::ERROR_NONE;
        return !$this->errorCode;
    }
    */
}
