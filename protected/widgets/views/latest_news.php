<?php /* @var $news Content[]*/?>
<div class="widget-main">
    <div class="widget-main-title">
        <h4 class="widget-title"><?=Yii::t('main','Latest News')?></h4>
    </div> <!-- /.widget-main-title -->
    <div class="widget-inner">
        <?php foreach($news as $new):?>
        <div class="blog-list-post clearfix">
            <div class="blog-list-thumb">
                <a href="<?=Yii::app()->createUrl('content/view',['hash'=>$new->hash]) ?>">
                    <?=$new->getImageTag() ?>
                </a>
            </div>
            <div class="blog-list-details">
                <h5 class="blog-list-title"><a href="<?=Yii::app()->createUrl('content/view',['hash'=>$new->hash]) ?>">
                        <?=$new->title ?>
                    </a>
                </h5>
                <p class="blog-list-meta small-text"><span><?=date('d M, Y',$new->created)?></span></span></p>
            </div>
        </div> <!-- /.blog-list-post -->
        <?php endforeach;?>
    </div> <!-- /.widget-inner -->
</div> <!-- /.widget-main -->
