<?php
define('png', '.png');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = dataFilter($_POST['name']);
    $mobile = dataFilter($_POST['mobile']);
    $user = dataFilter($_POST['uname']);
    $email = dataFilter($_POST['email']);
    $pass = dataFilter(password_hash($_POST['pass'], PASSWORD_BCRYPT));
    $hash = dataFilter(md5(rand(0, 1000)));
    $addr = dataFilter($_POST['addr']);

    $_SESSION['Email'] = $email;
    $_SESSION['Name'] = $name;
    $_SESSION['Password'] = $pass;
    $_SESSION['Username'] = $user;
    $_SESSION['Mobile'] = $mobile;
    $_SESSION['Hash'] = $hash;
    $_SESSION['Addr'] = $addr;
    $_SESSION['Rating'] = 0;
}

require '../db.php';

$length = strlen($mobile);

if ($length != 10) {
    $_SESSION['message'] = "Invalid Mobile Number!";
    header("location: error.php");
    die();
}

$sql = "SELECT * FROM farmer WHERE femail='$email'";
$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));

if ($result->num_rows > 0) {
    $_SESSION['message'] = "User with this email already exists!";
    header("location: error.php");
} else {
    $sql = "INSERT INTO farmer (fname, fusername, fpassword, fhash, fmobile, femail, faddress)
            VALUES ('$name','$user','$pass','$hash','$mobile','$email','$addr')";

    if (mysqli_query($conn, $sql)) {
        $_SESSION['Active'] = 0;
        $_SESSION['logged_in'] = true;

        $sql = "SELECT * FROM farmer  WHERE fusername='$user'";
        $result = mysqli_query($conn, $sql);
        $User = $result->fetch_assoc();
        $_SESSION['id'] = $User['fid'];

        $_SESSION['message'] = "You are now registered";

        $to = $email;
        $subject = "Account Verification (ArtCircle.com)";
        $message_body = "
        Hello $user,

        Thank you for signing up!";

        //$check = mail( $to, $subject, $message_body );

        header("location: profile.php");
    } else {
        $_SESSION['message'] = "Registration failed!";
        header("location: error.php");
    }
}

function dataFilter($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>
