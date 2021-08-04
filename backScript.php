<?PHP 
include "./connect.php";

if(isset($_POST['ProfileUpdate'])){
    if (isset($_POST['email']) && $_POST['email'] !="" && isset($_POST['password']) && $_POST['password'] !="" ) {
        $email = $_POST['email'];
        $password = $_POST['password'];
        echo $email."-".$password;
    } else {
       echo "All---";
    }
}
