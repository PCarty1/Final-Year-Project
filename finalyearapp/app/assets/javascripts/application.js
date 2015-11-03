// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .



$(function (){    
    $('#datepicker').datepicker({ 
	dateFormat: 'yy-mm-dd', 
	changeMonth: true,
	changeYear: true,
	 yearRange: "-100:+0"
	
	});
	});
	
$(function(){
   $("#date").mask("99/99/9999",{placeholder:"mm/dd/yyyy"});
   $("#mobiles").mask("(999) 999-9999");
   $("#tin").mask("99-9999999");
   $("#ssn").mask("999-99-9999");
});