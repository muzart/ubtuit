<?php
/**
 * Created by PhpStorm.
 * User: Muza
 * Date: 20.12.17
 * Time: 15:14
 */

class LatestNews extends CWidget{

    public function run(){
        $news = Content::model()->findAll("category_id >1 AND lang_id=".Helper::getLangId()." ORDER BY id DESC LIMIT 3");
        $this->render('latest_news',array(
            'news' => $news
        ));
    }

} 