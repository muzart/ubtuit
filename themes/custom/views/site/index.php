<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>
<?php $this->widget("application.widgets.Department")?>
<div class="col-md-8">
    <div class="row">

        <!-- Show Latest Blog News -->
        <div class="col-md-6">
            <?php $this->widget('application.widgets.LatestNews');?>
        </div> <!-- /col-md-6 -->

        <!-- Show Latest Events List -->
        <div class="col-md-6">
			<?php $this->widget('application.widgets.Events');?>
		</div> <!-- /.col-md-6 -->

    </div> <!-- /.row -->

</div> <!-- /.col-md-8 -->

<!-- Here begin Sidebar -->
<div class="col-md-4">
    
</div>
