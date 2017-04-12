$ ->
  pageHeight1 = $(window).height() * 0.10
  area_height = $('#header-area').height()
  slide_height = $('#slide-in').height()
  menuBarHeight = $('#menu-bar').height()

  area_width = $('#header-area').width() /2
  slide_width = $('.slide').width() /2
  to_slide = area_width - slide_width;


  $('#header-area').css('top', menuBarHeight)
  $('#header-area').css('padding-top', pageHeight1 - 15);
  $('#header-area').css('padding-bottom', pageHeight1);

  $('.slide').animate({left: "+" + to_slide }, 3000);
  $('.slide').animate({right: "+" + to_slide }, 3000);


  $(window).resize(->
    pageHeight2 = $(window).height() * 0.10;
    $('#slide-in').removeClass('slide');
    $('#header-area').css('padding-top', pageHeight2 - 15);
    $('#header-area').css('padding-bottom', (pageHeight2 - slide_height));
    );



  console.log(slide_height)
