var yearselected = 2013;
var monthselect = 8;
var report = 1;
var attribution = 3;
var purchaseEvent = "Purchase"

$(document).ready(function() {
	$(function() {
	  comming();
	  return $('.ui-state-default').click(function() {
	    return comming();
	  });

	});

	comming = function() {
	  var subtab, tab, target;
	  target = $('.ui-tabs-active:visible a');
	  tab = target.first().attr('data_id');
	  subtab = target.last().attr('data_id');
	  return $('#data' + tab + '-' + subtab).load('/home/comming?tab=' + tab + '&subtab=' + subtab);
	};

  $('.submit').click(function() {
    var subtab, tab, target;
	target = $('.ui-tabs-active:visible a');
	tab = target.first().attr('data_id');
	subtab = target.last().attr('data_id');

	var arrayfields = $('#form-' + tab + '-' + subtab).serializeArray();
	$('#controlls' + tab + '-' + subtab).empty();

	$.each(arrayfields, function(i, field){
      $('#controlls' + tab + '-' + subtab).append(field.value + ", ");
    });
	$('#controlls' + tab + '-' + subtab).append(purchaseEvent + ", ");
	$('#controlls' + tab + '-' + subtab).append(report + ", ");
	$('#controlls' + tab + '-' + subtab).append(attribution + ", ");
	$('#controlls' + tab + '-' + subtab).append(yearselected + "/" +monthselect);
	return false;

  });
	var cal5 = new CalendarPopup('calendarpick');
	cal5.setDisplayType("month");
	cal5.setReturnMonthFunction("monthReturn");
	cal5.showYearNavigation();
	cal5.showCalendar('calendarpick');
	$("#monthselect"+yearselected+monthselect).addClass('activemonth');
	//cal5.select(inputObject, anchorname, dateFormat);


	$('.reportattribution').change(function() {           
		report = $(this).attr('report');
		attribution = $(this).attr('attribution');
		updatetags();
	});	

	$('.purchaseEvent').change(function() {          
		purchaseEvent = $(this).attr('value');
		updatetags();
	});	

});

function updatetags(){
	$.ajax({
		type: 'get',
		url: '/home/calculate_adjustment',
		data: { 
			yearSelected : yearselected,
			monthSelected : monthselect,
			purchaseEvent : purchaseEvent,
			attribution   : attribution,
			attribution   : report
		},
		dataType: 'html',
		success: function (response) {
			$('#result').html(response)
		}
	});
	$('#focusonpurchase').text(purchaseEvent + " Month");
}


function monthReturn(y,m) {
	$("#monthselect"+yearselected+monthselect).removeClass('activemonth');
	yearselected = y;
  	monthselect = m;
  	$("#monthselect"+yearselected+monthselect).addClass('activemonth');
  	updatetags();
}



