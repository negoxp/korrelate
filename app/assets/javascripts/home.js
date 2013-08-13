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
	console.log(arrayfields);
	$('#controlls' + tab + '-' + subtab).empty();

	jQuery.each(arrayfields, function(i, field){
      $('#controlls' + tab + '-' + subtab).append(field.value + ", ");
    });
	return false;

  });


});