<?php
	if(isset($_SESSION['logged_in']) AND $_SESSION['logged_in'] == 1)
	{
		$loginProfile = "My Profile: ". $_SESSION['Username'];
		$logo = "glyphicon glyphicon-user";
		$link = "Login/profile.php";
		$link = "profileView.php";

	}
	else
	{
		$loginProfile = "Login";
		$link = "index.php";
		$logo = "glyphicon glyphicon-log-in";
	}
?>

<!DOCTYPE html>
			<header id="header">
				<h1><a href="index.php">AgroForestry</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.php"><span class="glyphicon glyphicon-home"></span> Home</a></li>
						<li><a href="infor.php"><span class="glyphicon glyphicon-grain">About</a></li>
						<li><a href="myCart.php"><span class="glyphicon glyphicon-shopping-cart">Directory</a></li>
						<li><a href="<?= $link; ?>"><span class="<?php echo $logo; ?>"></span><?php echo" ". $loginProfile; ?></a></li>
						<li><a href="market.php"><span class="glyphicon glyphicon-grain">Library</a></li>
						<li><a href="blogView.php"><span class="glyphicon glyphicon-comment"> DiscussionForum</a></li>
					</ul>
				</nav>
			</header>

	</body>
</html>
