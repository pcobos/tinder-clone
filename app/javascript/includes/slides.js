$(function () {
  var $activeSlide = $("#slides .slide:first-child");

  // show first slide
  $activeSlide.addClass("showing");

  $("#decline").on("click", function () {
    goToSlide("decline");
  });

  $("#approve").on("click", function () {
    var user_id = $activeSlide.data("id");

    $.ajax({
      url: "/approve/",
    });
    goToSlide("approve");
  });

  // in this function we want to always go to the next user no matter if the user clicks on approve or decline.
  function goToSlide(action) {
    $activeSlide.removeClass("showing");
    $activeSlide = $activeSlide.next(".slide");

    if (action == "approve") {
    } else {
    }

    $activeSlide.addClass("showing");
  }
});
