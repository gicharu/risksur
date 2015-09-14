<?php
/* @var $this AdmineconomicmethodsController */
/* @var $model EconomicMethods */

$this->breadcrumbs = [
	'Economic Methods' => ['index'],
	'Create',
];

$this->menu = [
	['label' => 'List Economic Methods', 'url' => ['index']],
];
?>

	<h3>Add economic method</h3>

<?php $this->renderPartial('_form', ['model' => $model]); ?>