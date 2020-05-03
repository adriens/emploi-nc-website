var carousel = jQuery('div#home-carousel');
  carousel.carousel({
    fullWidth: true,
    indicators: true,
    duration: 300,
    onCycleTo : function($current_item, dragged) {
      console.log($current_item);
      stopAutoplay();
      startAutoplay(carousel);
    }
  }
);

$('.carousel.carousel-slider').carousel({
  fullWidth: true,
  indicators: true,
});


function goToslide(i){
  $('.carousel.carousel-slider').carousel('set',i);
}

$(document).ready(function(){
  $('.sidenav').sidenav();
  $('.tabs').tabs();
  $('.tap-target').tapTarget();
  $('.collapsible').collapsible();
  $('.parallax').parallax();
  $('.tap-target').tapTarget('open');
  $('.dropdown-trigger').dropdown();
});



var autoplay_id;
function startAutoplay($carousel) {
   autoplay_id = setInterval(function() {
      $carousel.carousel('next');
    }, 8000); // every 5 seconds
}

function stopAutoplay() {
  if(autoplay_id) {
    clearInterval(autoplay_id);
  }
}

