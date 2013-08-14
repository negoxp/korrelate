var yearselected = 2013;
var monthselect = 8;
var report = 1;
var attribution = 3;
var purchaseEvent = "Purchase"
var monthNames = ["December", "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December", "January", "February" ];

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
	var yearselectedaux = yearselected;
	var yearselectedaux2 = yearselected;
	if (purchaseEvent=="Purchase"){
		var auxmonth =monthselect + (report-1);
		if (auxmonth>=13){yearselectedaux = yearselectedaux + 1; }
		$('#purchase').text(monthNames[monthselect] + " " +yearselected + " through " + monthNames[auxmonth] + " " +yearselectedaux);
		yearselectedaux = yearselected;
		var auxmonth =monthselect - attribution;
		if (auxmonth<=0){yearselectedaux = yearselectedaux - 1; }
		var auxmonth2 =monthselect + (report-1);
		if (auxmonth2>=13){yearselectedaux2 = yearselectedaux2 + 1; }
		$('#impressions').text(monthNames[auxmonth] + " " +yearselectedaux + " through " + monthNames[auxmonth2] + " " +yearselectedaux2);
	}else{
		yearselectedaux = yearselected;
		//Purchases == (Start Month) through (Start Month + (Attribution Window -1 ))
		var auxmonth =monthselect + (attribution-1);
		if (auxmonth>=13){yearselectedaux = yearselectedaux + 1; }
		$('#purchase').text(monthNames[monthselect] + " " +yearselected + " through " + monthNames[auxmonth] + " " +yearselectedaux);
		//Impressions == (Start Month) through (Start Month + (Report Window – 1))
		yearselectedaux = yearselected;
		var auxmonth2 =monthselect + (report-1);
		if (auxmonth2>=13){yearselectedaux = yearselectedaux + 1; }
		$('#impressions').text(monthNames[monthselect] + " " +yearselected + " through " + monthNames[auxmonth2] + " " +yearselectedaux);
	}

	$('#focusonpurchase').text(purchaseEvent + " Month");
}


function monthReturn(y,m) {
	$("#monthselect"+yearselected+monthselect).removeClass('activemonth');
	yearselected = y;
  	monthselect = m;
  	$("#monthselect"+yearselected+monthselect).addClass('activemonth');
  	updatetags();
    //$("#month").value=m+"/"+y;
    //alert(m);
}



