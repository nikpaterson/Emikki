/* global $ */

$(document).ready(function(){
  
  $('#men').click(function(event){
    event.preventDefault();
    $('#men').addClass('active');
    $('.men').removeClass('hidden');
    $('#women').removeClass('active');
    $('.women').addClass('hidden');
  });
  
  $('#women').click(function(event){
    event.preventDefault();
    $('#women').addClass('active');
    $('.women').removeClass('hidden');
    $('#men').removeClass('active');
    $('.men').addClass('hidden');
  });
                      
});