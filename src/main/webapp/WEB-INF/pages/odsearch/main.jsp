<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Thumbnail Gallery - Start Bootstrap Template</title>

  <!-- Bootstrap Core CSS -->
  <link href="/SearchES/resources/odsearch/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="/SearchES/resources/odsearch/thumbnail-gallery.css" rel="stylesheet">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <%--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">--%>
        <%--<span class="sr-only">Toggle navigation</span>--%>
        <%--<span class="icon-bar"></span>--%>
        <%--<span class="icon-bar"></span>--%>
        <%--<span class="icon-bar"></span>--%>
      <%--</button>--%>
      <a class="navbar-brand" href="#">SummaryNode</a>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" name="query" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">검색</button>
        <input type="hidden" name="size" value="20">
        <input type="hidden" name="from" value="0">
        <input type="hidden" name="operator" value="or">
      </form>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <%--<form class="navbar-form navbar-left" role="search">--%>
          <%--<div class="form-group">--%>
            <%--<input type="text" class="form-control" placeholder="Search">--%>
          <%--</div>--%>
          <%--<button type="submit" class="btn btn-default">검색</button>--%>
        <%--</form>--%>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">등산복<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="./search?query=바람 막이 자켓 바지 조끼 반팔 상의&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">자켓/바지</a></li>
            <li><a href="./search?query=바람 막이&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">바람막이</a></li>
            <li><a href="./search?query=자켓&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">자켓</a></li>
            <li><a href="./search?query=조끼&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">조끼</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=바지&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">바지</a></li>
            <li><a href="./search?query=반바지&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">반바지</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=긴팔 상의&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">긴팔상의</a></li>
            <li><a href="./search?query=반팔 상의&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">반팔상의</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">신발류<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="./search?query=등산화 아쿠아 슈즈 샌들 릿지화 암벽화 슬리퍼&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">신발</a></li>
            <li><a href="./search?query=등산화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">등산화</a></li>
            <li><a href="./search?query=암벽화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">암벽화</a></li>
            <li><a href="./search?query=릿지화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">릿지화</a></li>
            <li><a href="./search?query=트레일러닝화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">트레일러닝화</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=아쿠아 슈즈&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아쿠아슈즈</a></li>
            <li><a href="./search?query=샌들&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">샌들</a></li>
            <li><a href="./search?query=슬리퍼&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">슬리퍼</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">텐트류<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="./search?query=텐트 타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트/타프</a></li>
            <li><a href="./search?query=텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트</a></li>
            <li><a href="./search?query=리빙쉘 거실텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">리빙쉘/거실텐트</a></li>
            <li><a href="./search?query=티피 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">티피텐트</a></li>
            <li><a href="./search?query=알파인 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">알파인 텐트</a></li>
            <li><a href="./search?query=1인용 2인용 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">1~2인용 텐트</a></li>
            <li><a href="./search?query=3인용 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">3인용 텐트</a></li>
            <li><a href="./search?query=돔 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">돔텐트</a></li>
            <li><a href="./search?query=비비 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">비비</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">타프</a></li>
            <li><a href="./search?query=사각 타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">사각 타프</a></li>
            <li><a href="./search?query=헥사 타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">헥사 타프</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=그라운드시트 풋프린트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">풋프린트</a></li>
            <li><a href="./search?query=매트 이너매트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">매트</a></li>
            <li><a href="./search?query=폴대 폴&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">폴</a></li>
            <li><a href="./search?query=팩 텐트팩&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">팩</a></li>
            <li><a href="./search?query=망치 해머&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">망치</a></li>
            <li><a href="./search?query=스트링 스토퍼&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스트링/스토퍼</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">가구<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="./search?query=테이블 IGT 의자&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">테이블/의자</a></li>
            <li><a href="./search?query=테이블 IGT&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">테이블</a></li>
            <li><a href="./search?query=키친 테이블 IGT&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">키친테이블</a></li>
            <li><a href="./search?query=BBQ 테이블&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">BBQ테이블</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=의자&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">의자</a></li>
            <li><a href="./search?query=릴렉스 체어&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">릴렉스 체어</a></li>
            <li><a href="./search?query=백패킹 체어&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">백패킹 체어</a></li>
            <li><a href="./search?query=BBQ 의자&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">BBQ 의자</a></li>
            <li><a href="./search?query=해먹 침대 야전침대&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침대/해먹</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">코펠/버너/연료<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="./search?query=코펠 버너 스토브 컵 접시 아이스박스 쿨러 프라이팬 칼 가위&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">코펠/버너/주방용품</a></li>
            <li><a href="./search?query=코펠&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">코펠</a></li>
            <li><a href="./search?query=접시&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">접시</a></li>
            <li><a href="./search?query=컵&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">컵</a></li>
            <li><a href="./search?query=쿨러 아이스박스&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">쿨러</a></li>
            <li><a href="./search?query=프라이팬 팬&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">프라이팬</a></li>
            <li><a href="./search?query=더치 오븐 마이크로캡슐 오벌 아일렛&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">더치오븐장비</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=버너 스토브&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">버너</a></li>
            <li><a href="./search?query=가스 버너&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가스 스토브</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=화로대&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">화로대</a></li>
            <li><a href="./search?query=연료 차콜 숯 가스 화이트오일&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">연료</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">침낭류 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="./search?query=침낭 매트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭/매트</a></li>
            <li><a href="./search?query=침낭&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭</a></li>
            <li><a href="./search?query=다운 침낭&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">다운 침낭</a></li>
            <li><a href="./search?query=합성 침낭&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">합성섬유 침낭</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=매트&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">매트</a></li>
            <li><a href="./search?query=베개&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">베개</a></li>
            <li><a href="./search?query=담요 매트리스&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">담요 매트리스</a></li>
          </ul>
        </li>


        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">가방<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="./search?query=가방 배낭&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가방</a></li>
            <li><a href="./search?query=배낭&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">배낭</a></li>
            <li class="divider"></li>
            <li><a href="./search?query=스틱&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스틱</a></li>
          </ul>
        </li>


        <li>
          <a href="./search?query=lantern stove burner&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">
            버너 / 랜턴</a>
        </li>

      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container -->
</nav>


<!-- Page Content -->
<div class="container">

  <div class="row">

    <div class="col-lg-12">
      <h1 class="page-header">Thumbnail Gallery</h1>
    </div>




<c:forEach var="list" items="${searchList}">
      <div class="col-lg-3 col-md-4 col-xs-6 thumb">
          <a class="thumbnail" href="${list.getContentUrl()}">
              <img class="img-responsive" src="${list.getThumbUrl()}" alt="${list.getProductName()} onerror="this.src='http://summarynode.cafe24.com/SearchES/resources/images/no_detail_img.gif'">
          </a>
          <div class="caption">
              <h5>${list.getProductName()}</h5>
              <c:choose>
                <c:when test="${list.getOrgPrice()!=list.getSalePrice()}">
                    <p><del><small>${list.getOrgPrice()}</small></del> -> <span class="label label-success">${list.getSalePrice()}</span>
                </c:when>
                <c:otherwise>
                    <p><span class="label label-success">${list.getSalePrice()}</span>
                </c:otherwise>
              </c:choose>
                  &nbsp;&nbsp;<small><span class="badge">${list.getCpName()}</span></small></p>
              <p>
                  <a href="${list.getContentUrl()}" class="btn btn-primary" target="_new">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
              </p>
          </div>
      </div>
</c:forEach>






  </div> <!-- //end div.row -->

  <!-- Pagination -->
  <div class="row text-center">
    <div class="col-lg-12">
      <ul class="pagination">
        <li>
          <a href="#">&laquo;</a>
        </li>
        <li class="active">
          <a href="#">1</a>
        </li>
        <li>
          <a href="#">2</a>
        </li>
        <li>
          <a href="#">3</a>
        </li>
        <li>
          <a href="#">4</a>
        </li>
        <li>
          <a href="#">5</a>
        </li>
        <li>
          <a href="#">&raquo;</a>
        </li>
      </ul>
    </div>
  </div>
  <!-- /.row -->


  <hr>


  <!-- Footer -->
  <footer>
    <div class="row">
      <div class="col-lg-12">
        <p>Copyright &copy; Your Website 2014</p>
      </div>
    </div>
  </footer>

</div>
<!-- /.container -->


<!-- jQuery -->
<script src="/SearchES/resources/odsearch/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/SearchES/resources/odsearch/bootstrap.min.js"></script>

<script>
    $(document).ready(function(){
        $('test').submit(function() {
//        $("button").click(function() {
            var from = getQueryVariable('from');
            var size = getQueryVariable('size');
            var operator = getQueryVariable('operator');
            var sort_option = getQueryVariable('sort_option');
            var sort_field = getQueryVariable('sort_field');
            var next_from=0;
            var query = getQueryVariable('query');

            $.ajax({
                type :'GET',
                dataType:'html',
                data :"size="+size+"&from="+next_from+'&operator='+operator+'&sort_option='+sort_option+'&sort_field='+sort_field,
                url : "http://summarynode.com:8080/SearchES/odsearch_ajax?query="+query,
                success: function(result) {
                    $("#search-result").html(result);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
                }
            });
        });
    });

    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i=0;i<vars.length;i++) {
            var pair = vars[i].split("=");
            if (pair[0] == variable) {
                return pair[1];
            }
        }
        return '';
//        alert('Query Variable ' + variable + ' not found');
    }
</script>

</body>

</html>
