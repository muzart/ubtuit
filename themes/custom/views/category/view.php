<div class="row">
    <div class="col-md-12">
        <?php if (!empty($contents)): ?>
        <?php foreach ($contents as $content): ?>
            <div class="list-event-item">
                <div class="box-content-inner clearfix">
                    <?php if ($content->image !== ''): ?>
                        <div class="list-event-thumb">
                            <a href="<?= Yii::app()->createUrl('content/view', array('hash' => $content->hash)) ?>">
                                <img src="/images/content/<?= $content->image ?>" alt="<?= $content->title ?>" class="img-responsive">
                            </a>
                        </div>
                    <?php endif; ?>
                    <div class="list-event-header">
                        <span class="event-place small-text"><i class="fa fa-globe"></i><?= $category->title ?></span>
                        <span class="event-date small-text"><i class="fa fa-calendar-o"></i><?=date('M d,Y',$content->updated)?></span>
                        <div class="view-details">
                            <a href="<?= Yii::app()->createUrl('content/view', array('hash' => $content->hash)) ?>" class="lightBtn"><?= Yii::t('main', 'Read more') ?></a></div>
                    </div>
                    <h5 class="event-title"><a
                            href="<?= Yii::app()->createUrl('content/view', array('hash' => $content->hash)) ?>"><?= $content->title ?></a>
                    </h5>
                    <p><?= mb_substr(strip_tags($content->description), 1, 300) ?> ... </p>
                </div>
            </div>
        <?php endforeach; ?>
        <?php else: ?>
            <div class="list-event-item">
                <div class="box-content-inner clearfix">
                <h3><?php echo Yii::t('main', 'No articles found by category $category_name', array('$category_name' => $category->title)); ?></h3>
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>