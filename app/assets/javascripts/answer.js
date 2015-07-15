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
      // This [0] thing should feel a bit hack-y
      // Could we use a better selector?  Or put an ID or a class on this
      // thing?  0 feels like a random ass number (why not 1)?
      $('#answer-form')[0].reset();

    })
    .fail(function(error){
      console.log(error)
    })
  })
})
