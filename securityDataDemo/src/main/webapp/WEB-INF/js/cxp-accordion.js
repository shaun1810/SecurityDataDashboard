  // --------------------------------
  // Accordion - Panel Heading
  // --------------------------------

  // $('.panel-heading > h4.panel-title > a').click(function () {
  //   if (!$(this).hasClass("open")) {
  //     $(this).addClass("open");
  //     $(this).closest('.panel-heading').find('i.panel-indicator').addClass('rotate'); 
  //     $(this).closest('.panel-heading').find('i.panel-edit').removeClass('hide'); 
  //   } else if (
  //     $(this).hasClass("open")) {
  //     $(this).removeClass('open');  
  //     $(this).closest('.panel-heading').find('i.panel-indicator').removeClass('rotate');
  //     $(this).closest('.panel-heading').find('i.panel-edit').addClass('hide');  
  //   }
  // });


  // --------------------------------
  // Accordion - Panel Edit
  // --------------------------------

  $('i.panel-edit').click(function () {
  	if(!$(this).hasClass("active")) {
  		$(this).addClass("active");
  		$(this).closest('.panel-heading').find('.content-action').removeClass('hide');
  	} else if (
  		$(this).hasClass("active")) {
  			$(this).removeClass("active");
  		$(this).closest('.panel-heading').find('.content-action').addClass('hide');
  		}
  });


  // --------------------------------
  // Accordion - Panel Tabs
  // --------------------------------

  $('#accordion .panel-heading > h4.panel-title > a').click(function(){
    if ($('#accordion .panel').hasClass('open')){
      $(this).parents('.panel').removeClass('open');
      $(this).parents('.panel-title').find('i.panel-indicator').removeClass('rotate');
      $(this).parents('.panel-heading').find('i.panel-edit').addClass('hide');  
    
    } else {
      $(this).parents('.panel').addClass('open');
      $(this).parents('.panel-title').find('i.panel-indicator').addClass('rotate'); 
      $(this).parents('.panel-heading').find('i.panel-edit').removeClass('hide'); 
    }
  });

  // if ($('#accordion .panel-collapse').hasClass('in')){

  //   $('#accordion .panel').addClass('open');
  //   $('#accordion .panel').find('.panel-heading i.panel-indicator').addClass('rotate');
  //   $('#accordion .panel').find('i.panel-edit').removeClass('hide'); 

  // } else {
  //   $('#accordion .panel').removeClass('open');
  //   $('#accordion .panel').find('i.panel-indicator').removeClass('rotate'); 
  //   $('#accordion .panel').find('i.panel-edit').addClass('hide'); 

  // }

  $('#accordion .panel-tabs a').click(function(e){

    if($(this).hasClass('pc-core')){
      $('#accordion .panel-tabs a').removeClass('active');
      $(this).addClass('active');
      $('#accordion .content-wrapper').addClass('hide');
      $('#accordion .content-wrapper.pc-core').removeClass('hide');
    }
    if($(this).hasClass('software')){
      $('#accordion .panel-tabs a').removeClass('active');
      $(this).addClass('active');
      $('#accordion .content-wrapper').addClass('hide');
      $('#accordion .content-wrapper.software').removeClass('hide');
    }
    if($(this).hasClass('hardware')){
      $('#accordion .panel-tabs a').removeClass('active');
      $(this).addClass('active');
      $('#accordion .content-wrapper').addClass('hide');
      $('#accordion .content-wrapper.hardware').removeClass('hide');
    }

    e.preventDefault();
    
  });