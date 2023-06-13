// Step Form JS Start
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("step");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
    document.getElementById("nextBtn").setAttribute("type", "submit");
   

  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("step");
  
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("step");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("stepIndicator")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("stepIndicator");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
// Step Form JS End



var extraprice=0;  
$('.subtotal').text($('#packagefee').text());
var subtotal = $('.subtotal').text();
var taxfee = ((tax / 100) * subtotal).toFixed(2) ;
$('.tax-fee').text(taxfee);
var finalTotal =  parseFloat(subtotal) + parseFloat(taxfee);
$('.total').text(finalTotal);

$('.checkbox').on('click', function() {

$(this).parent().next().next().next().find('input').removeAttr('disabled');

if($(this).is(':checked')){

  
var title = $(this).data('title');
var id = $(this).attr('id');
var unitprice= $(this).data('price');
var qty = $(this).parent().next().next().next().find('.qty').attr('id');
var qtyprice = $(this).parent().next().next().next().find('.qty').val();
var price = $(this).data('price')* qtyprice;
var currency = $(this).data('currency');

$('#extra').append('<div class="pricing-content d-flex justify-content-between '+id+'" ><p>'+title +'x <p class="myqty"></p></p><p>'+currency+' <span class="'+qty+'"> '+price+'</span></p></div>');

$('.'+id).find('.myqty').text(qtyprice);

var extratotal = $('.'+qty).text();
 extraprice = parseFloat(extratotal) + extraprice;
$('.extra-fee').text(extraprice);

$('.subtotal').text(parseFloat($('.extra-fee').text()) + parseFloat($('#packagefee').text()));

var subtotal = $('.subtotal').text();
var taxfee = Math.round((tax / 100) * subtotal) ;
$('.tax-fee').text(taxfee);
var finalTotal =  parseFloat(subtotal) + parseFloat(taxfee);
$('.total').text(finalTotal);





$('#'+qty).on('change', function() {
    
    var oldextra= $('.extra-fee').text();
    var updatePrice = $('.'+qty).text();

    var quantity = $(this).val();
    var total = unitprice * quantity;
    $('.'+qty).text(total);
    $('.'+qty).parent().parent().find('.myqty').text(quantity);

    var newExtraPrice = parseFloat(oldextra) - parseFloat(updatePrice);
    var totalNew =  newExtraPrice + total;
    $('.extra-fee').text(totalNew);
    $('.subtotal').text(totalNew + parseFloat($('#packagefee').text()));

    var subtotal = $('.subtotal').text();
    var taxfee = Math.round((tax / 100) * subtotal) ;
    $('.tax-fee').text(taxfee);

    var finalTotal =  parseFloat(subtotal) + parseFloat(taxfee);
    $('.total').text(finalTotal);
    

});

}
else{

$(this).parent().next().next().next().find('input').attr('disabled', 'disabled');
    var id = $(this).attr('id');
    var price = $('.'+id).find('span').text();
    $('.'+id).remove();

    var oldextra= $('.extra-fee').text();
    
     extraprice  = parseFloat(oldextra) - parseFloat(price);

    $('.extra-fee').text(extraprice);
    $('.subtotal').text(extraprice + parseFloat($('#packagefee').text()));

    var subtotal = $('.subtotal').text();
    var taxfee = ((tax / 100) * subtotal).toFixed(2) ;
    $('.tax-fee').text(taxfee);
    var finalTotal =  parseFloat(subtotal) + parseFloat(taxfee);
     $('.total').text(finalTotal);
    
}
});



$(document).on('click','.rangeschedule',function(){
    var schedule = $(this).text();
    $('#schedule').val(schedule);
    $('#nextBtn').removeAttr('disabled');
    $('.rangeschedule').parent().parent().parent().removeClass('active');
    $(this).parent().parent().parent().addClass('active');
})








