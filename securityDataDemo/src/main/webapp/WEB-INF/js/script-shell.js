$(function($) {
	setTimeout(function() {
		$('#content-wrapper > .row').css({
			opacity: 1
		});
	}, 200);

	//------------------------------
	// Hover Menu
	//------------------------------
	
	$('#sidebar-nav').hover(function() {

		$('body').toggleClass('hover');

	});

	//------------------------------
	// Open Menu
	//------------------------------


	$('#sidebar-nav li a').on('click', function (e) {
		e.preventDefault();
		console.log('1');

		var $item = $(this).parent();

		// if ($item.hasClass('active')) {
		// 	$item.removeClass('active');
		// } else {
		// 	$item.addClass('active');
		// }

		if ($item.hasClass('active')) {
			console.log('2');
			$('#sidebar-nav ul li').removeClass('active');
			$item.removeClass('active');
			$item.parent().removeClass('active');

			$('#nav-col').removeClass('open');
			$('#content-wrapper').removeClass('open');
			$('.navbar-brand').removeClass('open');
			$('body').removeClass('active');
			$('body').removeClass('sub-active');
			$('#sidebar-navul.nav').addClass('sub-active');
		} else {
			console.log('3');
			$('#sidebar-nav ul li').removeClass('active');

			$item.parent().find('.active .submenu').hide();
			$item.parent().find('.active').toggleClass('active');
			$item.parent().addClass('active');
			$('#nav-col').addClass('open');
			$('#content-wrapper').addClass('open');
			$('.navbar-brand').addClass('open');
			$('body').addClass('active');
		}


		// if($('#sidebar-nav ul.submenu li').hasClass('active')){
		// 	$('body').removeClass('sub-active');
		// 	$('#sidebar-nav ul.submenu li.active').parent().hide();
		// 	$('#sidebar-nav ul.submenu li.active').parents('li').removeClass('active');
		// 	$('#sidebar-nav ul.submenu li.active').parents('ul.nav').removeClass('active');
		// }
		
		$item.toggleClass('active');

		
		if ($item.hasClass('active')) {
			$item.children('.submenu').show();
			console.log('4');
		} 
		else {
			$item.children('.submenu').hide();
			console.log('5');
		}
	});

	//------------------------------
	// Open Submenu
	//------------------------------

	if($('#sidebar-nav ul.submenu > li').hasClass('active')){
		$('body').addClass('sub-active');
		$('#sidebar-nav ul.submenu > li.active').parent().show();
		$('#sidebar-nav ul.submenu > li.active').parents('li').addClass('active');
		$('#sidebar-nav ul.submenu > li.active').parents('ul.nav').addClass('sub-active');
	}

	
	$('body').on('mouseenter', '#page-wrapper.nav-small #sidebar-nav .dropdown-toggle', function (e) {
		var $sidebar = $(this).parents('#sidebar-nav');
		console.log('6');
		if ($( document ).width() >= 992) {
			var $item = $(this).parent();
			console.log('7');
			$item.addClass('open');
			$item.children('.submenu').slideDown('fast');
		}
	});
	
	$('body').on('mouseleave', '#page-wrapper.nav-small #sidebar-nav > .nav-pills > li', function (e) {
		var $sidebar = $(this).parents('#sidebar-nav');
		console.log('8');
		if ($( document ).width() >= 992) {
			var $item = $(this);
			console.log('9');
			if ($item.hasClass('open')) {
				$item.find('.open .submenu').slideUp('fast');
				$item.find('.open').removeClass('open');
				$item.children('.submenu').slideUp('fast');
			}
			
			$item.removeClass('open');
		}
	});
	
	// $('.main-box').click(function(e) {
	// 	console.log('here');
	// $('#nav-col').removeClass('open');
	// 		// $(this).removeClass('open');
	// 		$('.navbar-brand').removeClass('open');
	// 		$('body').removeClass('active');
	// 		$('.nav li').removeClass('open');

	// });

	$('#make-small-nav').click(function (e) {
		console.log('10');
		$('#page-wrapper').toggleClass('nav-small');
		$('.navbar-brand').toggleClass('nav-small');
	});
	
	$(window).smartresize(function(){
		if ($( document ).width() <= 991) {
			console.log('11');
			$('#page-wrapper').removeClass('nav-small');
			$('.navbar-brand').removeClass('nav-small');
		}
	});
	
	$('.mobile-search').click(function(e) {
		e.preventDefault();
		console.log('12');
		$('.mobile-search').addClass('active');
		$('.mobile-search form input.form-control').focus();
	});
	$(document).mouseup(function (e) {
		var container = $('.mobile-search');
		console.log('13');
		if (!container.is(e.target) // if the target of the click isn't the container...
			
			&& container.has(e.target).length === 0) // ... nor a descendant of the container
		{
			console.log('13b');
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
		console.log('14');
		if ($(this).hasClass('browse')) {
			console.log('15');
			$('.search-nav').addClass('none');
			$('.search-top.search').addClass('none');
			$('.browse-nav').removeClass('none');
			$('.search-top.browse').removeClass('none');
		} else {
			console.log('16');
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
		console.log('17');
		$('.record-nav').addClass('none');
		$('.browse-nav').removeClass('none');

		$('.search-top').addClass('none');
		$('.search-top.search').removeClass('none');
	});


	// --------------------------------
	// Search Sidebar - Record / Search
	// --------------------------------

	$('.search-top .fa-search').click(function(){
		console.log('18');
		$('.search-nav').addClass('active');
	});

	$('.actions .cancel').click(function(){
		console.log('19');
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
	// Sidebar Click Out
	// --------------------------------

	$(document).mouseup(function (e){
		// clicking in large white area
		// 13,20,21
		console.log('20');
	    var navSidebar = $("#nav-col");
	    var $item = $('#sidebar-nav .dropdown-toggle').parent();

	    // add condition to not diactivate active submenu

	    if (!navSidebar.is(e.target) // if the target of the click isn't the container...
	        && navSidebar.has(e.target).length === 0) // ... nor a descendant of the container
	    {
	        $item.parent().removeClass('open');
	        console.log('21');
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