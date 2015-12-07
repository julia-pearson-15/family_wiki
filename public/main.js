// will be the header and general page layout
// make able to click on tabs

  // var $navBarOne;
  // var $navBarTwo;
  // var $navBarThree;



$(document).ready(function() {
  var $navBarOne = $('.with-bar')[0];
  var $navBarTwo = $('.with-bar')[1];
  var $navBarThree = $('.with-bar')[2];
  
  var moving = function($element){
    var closure = function(){
      $element.addClass('animated', 'bounce');
    } 
    return closure;
  }
  
  $navBarOne.on('focus', moving($navBarOne));
  $navBarTwo.on('focus', moving($navBarTwo));
  $navBarThree.on('focus', moving($navBarThree));
});