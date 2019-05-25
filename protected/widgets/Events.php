<?php

/**
 * Created by PhpStorm.
 * User: Muzaffar
 * Date: 19.05.2016
 * Time: 19:23
 */
class Events extends CWidget
{
    public function run(){
        $lang_id = Helper::getLangId();
        //$events = Slider::model()->findAll("lang_id = $lang_id");
        $this->render('events',array(
          //  'events' => $events
        ));
    }
}