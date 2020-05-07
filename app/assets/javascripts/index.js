/*navbar scroll start*/
$(document).ready(function(){
	$(window).scroll(function() {
		if ($(document).scrollTop() > 50) {
			$('#navbar').addClass('shrink');
			$('.resized-link').addClass('shrink-link');
			$('.register-btn').addClass('shrink-btn');
		 } else {
			$('#navbar').removeClass('shrink');
			$('.resized-link').removeClass('shrink-link');
			$('.register-btn').removeClass('shrink-btn');
		}
	});		
	
});
/*navbar scroll end*/

/*option slider start*/
function openNav() {
  document.getElementById("box-btn").style.display = "none";
  document.getElementById("sideOptionBar").style.width = "250px";
}

function closeNav() {
  document.getElementById("sideOptionBar").style.width = "0";
  document.getElementById("box-btn").style.display = "block";
}
/*option slider end*/

/*dropdown menu start*/
	$(function () {
  // dropdown menu in the side nav
  var slideNavDropdown = $('.side-nav-dropdown');

  $('.side-nav .categories .drop').on('click', function () {

    var $this = $(this)

    $this.toggleClass('opend').siblings().removeClass('opend');

    if ($this.hasClass('opend')) {
      $this.find('.side-nav-dropdown').slideToggle('fast');
      $this.siblings().find('.side-nav-dropdown').slideUp('fast');
    } else {
      $this.find('.side-nav-dropdown').slideUp('fast');
    }
  });


});
/*dropdown menu end*/

/*Dashboard sidebar menu start*/
	 function openSideBar() {
         	if($(window).width() <= 1200)
         	{
         	document.getElementById("sidenav").style.width="250px";
         	document.getElementById("main").style.marginLeft="0px";
         	document.getElementById("open").style.display = "none";
         	document.getElementById("open-nav").style.display = "none";
			document.getElementById("close").style.display = "block";      
			document.getElementById("close-nav").style.display = "block";      
             }
             else{
             document.getElementById("sidenav").style.width="250px";
             document.getElementById("main").style.marginLeft="250px";
         	 document.getElementById("open").style.display = "none";
			 document.getElementById("close").style.display = "block";      	
             }
         }
	 function closeSideBar() {
		 if($(window).width() <= 992)
         	{
         	document.getElementById("sidenav").style.width = "0px";
			document.getElementById("main").style.marginLeft="0px";
			document.getElementById("open").style.display = "block";
			document.getElementById("open-nav").style.display = "block";
			document.getElementById("close").style.display = "none";
			document.getElementById("close-nav").style.display = "none";
             }
             else{
			document.getElementById("sidenav").style.width = "50px";
			document.getElementById("main").style.marginLeft="50px";
			document.getElementById("open").style.display = "block";
			document.getElementById("close").style.display = "none";      	
             }
		
		}
/*Dashboard sidebar menu end*/
