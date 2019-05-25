<?php
/**
 * Created by PhpStorm.
 * User: Muza
 * Date: 25.12.17
 * Time: 13:58
 */

class ResponsiveNavbar extends CWidget{

    public function run(){
        $menu = Menu::model()->findByPk(Helper::getLangId());
        $items = Menuitem::model()->findAllByAttributes(array(
            'menu_id'=>$menu->id,
            'parent_id'=>0
        ));
        $this->render('responsive_navbar',array(
            'items'=>$items
        ));
    }

} 