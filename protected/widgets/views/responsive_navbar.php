<div class="responsive-navigation visible-sm visible-xs">
    <a href="#" class="menu-toggle-btn">
        <i class="fa fa-bars"></i>
    </a>
    <div class="responsive_menu">
        <ul class="main_menu">
            <?php foreach($items as $item): ?>
                <?php if($item->parent_id == 0):?>
                    <?php if(empty($item->childs)):?>
                        <li><a href="<?=Yii::app()->createUrl($item->url)?>"><?=$item->title?></a></li>
                    <?php else:?>
                        <li>
                            <a href="<?=Yii::app()->createUrl($item->url)?>"><?=$item->title?></a>
                            <ul>
                                <?php foreach($item->childs as $it):?>
                                    <li><a href="<?=Yii::app()->createUrl($it->url)?>"><?=$it->title?></a></li>
                                <?php endforeach;?>
                            </ul>
                        </li>
                    <?php endif;?>
                <?php endif;?>
            <?php endforeach;?>
        </ul> <!-- /.main_menu -->
        <ul class="social_icons">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
            <li><a href="#"><i class="fa fa-rss"></i></a></li>
        </ul> <!-- /.social_icons -->
    </div> <!-- /.responsive_menu -->
</div> <!-- /responsive_navigation -->
