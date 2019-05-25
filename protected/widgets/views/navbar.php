<?php
/**
 * @var $item Menuitem
 */
?>
<div class="nav-bar-main" role="navigation">
    <div class="container-fluid">
        <nav class="main-navigation clearfix visible-md visible-lg" role="navigation">
            <div class="container">
            <ul class="main-menu sf-menu">
                <?php foreach($items as $item):?>
                    <?php if($item->parent_id == 0):?>
                        <?php if(empty($item->childs)):?>
                            <li><a href="<?=Yii::app()->createUrl($item->url)?>"><?=$item->title?></a></li>
                        <?php else:?>
                            <li>
                                <a href="<?=Yii::app()->createUrl($item->url)?>"><?=$item->title?></a>
                                <ul class="submenu">
                                    <?php foreach($item->childs as $it):?>
                                        <li><a href="<?=Yii::app()->createUrl($it->url)?>"><?=$it->title?></a></li>
                                    <?php endforeach;?>
                                </ul>
                            </li>
                        <?php endif;?>
                    <?php endif;?>
                <?php endforeach;?>
            </ul> <!-- /.main-menu -->
            <?php $this->widget('application.widgets.LanguageSwitcherWidget');?>
            </div>
        </nav> <!-- /.main-navigation -->
    </div> <!-- /.container -->
</div> <!-- /.nav-bar-main -->
