$(document).ready(function(){
  $('#question-comment-form').on('submit', function(event){
  event.preventDefault();
    $.ajax({
      url: 'http://localhost:3000/comments',
      method: 'POST',
      data: $(this).serialize()
    })
    .done(function(response){
      $('#question-comments-header').after(response);
      $('#question-comment-form')[0].reset();
    })
    .fail(function(error){
      console.log(error)
    });
  });
})