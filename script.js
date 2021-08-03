ajaxHomePageCall();

function ajaxHomePageCall() {
  $.ajax({
    url: './pages/home.html',
    success: function (response) {
      $('.ajax-main-content').html(response);
    },
  });
}

function ajaxHome2PageCall() {
  $.ajax({
    url: './pages/home2.html',
    success: function (response) {
      $('.home2').addClass('active');
      $('.home').removeClass('active');

      $('.ajax-main-content').html(response);
    },
  });
}
