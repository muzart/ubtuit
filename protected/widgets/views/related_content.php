<div class="widget-main">
    <div class="widget-main-title">
        <h4 class="widget-title">Related content</h4>
    </div>
    <div class="widget-inner">
        <div class="blog-categories">
            <div class="row">
                <ul class="col-md-6">
                    <?php foreach($rc_arr as $rc):?>
                        <?=CHtml::link($rc[0],['content/view','hash'=>explode('/',$rc[1])[2]])?>
                    <?php endforeach;?>
                </ul>
            </div>
        </div> <!-- /.blog-categories -->
    </div> <!-- /.widget-inner -->
</div>