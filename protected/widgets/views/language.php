<?php
echo CHtml::dropDownList(
    'lang',
    Yii::app()->session->get('lang'),
    CHtml::listData(
        Languages::model()->findAll(),'lang','lang'
    ),
    array('class'=>'social-icons pull-right')
);
?>