<?php
/**
 * Created by PhpStorm.
 * User: Муза
 * Date: 29.07.15
 * Time: 14:33
 */

class Footer extends CWidget{
    public function run(){
        $menuitems = Menuitem::model()->findAll("menu_id=".Helper::getLangId()." AND parent_id=0");
        $this->render('footer',array(
            'menuitems' => $menuitems
        ));
    }
} 