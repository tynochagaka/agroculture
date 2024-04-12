<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>AgroForestry</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="bootstrap\css\bootstrap.min.css" rel="stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="bootstrap\js\bootstrap.min.js"></script>
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="login.css"/>
		<link rel="stylesheet" type="text/css" href="indexFooter.css">
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<?php require 'menu.php'; ?>
	<body>
    <style>
        body {
            font-family: "Lato", Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #4dac71;
        }

        h2, h3, p, a {
            color: white;
            font-size: 16px;
            font-weight: normal;
            font-family: 'sans-serif';
        }

        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .main {
            background-color: #4dac71;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .main_content h2 {
            margin: 0;
            font-size: 24px;
            color: white;
        }

        .main_content span {
            font-size: 16px;
            color: white;
        }

        .product {
            background-color: #4dac71;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product h2 {
            margin-top: 0;
            font-size: 20px;
            color: white;
        }

        .product_container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .item {
            width: 300px;
            margin: 20px 10px;
            padding: 20px;
            background-color: #4dac71;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        .item_img img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .item_content {
            text-align: center;
        }

        .item_content h3 {
            margin-top: 10px;
            font-size: 18px;
            color: white;
        }

        .item_content p {
            font-size: 14px;
            color: white;
        }

        .item_content a {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: white;
        }

        .item_content a:hover {
            text-decoration: underline;
        }

        .section {
            background-color: #4dac71;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .section h2 {
            margin-top: 0;
            font-size: 20px;
            color: white;
        }



    </style>
</head>
<body>

    <div class="main">
        <div class="main_content">
            <h2>Advancing AgroForestry</h2>
        </div>
    </div>

    <div class="product">
        <h2>Expert Insights</h2>
        <div class="product_container">
        <div class="item">
                <div class="item_img">
                    <img src="images/cc.png">
                </div>
                <div class="item_content">
                    <h3>History</h3>
                    <p>Explore Agroforestry History</p>
                    <a href="https://youtu.be/H4rtcBNqn3M?si=Uy6uA61XhOetx_xc" target="_blank"style="color: white;">WATCH VIDEO</a>
                </div>
            </div>
            <div class="item">
                <div class="item_img">
                    <img src="images/hot.jpeg">
                </div>
                
                <div class="item_content">
                    <h3>AgroForestry Innovations</h3>
                    <p>Explore groundbreaking agroforestry techniques to enhance sustainability</p>
                    <a href="innovations.pdf" target="_blank"style="color: white;">LEARN MORE</a>
                    <a href="https://youtu.be/tWcCCLfGxnU?si=iffyoaXele1cW8x6" target="_blank"style="color: white;">WATCH VIDEO</a>
                </div>
            </div>
            <div class="item">
                <div class="item_img">
                    <img src="images/back.jpeg">
                </div>
                <div class="item_content">
                    <h3>Biodiversity Promotion</h3>
                    <p>Discover initiatives promoting biodiversity for resilient agricultural ecosystems</p>
                    <a href="biodiversity.pdf" target="_blank"style="color: white;">LEARN MORE</a>
                    <a href="https://youtu.be/VjqJkv3-_7I?si=a-j1Ozh6s7KGKZCJ" target="_blank"style="color: white;">WATCH VIDEO</a>
                </div>
            </div>
            <div class="item">
                <div class="item_img">
                    <img src="images/soil.avif">
                </div>
                <div class="item_content">
                    <h3>Sustainable Soil Practices</h3>
                    <p>Implement sustainable soil management practices for long-term agricultural success</p>
                    <a href="soil.pdf" target="_blank"style="color: white;">LEARN MORE</a>
                    <a href="https://youtu.be/rvHJKqU-mZo?si=wirtC_3-TiEJQUu5" target="_blank"style="color: white;">WATCH VIDEO</a>
                </div>
            </div>
            <div class="item">
                <div class="item_img">
                    <img src="images/organic.png">
                </div>
                <div class="item_content">
                    <h3>Organic Produce Excellence</h3>
                    <p>Explore the excellence of organic farming and its benefits for a healthier future</p>
                    <a href="organic.pdf" target="_blank"style="color: white;">LEARN MORE</a>
                    <a href="https://youtu.be/lRyXlvIJFWI?si=INnJlmqEQtDnsdR-" target="_blank"style="color: white;">WATCH VIDEO</a>
                </div>
            </div>

            <div class="item">
                <div class="item_img">
                    <img src="images/ccc.png">
                </div>
                <div class="item_content">
                    <h3>Community Engagement</h3>
                    <p>Explore Community Engagement</p>
                    <a href="https://youtu.be/NrlgIGtMu70?si=xp_ZZiFYnjwgq32W" target="_blank"style="color: white;">WATCH VIDEO</a>
                </div>
            </div>
        </div>
    </div>


        </div>
    </div>
        </div>
    </div>
    <hr>
</body>
</html>


