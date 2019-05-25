<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="container">
    <div class="col-md-8">
            <?php echo $content; ?>
    </div>
    <div class="col-md-4">

        <?php $this->widget('application.widgets.Categories');?>

    </div>
</div>
    <div class="clearfix"> </div>

<?php $this->endContent(); ?>