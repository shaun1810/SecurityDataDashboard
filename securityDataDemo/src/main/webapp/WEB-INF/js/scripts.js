$(function($) {
	setTimeout(function() {
		$('#content-wrapper > .row').css({
			opacity: 1
		});
	}, 200);

	//------------------------------
	// Waypoints - Header
	//------------------------------

	// var sticky = new Waypoint.Sticky({
	//   element: $('.page-header')[0],
	//   offset: $("#header-navbar").outerHeight(true)
	// });

	//------------------------------
	// Sidebar Nav - Hover
	//------------------------------
	
	$('#sidebar-nav').hover(function() {
		$('body').toggleClass('hover');
		$('#sidebar-nav ul.nav li.active ul.submenu').show();

		if($('#sidebar-nav ul.nav li').hasClass('active')){
			$('body').addClass('active');
		}
	});

	// --------------------------------
	// Sidebar Nav - MouseOut
	// --------------------------------

	$(document).mousemove(function(e){

		var i = 0;
		
		if(e.pageX > 360 & !$('body').hasClass('hover')) {
			i = 1000;

			$('body').removeClass('active');
			$('#sidebar-nav ul.nav li ul.submenu').hide();
		}
		
	});

	//------------------------------
	// Sidebar Nav - First Level
	//------------------------------


	$('#sidebar-nav ul.nav li a.dropdown-toggle').on('click', function(e){
		e.preventDefault();

		var $item = $(this).parent();

		if($item.hasClass('active')){
			$item.removeClass('active');
			$('body').removeClass('active');
			$item.find('.submenu').hide();
		} else {
			$('#sidebar-nav li').removeClass('active');
			$item.addClass('active');
			$('body').addClass('active');
			$('#sidebar-nav ul.nav li ul.submenu').hide();
			$item.find('.submenu').show();
		}

	});

	//------------------------------
	// Sidebar Nav - Second Level
	//------------------------------

	$('#sidebar-nav ul.submenu li a').on('click', function(e){
		e.preventDefault();

		var $item = $(this).parent();

		if($item.hasClass('active')){
			$item.removeClass('active');
			$item.parents('li').removeClass('active');
			$('body').removeClass('active');
		} else {
			$('#sidebar-nav li').removeClass('active');
			$item.addClass('active');
			$item.parents('li').addClass('active');
			$('body').addClass('active');
		}

	});


	//------------------------------
	// Sidebar Nav - OnLoad
	//------------------------------

	if($('#sidebar-nav ul.nav li').hasClass('active')){

		$item = $('#sidebar-nav ul.nav li.active').parent();
		$item.parents('li').addClass('active');
		$('body').addClass('active');
	}

	// --------------------------------
	// Sidebar Nav Height
	// --------------------------------

	// var viewportHeight = $(window).height();

	// $('#nav-col').height(viewportHeight) - 120;
	// $('#search-sidebar').height(viewportHeight) - 120;
	// $('#search-record-sidebar').height(viewportHeight) - 120;
	// $('.search-nav').height(viewportHeight) - 120;

	// $(window).resize(function() {
	// 	$('#nav-col').height(viewportHeight) - 120;
	// 	$('#search-sidebar').height(viewportHeight) - 120;
	// 	$('#search-record-sidebar').height(viewportHeight) - 120;
	// 	$('.search-nav').height(viewportHeight) - 120;
	// });
	
	var viewportHeight = $('#content-wrapper').outerHeight();

	$('#search-record-sidebar').height(viewportHeight - 55);

	// --------------------------------
	// Search & Filter Sidebar Exists
	// --------------------------------

	if ($('#search-sidebar').length) {
		$('#search-sidebar').parent().addClass('search-sidebar-content');
	}
	if ($('#search-record-sidebar').length) {
		$('#search-record-sidebar').parent().addClass('search-sidebar-content');
	}

	// --------------------------------
	// Search Sidebar - Tabs
	// --------------------------------

	$('.tabs .tab-item').click(function(){
		if ($(this).hasClass('browse')) {
			$('.search-nav').addClass('none');
			$('.search-top.search').addClass('none');
			$('.browse-nav').removeClass('none');
			$('.search-top.browse').removeClass('none');
		} else {
			$('.browse-nav').addClass('none');
			$('.search-top.browse').addClass('none');
			$('.search-nav').removeClass('none');
			$('.search-top.search').removeClass('none');
		}
	});

	// --------------------------------
	// Search Sidebar - Record / Browse
	// --------------------------------

	$('.btn.record').click(function(){
		$('.record-nav').addClass('none');
		$('.browse-nav').removeClass('none');

		$('.search-top').addClass('none');
		$('.search-top.search').removeClass('none');
	});


	// --------------------------------
	// Search Sidebar - Record / Search
	// --------------------------------

	$('.search-top .fa-search').click(function(){
		$('.search-nav').addClass('active');
	});

	$('.actions .cancel').click(function(){
		$('.record-nav').removeClass('none');
		$('.browse-nav').addClass('none');

		$('.search-top').removeClass('none');
		$('.search-top.search').addClass('none');
		$('.search-nav').removeClass('active');
	});

	// --------------------------------
	// Search Sidebar - Record / Search
	// --------------------------------

	$(document).mouseup(function (e){
	    var container = $("#search-record-sidebar");

	    if (!container.is(e.target) // if the target of the click isn't the container...
	        && container.has(e.target).length === 0) // ... nor a descendant of the container
	    {
	        $('.search-nav').removeClass('active');
	    }
	});


	// --------------------------------
	// Sidebar ClickOut
	// --------------------------------

	// $(document).mouseup(function (e){
	//     var navSidebar = $("#nav-col");
	//     var $item = $('#sidebar-nav .dropdown-toggle').parent();

	//     // add condition to not diactivate active submenu

	//     if (!navSidebar.is(e.target) // if the target of the click isn't the container...
	//         && navSidebar.has(e.target).length === 0) // ... nor a descendant of the container
	//     {
	//         $('#sidebar-nav li').removeClass('active');
	// 		$('body').removeClass('active');
	//     }
	// });

	// --------------------------------
	// Fixed Menu
	// --------------------------------
	
	$('.fixed-leftmenu #col-left').nanoScroller({
    	alwaysVisible: true,
    	iOSNativeScrolling: false,
    	preventPageScrolling: true,
    	contentClass: 'col-left-nano-content'
    });
	
	// build all tooltips from data-attributes
	$("[data-toggle='tooltip']").each(function (index, el) {
		$(el).tooltip({
			placement: $(this).data("placement") || 'top'
		});
	});


	// --------------------------------
	// Tag Remove
	// --------------------------------

	$('.tag-wrap .tag i').click(function(){
		$(this).parent().remove();
		// console.log('here');
	});

	// --------------------------------
	// Star Select/Remove
	// --------------------------------

	$('.glyphicon-star-empty').click(function() {
  		$(this).toggleClass('glyphicon-star-empty glyphicon-star');
	});

	// --------------------------------
	// Star + Tags Select/Remove 
	// --------------------------------

	$('.detail-table .glyphicon').click(function() {
		var tagContainer = $(this).parents('.content-wrapper').find('.tag-wrap');
		var tagPrimaryText = $(this).parent().html().replace('<i class="glyphicon glyphicon-star"></i>','');
		var tagSecondaryText = $(this).parent().next('td').html();

		var tagRemove = tagContainer.find('.tag:contains("'+tagPrimaryText+'")').parent();

		if($(this).hasClass('glyphicon-star')){
			findId = $(this).data('id');
			tagContainer.append('<span class="tag" data-id="' + findId + '">'+ tagPrimaryText + ': ' + tagSecondaryText +' <i class="glyphicon glyphicon-remove-circle"></i></span>');
		}
		if($(this).hasClass('glyphicon-star-empty')){
			// tagContainer.find(tagRemove).remove();
			findId = $(this).data('id');
			// console.log(tagRemove);
			x = $(tagContainer).find("[data-id='" + findId + "']");
			x.hide();
		}

		// Tag Remove - Attachment

		$('.tag-wrap .tag i').click(function(){
			$(this).parent().remove();
		});
  
	});




	// --------------------------------
	// Pagination
	// --------------------------------

	$('#pagination-container ul.pagination li').click(function(e){

		$('#pagination-container ul.pagination li').removeClass('active');
		$(this).addClass('active');

		e.preventDefault();
		
	});


});

$.fn.removeClassPrefix = function(prefix) {
    this.each(function(i, el) {
        var classes = el.className.split(" ").filter(function(c) {
            return c.lastIndexOf(prefix, 0) !== 0;
        });
        el.className = classes.join(" ");
    });
    return this;
};

(function($,sr){
	// debouncing function from John Hann
	// http://unscriptable.com/index.php/2009/03/20/debouncing-javascript-methods/
	var debounce = function (func, threshold, execAsap) {
		var timeout;

		return function debounced () {
			var obj = this, args = arguments;
			function delayed () {
				if (!execAsap)
					func.apply(obj, args);
				timeout = null;
			};

			if (timeout)
				clearTimeout(timeout);
			else if (execAsap)
				func.apply(obj, args);

			timeout = setTimeout(delayed, threshold || 100);
		};
	}
	// smartresize 
	jQuery.fn[sr] = function(fn){	return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };

})(jQuery,'smartresize');