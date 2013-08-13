# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  comming()
  
  $('.ui-state-default').click ->
    comming()
    
    
comming = ->
  target = $('.ui-tabs-active:visible a')
  tab = target.first().attr('data_id')
  subtab = target.last().attr('data_id')

  $('#data' + tab + '-' + subtab).load('/home/comming?tab=' + tab + '&subtab=' + subtab) 

  $('.submit').click ->
  	target = $('.ui-tabs-active:visible a')
  	tab = target.first().attr('data_id')
  	subtab = target.last().attr('data_id')
	
  	#formarray = $('#form-' + tab + '-' + subtab).serializeArray()	
	#$('#controlls' + tab + '-' + subtab).empty()
  	#console.log(formarray)
	
	# $('#controlls' + tab + '-' + subtab).empty()
	# jQuery.each(fields, function(i, field) = ->
	#	$('#controlls' + tab + '-' + subtab).append(field.value + " ")
	#alert(tab)
	#$('#controlls' + tab + '-' + subtab).empty
  	#$('#controlls' + tab + '-' + subtab).load('/home/comming?tab=' + tab + '&subtab=' + subtab)
  	#alert('#controlls' + tab + '-' + subtab)
  	$('#controlls' + tab + '-' + subtab).empty()
  	formarray = $('#form-' + tab + '-' + subtab).serializeArray()
  	console.log(formarray)

	jQuery.each formarray, (i, field) ->
  		#$("#results").append field.value + " "
  		alert('hola') 