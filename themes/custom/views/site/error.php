<?php
/* @var $this SiteController */
/* @var $error array */

$this->pageTitle = Yii::app()->name . ' - Error';
$this->layout = '/layouts/column_news';
?>
<div class="row">
    <div class="col-md-12">
        <div class="event-container">
            <h1 class="uppercase">Error <?php echo $code; ?></h1>
            <i class="icon-37 font-6x text-grey"></i><br>
            <span class="font-2x"><b class="uppercase"><?php echo CHtml::encode($message); ?></span>
            <br>
        </div>
    </div>
</div>