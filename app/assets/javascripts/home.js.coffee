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