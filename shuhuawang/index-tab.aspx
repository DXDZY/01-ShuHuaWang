<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index-tab.aspx.cs" Inherits="shuhuawang.index_tab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="zh-CN">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title></title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/customer.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/jquery-ui.css"/>
    <link rel="stylesheet" href="css/normalize.css"/>
    <!--<link rel="stylesheet" href="css/menu.css">-->
    <link rel="stylesheet" href="css/customer.css"/>
</head>
<body>
<div class="bs-example bs-example-tabs" data-example-id="index-tabs" id="index-tabs">
    <ul id="myTabs" class="nav nav-tabs" role="tablist">
      <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">专栏</a></li>
      <li role="presentation" class=""><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">访谈</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div role="tabpanel" class="tab-pane fade active in index-tab" id="home" aria-labelledby="home-tab">
          <div class="container-fluid" style="padding-left:0">
              <div class="row">
                  <div class="col-sm-5 col-xs-6">
                      <img src="images/people1.jpg" alt="..." class="img-responsive img-rounded tab-img"/>
                  </div>
                  <div class="col-sm-7 col-xs-6">
                      <div class="row">
                          <div class="col-sm-12"><h4>启动</h4></div>
                          <div class="col-sm-12">
                              <p>老顽童启功 启功(1912-2005)，字元白，也作元伯，中国当代著名教育家、...<a href="#">[详情]</a></p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="col-sm-5 col-xs-6">
                      <img src="images/people1.jpg" alt="..." class="img-responsive img-rounded tab-img"/>
                  </div>
                  <div class="col-sm-7 col-xs-6">
                      <div class="row">
                          <div class="col-sm-12"><h4>启动</h4></div>
                          <div class="col-sm-12">
                              <p>老顽童启功 启功(1912-2005)，字元白，也作元伯，中国当代著名教育家、...<a href="#">[详情]</a></p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="col-sm-5 col-xs-6">
                      <img src="images/people1.jpg" alt="..." class="img-responsive img-rounded tab-img"/>
                  </div>
                  <div class="col-sm-7 col-xs-6">
                      <div class="row">
                          <div class="col-sm-12"><h4>启动</h4></div>
                          <div class="col-sm-12">
                              <p>老顽童启功 启功(1912-2005)，字元白，也作元伯，中国当代著名教育家、...<a href="#">[详情]</a></p>
                          </div>
                      </div>
                  </div>
              </div>
          </div>       
      </div>
      <div role="tabpanel" class="tab-pane fade index-tab" id="profile" aria-labelledby="profile-tab">
          <div class="container-fluid" style="padding-left:0">
              <div class="row">
                  <div class="col-sm-5 col-xs-6">
                      <img src="images/people2.jpg" alt="..." class="img-responsive img-rounded tab-img"/>
                  </div>
                  <div class="col-sm-7 col-xs-6">
                      <div class="row">
                          <div class="col-sm-12"><h4>启动</h4></div>
                          <div class="col-sm-12">
                              <p>老顽童启功 启功(1912-2005)，字元白，也作元伯，中国当代著名教育家、...<a href="#">[详情]</a></p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="col-sm-5 col-xs-6">
                      <img src="images/people2.jpg" alt="..." class="img-responsive img-rounded tab-img"/>
                  </div>
                  <div class="col-sm-7 col-xs-6">
                      <div class="row">
                          <div class="col-sm-12"><h4>启动</h4></div>
                          <div class="col-sm-12">
                              <p>老顽童启功 启功(1912-2005)，字元白，也作元伯，中国当代著名教育家、...<a href="#">[详情]</a></p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row">
                  <div class="col-sm-5 col-xs-6">
                      <img src="images/people2.jpg" alt="..." class="img-responsive img-rounded tab-img"/>
                  </div>
                  <div class="col-sm-7 col-xs-6">
                      <div class="row">
                          <div class="col-sm-12"><h4>启动</h4></div>
                          <div class="col-sm-12">
                              <p>老顽童启功 启功(1912-2005)，字元白，也作元伯，中国当代著名教育家、...<a href="#">[详情]</a></p>
                          </div>
                      </div>
                  </div>
              </div>
          </div> 
      </div>
    </div>
  </div>
</body>
</html>
