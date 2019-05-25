<?php
/**
 * Created by PhpStorm.
 * User: Muza
 * Date: 21.12.17
 * Time: 16:13
 */

class Helper {

    public static function getLangId(){
        $lang = Languages::model()->findByAttributes(array('lang'=>Yii::app()->language));
        return ($lang) ? $lang->id : false;
    }

} 