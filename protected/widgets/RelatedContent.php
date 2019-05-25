<?php
/**
 * Created by PhpStorm.
 * User: Muza
 * Date: 21.12.17
 * Time: 17:00
 */

class RelatedContent extends CWidget{

    public $hash;

    public function run(){
        $item = Menuitem::model()->findByAttributes(array(
            'menu_id' => Helper::getLangId(),
            'url' => '/content/'.$this->hash
        ));
        $rel_contents = Menuitem::model()->findAll("parent_id=$item->parent_id");
        $rel_contents2 = Menuitem::model()->findAll("parent_id=$item->id");
        $rel_contents += $rel_contents2;
        $rc_arr = array();
        foreach($rel_contents as $rc){
            $elem = explode('/',$rc->url);
            if(isset($elem[2]))
                $rc_arr[] = array(
                    $elem[2],
                    $rc->url
                );
        }
        $this->render('related_content',array(
            'rc_arr' => $rc_arr
        ));
    }

} 