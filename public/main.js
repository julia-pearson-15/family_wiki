

var $navBarOne;
var $navBarOne;
var $navBarOne;

var noMove = function(){
  $(this).removeClass('animated');
  $(this).removeClass('pulse');
};

var moving = function(){
  $(this).addClass('animated');
  $(this).addClass('pulse');
  setTimeout(noMove, 500);
} 



$(document).ready(function() {

  $navBarOne = $($('.nav')[0]);
  $navBarTwo = $($('.nav')[1]);
  $navBarThree = $($('.nav')[2]);

  $navBarOne.on("mouseover", moving);
  $navBarTwo.on("mouseover", moving);
  $navBarThree.on("mouseover", moving);

});