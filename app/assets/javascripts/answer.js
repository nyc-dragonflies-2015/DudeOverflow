$(document).ready(function(){
  $('#answer-form').on('submit', function(event){
    event.preventDefault();
    console.log('you made it');
    $.ajax({
      url: $(this).attr('action'),
      method: 'POST',
      data: $(this).serialize()
    })
    .done(function(response){
      console.log(response);
      $('#answer-form').after(response);
    })
    .fail(function(error){
      console.log(error);
    })
  })
})
