<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en">
<![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="en">
<![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->

<!-- Mirrored from demo.esmeth.com/universe/Blue/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Dec 2017 13:05:51 GMT -->
<head>
    <title><?=Yii::app()->params['org'][Yii::app()->language];?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="College Education Responsive Template">
    <meta name="author" content="Esmet">
    <meta charset="UTF-8">

    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800' rel='stylesheet' type='text/css'>

    <!-- CSS Bootstrap & Custom -->
    <link href="<?=Yii::app()->baseUrl ?>/custom/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="<?=Yii::app()->baseUrl ?>/custom/css/font-awesome.min.css" rel="stylesheet" media="screen">
    <link href="<?=Yii::app()->baseUrl ?>/custom/css/animate.css" rel="stylesheet" media="screen">

    <link href="<?=Yii::app()->baseUrl ?>/custom/style.css" rel="stylesheet" media="screen">

    <!-- JavaScripts -->
    <script src="<?=Yii::app()->baseUrl ?>/js/jquery.min.js"></script>
    <script src="<?=Yii::app()->baseUrl ?>/custom/js/modernizr.js"></script>
    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
    </div>
    <![endif]-->
</head>
<body>
<?php $this->widget('application.widgets.ResponsiveNavbar');?>
<!-- This one in here is responsive menu for tablet and mobiles -->
<header class="site-header">
    <div class="container">
        <div class="row">

            <div class="col-md-5">
                <div class="logo">
                    <a href="<?=Yii::app()->createUrl('/') ?>" title="TATU Urganch filiali" rel="home" style="text-transform: uppercase">
                        <img src="<?=Yii::app()->baseUrl ?>/images/logo.png" alt="Universe">
                        <span><?=Yii::app()->params['org'][Yii::app()->language];?></span>
                    </a>
                </div> <!-- /.logo -->
            </div> <!-- /.col-md-4 -->


        </div>
    </div> <!-- /.container -->

<?php $this->widget('application.widgets.Navbar');?>
</header> <!-- /.site-header -->

<?php echo $content;?>

<?php $this->widget('application.widgets.Footer');?>

<script src="<?=Yii::app()->baseUrl ?>/custom/bootstrap/js/bootstrap.min.js"></script>
<script src="<?=Yii::app()->baseUrl ?>/custom/js/plugins.js"></script>
<script src="<?=Yii::app()->baseUrl ?>/custom/js/custom.js"></script>

</body>

<!-- Mirrored from demo.esmeth.com/universe/Blue/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Dec 2017 13:06:55 GMT -->
</html>