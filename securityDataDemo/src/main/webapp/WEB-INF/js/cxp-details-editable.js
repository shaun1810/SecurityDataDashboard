function inputToLabel () {
   $( ".input-loop" ).each(function( index ) {
      newid = (this.id).split("-").pop();
      lblid = "#lbl-" + newid;
      $(lblid).text($( this ).val());
    });
}

function labelToInput () {
    $( ".label-loop" ).each(function( index ) {
      newid = (this.id).split("-").pop();
      inputid = "#input-" + newid;
      $(inputid).val($( this ).text());
    });
}

function inputClear () {
  $( ".input-loop" ).each(function( index ) {
      inputid = "#input-" + index;
      $(inputid).val('');
    });
}
//
//tab1
//

// edit
$('#panel1-edit').click(function (e) {
  e.preventDefault();
  
  $('#show-1').hide();
  $('#panel1-edit').hide();
   
  labelToInput();
  $('#edit-1').show();
  $('#panel1-save').show();
  $('#panel1-cancel').show();

});

// cancel
$('#panel1-cancel').click(function (e) {
   e.preventDefault();
   inputClear();
   $('#panel1-save').hide();
   $('#panel1-cancel').hide();
   $('#edit-1').hide();

   $('#show-1').show();
   $('#panel1-edit').show();

});

// save   
$('#panel1-save').click(function (e) {
  e.preventDefault();
  $('#panel1-save').hide();
  $('#panel1-cancel').hide();
  $('#edit-1').hide();

  $('#show-1').show();
  $('#panel1-edit').show();
  inputToLabel ();

});



//
//panel 2
//

// edit
$('#panel2-edit').click(function (e) {
  e.preventDefault();
  
  $('#show-2').hide();
  $('#panel2-edit').hide();
   
  // copy label values to input fields
labelToInput();
  
  $('#edit-2').show();
  $('#panel2-save').show();
  $('#panel2-cancel').show();

});

// cancel
$('#panel2-cancel').click(function (e) {
   e.preventDefault();
 inputClear();
   $('#panel2-save').hide();
   $('#panel2-cancel').hide();
   $('#edit-2').hide();

   $('#show-2').show();
   $('#panel2-edit').show();

});

// save   
$('#panel2-save').click(function (e) {
  e.preventDefault();
  $('#panel2-save').hide();
  $('#panel2-cancel').hide();
  $('#edit-2').hide();

  $('#show-2').show();
  $('#panel2-edit').show();

  // copy values from text fields to labels
  inputToLabel ();



});





//
//panel 3
//

// edit
$('#panel3-edit').click(function (e) {
  e.preventDefault();
  
  $('#show-3').hide();
  $('#panel3-edit').hide();
   
  // copy label values to input fields
  labelToInput();
  
  $('#edit-3').show();
  $('#panel3-save').show();
  $('#panel3-cancel').show();

});

// cancel
$('#panel3-cancel').click(function (e) {
   e.preventDefault();
  inputClear();
   $('#panel3-save').hide();
   $('#panel3-cancel').hide();
   $('#edit-3').hide();

   $('#show-3').show();
   $('#panel3-edit').show();

});

// save   
$('#panel3-save').click(function (e) {
  e.preventDefault();
  $('#panel3-save').hide();
  $('#panel3-cancel').hide();
  $('#edit-3').hide();

  $('#show-3').show();
  $('#panel3-edit').show();

  // copy values from text fields to labels
  
 inputToLabel ();



});





//
//panel 3
//

// edit
$('#panel4-edit').click(function (e) {
  e.preventDefault();
  
  $('#show-4').hide();
  $('#panel4-edit').hide();
   
  // copy label values to input fields
 labelToInput();
  $('#edit-4').show();
  $('#panel4-save').show();
  $('#panel4-cancel').show();

});

// cancel
$('#panel4-cancel').click(function (e) {
   e.preventDefault();
inputClear();
   $('#panel4-save').hide();
   $('#panel4-cancel').hide();
   $('#edit-4').hide();

   $('#show-4').show();
   $('#panel4-edit').show();

});

// save   
$('#panel4-save').click(function (e) {
  e.preventDefault();
  $('#panel4save').hide();
  $('#panel4-cancel').hide();
  $('#edit-4').hide();

  $('#show-4').show();
  $('#panel4-edit').show();

  // copy values from text fields to labels
  
inputToLabel ();



});






