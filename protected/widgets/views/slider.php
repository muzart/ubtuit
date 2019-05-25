
<div class="main-slideshow">
    <div class="flexslider">
        <ul class="slides">
            <?php foreach ($sliders as $slider):?>
                <li>
                    <?=CHtml::image(Yii::app()->baseUrl.Slider::IMAGE_FOLDER.$slider->img,'slide',array('style'=>'height: 390px'))?>
                    <div class="slider-caption">
                        <h2><a href="blog-single.html"><?=$slider->title ?></a></h2>
                    </div>
                </li>
            <?php endforeach;?>
        </ul> <!-- /.slides -->
    </div> <!-- /.flexslider -->
</div> <!-- /.main-slideshow -->