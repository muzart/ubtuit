<?php
    $cats_count = count($cats);
    $c = $cats_count/ 2;
?>
<div class="widget-main">
    <div class="widget-main-title">
        <h4 class="widget-title"><?=Yii::t('main','Categories');?></h4>
    </div>
    <div class="widget-inner">
        <div class="blog-categories">
            <div class="row">
                <div class="col-md-6">

                <ul class="popular">
                    <?php for($i = 0; $i < $c; $i++):?>
                    <li><a href="<?=Yii::app()->createUrl('category/view',array('hash'=>$cats[$i]->hash))?>"><i> </i><?=$cats[$i]->title;?></a></li>
                    <?php endfor;?>
                </ul>
                </div>
                <div class="col-md-6">
                    <ul class="popular">
                        <?php for($i = $c; $i < $cats_count; $i++):?>
                            <li><a href="<?=Yii::app()->createUrl('category/view',array('hash'=>$cats[$i]->hash))?>"><i> </i><?=$cats[$i]->title;?></a></li>
                        <?php endfor;?>
                    </ul>
                </div>
            </div>
        </div> <!-- /.blog-categories -->
    </div> <!-- /.widget-inner -->
</div>