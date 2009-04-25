$(document).ready(function () {
  $(".filter").click(function (event) {
    var active = $('.filter.active')
    var filter = $(event.target)
    active.toggleClass('active');
    filter.toggleClass('active');
    selectedFilter = filter.text();

    if (selectedFilter == "all") {
      $("#content .design").show();
    } else {
      $("#content .design").hide();
      $("#content .design." + selectedFilter ).show();
    }
  });
});