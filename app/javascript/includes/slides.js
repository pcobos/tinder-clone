$(function () {
  var $activeSlide = $("#slides .slide:first-child");

  // show first slide
  $activeSlide.addClass("showing");

  $("#decline").on("click", function () {
    goToSlide("decline");
  });

  $("#approve").on("click", function () {
    var user_id = $activeSlide.data("id");

    // console.log(user_id);

    // Below is the Ajax request with the url and the method. Not entirely sure what this does, let's practice AJAX when we begin dealing with JS
    $.ajax({
      url: "/approve/" + user_id,
      method: "post",
      dataType: "ajax",
    });

    goToSlide("approve");
  });

  // in this function we want to always go to the next user no matter if the user clicks on approve or decline.
  function goToSlide(action) {
    $activeSlide.removeClass("showing");
    $activeSlide = $activeSlide.next(".slide");

    if (action == "approve") {
      console.log(action);
    } else {
      console.log(action);
    }

    $activeSlide.addClass("showing");
  }
});
