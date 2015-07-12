$(document).ready(function(){
  $('#question-comment-form').on('submit', function(event){
  event.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
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

  $('.answer-comment-form').on('submit', function(event){
    event.preventDefault();
    console.log("yo");
    var commentFormId = "#" + $(this).attr("id");
    console.log(commentFormId);
    $.ajax({
      url: $(this).attr('action'),
      method: 'POST',
      data: $(this).serialize()
    })
    .done(function(response){
      console.log(response);
      $(commentFormId).after(response + "<br/>");
      $(commentFormId)[0].reset();
    })
    .fail(function(error){
      console.log(error);
    })
  })
})
