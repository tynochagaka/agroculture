<?php
session_start();

$user = dataFilter($_POST['uname']);
$pass = $_POST['pass'];

require '../db.php';

$sql = "SELECT * FROM farmer WHERE fusername='$user'";
$result = mysqli_query($conn, $sql);
$num_rows = mysqli_num_rows($result);

if ($num_rows == 0) {
    $_SESSION['message'] = "Invalid User Credentials!";
    header("location: error.php");
} else {
    $User = $result->fetch_assoc();

    if (password_verify($pass, $User['fpassword'])) {
        $_SESSION['id'] = $User['fid'];
        $_SESSION['Hash'] = $User['fhash'];
        $_SESSION['Password'] = $User['fpassword'];
        $_SESSION['Email'] = $User['femail'];
        $_SESSION['Name'] = $User['fname'];
        $_SESSION['Username'] = $User['fusername'];
        $_SESSION['Mobile'] = $User['fmobile'];
        $_SESSION['Addr'] = $User['faddress'];
        $_SESSION['Active'] = $User['factive'];
        $_SESSION['picStatus'] = $User['picStatus'];
        $_SESSION['picExt'] = $User['picExt'];
        $_SESSION['logged_in'] = true;
        $_SESSION['Category'] = 1;
        $_SESSION['Rating'] = 0;

        if ($_SESSION['picStatus'] == 0) {
            $_SESSION['picId'] = 0;
            $_SESSION['picName'] = "profile0.png";
        } else {
            $_SESSION['picId'] = $_SESSION['id'];
            $_SESSION['picName'] = "profile".$_SESSION['picId'].".".$_SESSION['picExt'];
        }

        header("location: profile.php");
    } else {
        $_SESSION['message'] = "Invalid User Credentials!";
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
