$(document).ready(function(){

  $('#new-contact').bind('click',function(){

    $('#add-contact').show();
    $('#sale_name').focus();

    $('#submit').bind('click',function(){
      if ($('#sale_name').val() && $('#sale_description').val() && $('#sale_price').val()) {
        $('#form-sale').submit();
      }else {
        alert('Preencer todos os campos');
      }
    });

    $('#cancel').bind('click',function(){
      $('#add-contact').hide();
    });

  });

});
