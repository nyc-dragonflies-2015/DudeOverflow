$(document).ready(function(){
  $('#question-comment-form').on('submit', function(event){
  event.preventDefault();
  console.log($(this));
    $.ajax({
      url: 'http://localhost:3000/comments',
      method: 'POST',
      data: $(this).serialize()
    }).done(function(response){
      console.log(response);
      $('ul#comment-list').append(response);
    }).fail(function(error){
      console.log('error')
    });
  });
})