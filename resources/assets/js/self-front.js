$(function () {
    $('.scroll-top').click(function(){$('html,body').animate({scrollTop: 0}, 800, 'swing')});
    $('.scroll-bottom').click(function(){$('html,body').animate({scrollTop:$('#bottom').offset().top}, 800, 'swing')});
});