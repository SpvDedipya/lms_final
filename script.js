ajaxRegisterPageCall();
function ajaxRegisterPageCall() {
  $.ajax({
    url: './home.html',
    success: function (response) {
      $('.ajax-main-content').html(response);
    },
  });
}
