<?php
/* @var $this MenuitemController */
/* @var $model Menuitem */

$this->breadcrumbs=array(
	'Menuitems'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'Создать элемент меню', 'url'=>array('create')),
	array('label'=>'Редактировать', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Удалить элемент меню', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Вы увурены?')),
	array('label'=>'Управление элементами меню', 'url'=>array('admin')),
);
?>

<h1>Просмотр #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'menu_id',
		'title',
		'parent_id',
		'url',
	),
)); ?>
<h3>Связанный контент</h3>
<?php
/*
  * @var $rcontent Content
  */
?>
<?php if($rcontent): ?>
    <?php echo CHtml::link('Редактировать',['content/update','id'=>$rcontent->id],['class'=>'btn btn-primary'])?>
    <?php echo $rcontent->description; ?>
<?php else: ?>
    <p>Нету связанного контента</p>
    <?php echo CHtml::link('Добавить',['content/create','hash'=>$hash],['class'=>'btn btn-primary'])?>
<?php endif;?>