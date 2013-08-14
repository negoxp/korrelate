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

	jQuery.each(arrayfields, function(i, field){
      $('#controlls' + tab + '-' + subtab).append(field.value + ", ");
    });
	return false;

  });

	var cal5 = new CalendarPopup('calendarpick');
	cal5.setDisplayType("month");
	cal5.setReturnMonthFunction("monthReturn");
	cal5.showYearNavigation();
	cal5.showCalendar('calendarpick');


});

function monthReturn(y,m) {
    	 //$("#month").value=m+"/"+y;
    	 alert(m);
    	 $(this).css("background-color", "#0000FF");
     }