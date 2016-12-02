$(document).ready(function(){
    $('.add-button').click(function() {
  $("#new-form").append($("#new-form").html());
  console.log($("#new-form:first").html());
});
});