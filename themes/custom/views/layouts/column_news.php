<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <?php echo $content; ?>
        </div>
        <div class="col-md-4">
            <?php $this->widget('application.widgets.Categories'); ?>
            <?php $this->widget('application.widgets.LatestNews'); ?>
        </div>
    </div>
</div>
<?php $this->endContent(); ?>
