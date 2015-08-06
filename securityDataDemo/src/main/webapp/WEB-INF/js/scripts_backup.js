$(function($) {
	setTimeout(function() {
		$('#content-wrapper > .row').css({
			opacity: 1
		});
	}, 200);
	
	$('#sidebar-nav').hover(function() {
		if($('body').hasClass('open')){
			$('body').removeClass('open');
		} else {
			$('body').addClass('open');
		}
	});


	$('#sidebar-nav .dropdown-toggle').on('click', function (e) {
		e.preventDefault();
		
		var $item = $(this).parent();

		if (!$item.hasClass('open')) {
			$item.parent().find('.open .submenu').hide();
			$item.parent().find('.open').toggleClass('open');
			$item.parent().addClass('open');
			$('#nav-col').addClass('open');
			$('#content-wrapper').addClass('open');
			$('.navbar-brand').addClass('open');
			$('body').addClass('active');
		} else {
			$item.parent().removeClass('open');
			$('#nav-col').removeClass('open');
			$('#content-wrapper').removeClass('open');
			$('.navbar-brand').removeClass('open');
			$('body').removeClass('active');
		}
		
		$item.toggleClass('open');

		
		if ($item.hasClass('open')) {
			$item.children('.submenu').show();
		} 
		else {
			$item.children('.submenu').hide();
		}
	});

	
	$('body').on('mouseenter', '#page-wrapper.nav-small #sidebar-nav .dropdown-toggle', function (e) {
		var $sidebar = $(this).parents('#sidebar-nav');

		if ($( document ).width() >= 992) {
			var $item = $(this).parent();
	
			$item.addClass('open');
			$item.children('.submenu').slideDown('fast');
		}
	});
	
	$('body').on('mouseleave', '#page-wrapper.nav-small #sidebar-nav > .nav-pills > li', function (e) {
		var $sidebar = $(this).parents('#sidebar-nav');

		if ($( document ).width() >= 992) {
			var $item = $(this);
	
			if ($item.hasClass('open')) {
				$item.find('.open .submenu').slideUp('fast');
				$item.find('.open').removeClass('open');
				$item.children('.submenu').slideUp('fast');
			}
			
			$item.removeClass('open');
		}
	});
	
	$('#make-small-nav').click(function (e) {
		$('#page-wrapper').toggleClass('nav-small');
		$('.navbar-brand').toggleClass('nav-small');
	});
	
	$(window).smartresize(function(){
		if ($( document ).width() <= 991) {
			$('#page-wrapper').removeClass('nav-small');
			$('.navbar-brand').removeClass('nav-small');
		}
	});
	
	$('.mobile-search').click(function(e) {
		e.preventDefault();
		
		$('.mobile-search').addClass('active');
		$('.mobile-search form input.form-control').focus();
	});
	$(document).mouseup(function (e) {
		var container = $('.mobile-search');

		if (!container.is(e.target) // if the target of the click isn't the container...
			&& container.has(e.target).length === 0) // ... nor a descendant of the container
		{
			container.removeClass('active');
		}
	});

	// --------------------------------
	// Sidebar Nav Height
	// --------------------------------

	var elementHeight = $('#content-wrapper').outerHeight();
	$('#nav-col').height(elementHeight);
	$('#search-sidebar').height(elementHeight - 55);
	$('#search-record-sidebar').height(elementHeight - 55);
	$('.search-nav').height(elementHeight - 55);


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

	$(document).mouseup(function (e){
	    var navSidebar = $("#nav-col");
	    var $item = $('#sidebar-nav .dropdown-toggle').parent();

	    if (!navSidebar.is(e.target) // if the target of the click isn't the container...
	        && navSidebar.has(e.target).length === 0) // ... nor a descendant of the container
	    {
	        $item.parent().removeClass('open');
			$('#nav-col').removeClass('open');
			$(this).removeClass('open');
			$('.navbar-brand').removeClass('open');
			$('body').removeClass('active');
			$('.nav li').removeClass('open');

			$item.children('.submenu').hide();
	    }
	});

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
	});

	// --------------------------------
	// Star Select/Remove
	// --------------------------------

	$('.glyphicon-star-empty').click(function(){
		if($(this).hasClass('glyphicon-star-empty')) {
			$(this).removeClass('glyphicon-star-empty');
			$(this).addClass('glyphicon-star');
		}
	});
	$('.glyphicon-star-empty').click(function(){
		if($(this).hasClass('glyphicon-star-empty')) {
			$(this).removeClass('glyphicon-star-empty');
			$(this).addClass('glyphicon-star');
		}
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