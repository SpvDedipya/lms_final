ajaxDashboardPageCall();
function ajaxDashboardPageCall() {
  $.ajax({
    url: './pages/dashboard.php',
    success: function (response) {
      $('.Profile,.Registered-Events,.Leaderboard').removeClass('active');
      $('.Dashboard').addClass('active');
      $('.ajax-main-content').html(response);
    },
  });
}
function ajaxProfilePageCall() {
  $.ajax({
    url: './pages/profile.php',
    success: function (response) {
      $('.Dashboard,.Profile.Registered-Events,.Leaderboard').removeClass('active');
      $('.Profile').addClass('active');
      $('.ajax-main-content').html(response);
    },
  });
}

function ajaxRegisteredEventsPageCall() {
  $.ajax({
    url: './pages/registeredEvents.php',
    success: function (response) {
      $('.Profile,.Dashboard,.Leaderboard').removeClass('active');
      $('.Registered-Events').addClass('active');
      $('.ajax-main-content').html(response);
    },
  });
}

function ajaxLeaderboardPageCall() {
  $.ajax({
    url: './pages/leaderboard.php',
    success: function (response) {
      $('.Dashboard,.Profile,.Registered-Events').removeClass('active');
      $('.Leaderboard').addClass('active');
      $('.ajax-main-content').html(response);
    },
  });
}

