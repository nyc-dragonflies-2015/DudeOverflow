$(document).ready(function(){
  $('.tag-name').on('click', function(){
    var currentTag = $(this).attr("id");
    console.log(currentTag)
    $(currentTag).hide();
  })
})