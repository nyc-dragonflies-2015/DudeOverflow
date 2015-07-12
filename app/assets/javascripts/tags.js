$(document).ready(function(){
  $('.tag-name').hover(function(e) {
    var currentTag = '#' + $(this)[0].children[0].id;
    $(currentTag).show();
  }, function() {
    var currentTag = '#' + $(this)[0].children[0].id;
    if (!($(".tag-name").hasClass("show"))) {
        $(currentTag).hide();
    }
  })
})