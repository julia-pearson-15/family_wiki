// will be the header and general page layout
// make able to click on tabs

var $navBar;

var moving = function($element){
  var closure = function(){
    $element.addClass('animated', 'bounce');
  } 
  return closure;
}

$(document).ready(function() {
  $navBarOne = $('.nav')[0];
  $navBarTwo = $('.nav')[1];
  $navBarThree = $('.nav')[2];
  
  $navBarOne.on('focus', moving($navBarOne));
  $navBarTwo.on('focus', moving($navBarTwo));
  $navBarThree.on('focus', moving($navBarThree));
});