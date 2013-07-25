$(document).ready(function(){
	jQuery.fn.exists = function(){return this.length>0;}
	if ($('.name-form, .choice-form').exists()) {
			customForm.lib.domReady(function(){
			customForm.customForms.replaceAll();
		});
	}
	if ($('#tabs').exists()) {
		$("#tabs").tabs({});
	}
	if ($('.child-tabs').exists()) {
		$(".child-tabs").tabs({});
	}
	if ($('.fancybox').exists()) {
		$('.fancybox').fancybox({
			padding:0
		});
	}
});