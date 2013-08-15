
$(function() {
  jQuery.fn.exists = function() {
    return this.length > 0;
  };
  if ($(".name-form, .choice-form").exists()) {
    customForm.lib.domReady(function() {
      return customForm.customForms.replaceAll();
    });
  }
  if ($("#tabs").exists()) {
    $("#tabs").tabs({});
  }
  if ($(".child-tabs").exists()) {
    $(".child-tabs").tabs({});
  }
  if ($(".fancybox").exists()) {
    return $(".fancybox").fancybox({
      padding: 0,
      width: 740
    });
  }
});