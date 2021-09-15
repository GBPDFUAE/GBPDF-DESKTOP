$(document).ready(function(){
	
//Slider Key Variables
slideCounter = 0;
sliderWidth = $('.fullSliderContainer ul li').size() * 100;
slideAmount = $('.fullSliderContainer ul li').width();
arrowSlide = slideCounter * slideAmount;
slidesAmount = $('.fullSliderContainer ul li').size();
slideCountNext = slidesAmount - 1;
slideWidth = sliderWidth / slidesAmount / slidesAmount;
//controlPosition = $('.fullSliderContainer ul').height()/2;
var sliderTimer;

//Set Slider UL Width , Then Set LI Width  
$('.fullSliderContainer ul').css('width', sliderWidth +'%');
$('.fullSliderContainer ul li').css('width', slideWidth +'%');
  
  //Add Slider Circles Based On Slides Amount
   for (var i = 0; i < slidesAmount; i++) {
        $('.sliderProgress').append('<span class="sliderProgressCircle"></span>');
    }
 
$('.sliderProgress').children().first().addClass('activeProgress');
  
//Set Control Top Position



//Basic Next Trigger  
function triggerNext (){
     $('#nextSlide').click();
     startInterval = false;
} 
  
//Animate Slider Generic Function
function animateSlider(distance,time){
	$('.fullSliderContainer ul').animate({
			marginLeft: '-'+distance+'px'
	}, time);
}

  
//Incremental previous 
function animatePrevious(){
	$('.fullSliderContainer ul').animate({
			marginLeft: '+='+slideAmount+'px'
	}, 15000);
}

//Incremental next
function animateNext(){
	$('.fullSliderContainer ul').animate({
			marginLeft: '-='+slideAmount+'px'
	}, 15000);
}

//Update progress circles
function progressCircleUpdate(circleNo){
	circleToUpdate = circleNo + 1;
	$('.sliderProgress > span').removeClass('activeProgress');
	$('.sliderProgress > span:nth-child('+circleToUpdate+')').addClass('activeProgress');
}

//Circle click , update counter
function progressClick(){
	$('.sliderProgress > span:nth-child('+circlePressed+')').click(function(){
			slideCounter = circlePressed - 1;

	});
}

//Start Timer
function startTimer(intervalTime) {
    sliderTimer = window.setInterval(function() {
        triggerNext();
    }, intervalTime);
};

function stopTimer(){
   window.clearInterval(sliderTimer);
}
  
function pauseSlider(){
  stopTimer();
  $('.slideControl').removeClass('sliderPlaying');
  $('.slideControl').text('Paused');
}
  
function startSlider(){
  startTimer(15000);
  
  $('.slideControl').addClass('sliderPlaying');
  $('.slideControl').text('Pause');
}

  
$(window).resize(function(){
//Update variables and reset margin left to center list of slides.
	$('.fullSliderContainer ul').css('margin-left','0px');
  slideCounter = 0;
  sliderWidth = $('.fullSliderContainer ul li').size() * 100;
  slideAmount = $('.fullSliderContainer ul li').width();
  arrowSlide = slideCounter * slideAmount;
  slidesAmount = $('.fullSliderContainer ul li').size();
  slideCountNext = slidesAmount - 1;
  slideWidth = sliderWidth / slidesAmount / slidesAmount;
  //controlPosition = $('.fullSliderContainer ul').height() / 2;
  var sliderTimer;
  $('.sliderProgress').children().removeClass('activeProgress');
  $('.sliderProgress').children().first().addClass('activeProgress');
});



	$('.sliderProgressCircle').click(function(){	
    pauseSlider();
		progressCircleIndex = $(this).index();
		progressSlideAmount = progressCircleIndex * slideAmount;
		slideCounter = progressCircleIndex;
		animateSlider(progressSlideAmount,400);
		progressCircleUpdate(progressCircleIndex);
		
	});
	

	$('#previousSlide').click(function(event){
    pauseSlider();
    
     //var txtsub = document.getElementById('rm');
		if (slideCounter == 0) {
                    
			slideCounter = slideCountNext;
			slideNextAmount = slideCountNext * slideAmount;
			animateSlider(slideNextAmount,15000);
			progressCircleUpdate((slidesAmount -1));
		} else {
			slideCounter = slideCounter - 1;
                       
			animatePrevious();
			progressCircleUpdate(slideCounter);
		}
	});

  
  
	$('#nextSlide').click(function(e){
  
      
        if (e.originalEvent){
          pauseSlider();
        } 

  
    
		if(slideCounter == slideCountNext){
			slideCounter = 0;
			animateSlider('0',15000);
			progressCircleUpdate((0));
		} else {
			slideCounter = slideCounter + 1;
			animateNext();
			progressCircleUpdate(slideCounter);
		}
	});

  if ($('.slideControl .autoPlay').length > 0){
    startTimer(15000);
    alert(slideCounter);
  }
  

  $('.slideControl').click(function(){
    if($(this).hasClass('sliderPlaying')){
      pauseSlider();
      $(this).removeClass('sliderPlaying');
    } else {
      startSlider();
    }
  });
  

});