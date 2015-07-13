$(document).ready(function(){
  $('#answer-form').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      method: 'POST',
      data: $(this).serialize()
    })
    .done(function(response){
      $('#answers').after(response);
      $('#answer-form')[0].reset();

    })
    .fail(function(error){
      console.log(error)
    })
  })
})