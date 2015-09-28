<?php
/**
 * @var $form CForm
 * @var $dataArray array
 */
?>
<div class="contentContainer">
	<h3><?php echo $dataArray['formType']; ?> Evaluation Context</h3>
	<div class="contentLeft">
		<div class="form">
			<?= $form->render(); ?>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {
				$('[title!=""]').qtip({
					overwrite: true,
					content: {
						title: {
							text: 'Info',
							button: 'Close'
						}
					},
					style: {
						widget: true,
						def: false
					},
					hide: {
						event: 'click'
					}
				});
				var surSummary = $("#surSummary").dataTable({
					"bProcessing": true,
					"sAjaxSource": "<?php echo $this->createUrl('evaluation/getSurveillanceSummary'); ?>",
					"aoColumns": [
						{ "sTitle": "" },
						{ "sTitle": "" }
					],
					"bJQueryUI": true,
					"sPaginationType": "buttons_input",
					"iDisplayLength": 10,
					"bLengthChange": false,
					"bFilter": false,
					"oLanguage": {
						"sZeroRecords": "No surveillance system summary available"
					}
				});

				$('#EvalForm_evaType_5').on('change', function() {
					//console.log($(this).children('option').filter(':selected').text());
					if($(this).children('option').filter(':selected').text() == 'Component') {
						$(this).parent().next('.row').show();
						$(this).parent().next('.row').children('input').val('');
						return true;
					}
					$(this).parent().next('.row').children('input').val('0');
					$(this).parent().next('.row').hide();

				});
			});
			$('.update-able').chosen({
				create_option: function(term){
					var chosen = this;
					var options = {
						label: term,
						elementId: $(chosen.form_field).data('field'),
						scenario: 'addElementField'
					};
					$.post('<?= $this->createUrl("options/addOption"); ?>', {options}, function(data){
						if(data.optionId != '') {
							chosen.append_option({
								value: data.optionId,
								text: data.label
							});

						}
					}, 'json');
				},
				skip_no_results: true
			});
		</script>
	</div>
	<div class="contentRight">
		<div class="ui-widget-header ui-widget-content ui-corner-all widgetHead">
			Summary of the surveillance system</div>
		<table id="surSummary" cellspacing="0" width="100%">
<!--			<thead>-->
<!--			<tr>-->
<!--				<th></th>-->
<!--				<th></th>-->
<!--			</tr>-->
<!--			</thead>-->
<!--			<tbody></tbody>-->
		</table>
	</div>
</div>
