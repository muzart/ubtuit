<?php
/* @var $this EventController */
/* @var $model Event */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'event-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'place'); ?>
		<?php echo $form->textField($model,'place',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'place'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'sana'); ?>
		<?php echo $form->textField($model,'sana',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'sana'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'start_time'); ?>
		<?php echo $form->textField($model,'start_time',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'start_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'end_time'); ?>
		<?php echo $form->textField($model,'end_time',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'end_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php
        $this->widget(
            'ext.ckeditor.CKEditor',
            array(
                'model'=>$model,
                'attribute'=>'description',
                'language'=>'ru',
                'editorTemplate'=>'full',
            ));
        ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'photo'); ?>
		<?php echo $form->textField($model,'photo',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'photo'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->