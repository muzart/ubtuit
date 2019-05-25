<?php
/* @var $this ContentController */
/* @var $text Content */

$this->pageTitle = Yii::app()->name . ' - ' . $text->title;
$this->hash = $text->hash;
?>
    <?php if ($text->image !== ''): ?>
        <p align="center">
        </p>
        <div class="blog-post-image">
            <a href="/images/content/<?= $text->image; ?>" class="zoom-image">
                <img src="/images/content/<?= $text->image; ?>" style="width:350px; float: left; padding-right: 20px;" alt="image" class="img-responsive">
            </a>
        </div>
    <?php endif; ?>

    <div class="blog-post-inner">
        <h3 class="blog-post-title"><?= $text->title ?></h3>
        <?= $text->description; ?>
        <div class="tag-items">
            <span class="small-text">Tags:</span>
            <?php foreach(explode(',',$text->meta_tags) as $tag):?>
            <a href="#" rel="tag"><?=$tag?></a>
            <?php endforeach;?>
        </div>
        <div class="pull-right" style="margin:0 20px -20px 0">
            <i class="fa fa-calendar-o"></i> <?=date('d/m/Y',$text->created) ?> <i class="fa fa-user"></i> admin
        </div>
    </div>