$(document).ready(function(){
  $('#question-comment-form').on('submit', function(event){
  event.preventDefault();
    $.ajax({
      url: 'http://localhost:3000/comments',
      method: 'POST',
      data: $(this).serialize()
    })
    .done(function(response){
      $('.question-comments').prepend(response);
      $('#question-comment-form')[0].reset();
    })
    .fail(function(error){
      console.log(error)
    });
  });

  $('.answer-comment-form').on('submit', function(event){
    event.preventDefault();
    var commentFormId = "#" + $(this).attr("id");
    var x = (commentFormId + "-comment");
    var $target = $(this)
    $.ajax({
      url: $(this).attr('action'),
      method: 'POST',
      data: $(this).serialize()
    })
    .done(function(response){
      $('.answer-comment-form').parent().parent().children(x).prepend(response)
      $(commentFormId)[0].reset();
    })
    .fail(function(error){
      console.log(error);
    })
  })
})
