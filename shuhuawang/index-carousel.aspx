<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index-carousel.aspx.cs" Inherits="shuhuawang.index_carousel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-8">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="display: block">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <a href="#"><img src="images/01.jpg" alt="..." class="img-responsive" style="height: 350px;"></a>
                        <div class="carousel-caption">
                            <h3>1</h3>
                            <p>01</p>
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img src="images/02.jpg" alt="..." class="img-responsive" style="height: 350px;"></a>
                        <div class="carousel-caption">
                            <h3>2</h3>
                            <p>02</p>
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img src="images/03.jpg" alt="..." class="img-responsive" style="height: 350px;"></a>
                        <div class="carousel-caption">
                            <h3>3</h3>
                            <p>03</p>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
