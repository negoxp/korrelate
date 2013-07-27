$ ->
  jQuery.fn.exists = ->
    @length > 0

  if $(".name-form, .choice-form").exists()
    customForm.lib.domReady ->
      customForm.customForms.replaceAll()

  $("#tabs").tabs {}  if $("#tabs").exists()
  $(".child-tabs").tabs {}  if $(".child-tabs").exists()
  $(".fancybox").fancybox padding: 0  if $(".fancybox").exists()