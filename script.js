ajaxRegisterPageCall();
function ajaxRegisterPageCall() {
    $.ajax({
        url: './home.html',
        success: function (response) {
            $('.ajax-main-content').html(response);
            // $('.Register').addClass('active');
            // $(
            //     '.Home,.MyRequests,.MyRequests,.ChangePassword,.Profile,.Login'
            // ).removeClass('active');
        },
    });
}