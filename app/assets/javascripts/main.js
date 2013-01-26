$(function(){
	var startDate,
	alert_message = '<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">&times;</button><strong>Fail! </strong> Ending date can not happen before the start date. </div>';

	$('#startDate').datepicker().on('changeDate', function(ev){
		startDate = ev.date.valueOf();
	});
	$('#endDate').datepicker().on('changeDate', function(ev){
	    if (ev.date.valueOf() < startDate){
	      $('#alerts').html(alert_message);
	    }else{
	    	$('#alerts').html('');
	    }
	})
});