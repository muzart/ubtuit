<!-- begin The Footer -->
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <?php $this->widget('application.widgets.Contact'); ?>
            </div>
            <?php foreach($menuitems as $mi):?>
            <?php if(count($mi->childs) > 4):?>
            <div class="col-md-2">
                <div class="footer-widget">
                    <h4 class="footer-widget-title"><?=$mi->title ?></h4>
                    <ul class="list-links">
                    <?php foreach($mi->childs as $child):?>
                        <li><a href="<?=Yii::app()->createUrl($child->url) ?>"><?=$child->title?></a></li>
                    <?php endforeach;?>
                    </ul>
                </div>
            </div>
            <?php endif;?>
            <?php endforeach;?>
            <div class="col-md-3">
                <div class="footer-widget">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d20081.796508032523!2d60.62518670991075!3d41.56541561364817!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x41dfcec63d012a49%3A0xa2280e571ee2fa3e!2z0KLQkNCi0KMg0KPRgNCz0LDQvdGHINGE0LjQu9C40LDQu9C4!5e0!3m2!1sru!2sru!4v1506425153479" frameborder="0" style="border:0" allowfullscreen=""></iframe>
                    <!--                    <ul class="footer-media-icons">-->
<!--                        <li><a href="#" class="fa fa-facebook"></a></li>-->
<!--                        <li><a href="#" class="fa fa-twitter"></a></li>-->
<!--                        <li><a href="#" class="fa fa-google-plus"></a></li>-->
<!--                        <li><a href="#" class="fa fa-youtube"></a></li>-->
<!--                        <li><a href="#" class="fa fa-linkedin"></a></li>-->
<!--                        <li><a href="#" class="fa fa-instagram"></a></li>-->
<!--                        <li><a href="#" class="fa fa-apple"></a></li>-->
<!--                        <li><a href="#" class="fa fa-rss"></a></li>-->
<!--                    </ul>-->
                </div>
            </div>
        </div> <!-- /.row -->

        <div class="bottom-footer">
            <div class="row">
                <div class="col-md-5">
                    <p class="small-text">&copy; Copyright <?=date('Y')?>. <?=Yii::app()->params['org'][Yii::app()->language] ?></p>
                </div> <!-- /.col-md-5 -->
                <div class="col-md-7">
                    <ul class="footer-nav">
                        <?php /* $menuitem Menuitem */ ?>
                        <?php foreach($menuitems as $mi):?>
                        <li><a href="<?=Yii::app()->createUrl($mi->url) ?>"><?=$mi->title?></a></li>
                        <?php endforeach;?>
                    </ul>
                </div> <!-- /.col-md-7 -->
            </div> <!-- /.row -->
        </div> <!-- /.bottom-footer -->

    </div> <!-- /.container -->
</footer> <!-- /.site-footer -->
