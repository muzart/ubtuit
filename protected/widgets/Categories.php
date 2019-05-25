<?php
/**
 * Created by PhpStorm.
 * User: Муза
 * Date: 01.08.15
 * Time: 20:21
 */

class Categories extends CWidget{
    public function run(){
        $cats = Category::model()->findAll("lang_id = ".Helper::getLangId());
        $this->render('categories',array(
            'cats'=>$cats
        ));
    }
} 