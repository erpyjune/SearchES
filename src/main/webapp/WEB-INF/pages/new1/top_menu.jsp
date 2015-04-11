<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="./search?query=텐트 타프 등산복 배낭&size=20&from=0&display_type=${displayType}&operator=or">OutdoorLife&You</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">텐트/타프<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?query=텐트 타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트/타프</a></li>
                  <li><a href="./search?query=텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트</a></li>
                  <li><a href="./search?query=리빙쉘 거실텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">리빙쉘</a></li>
                  <li><a href="./search?query=2인용 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">2인용 텐트</a></li>
                  <li><a href="./search?query=3인용 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">3인용 텐트</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?query=타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">타프</a></li>
                  <li><a href="./search?query=사각타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">사각타프</a></li>
                  <li><a href="./search?query=헥사타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">헥사타프</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                  <li class="divider"></li>
                  <li><a href="#">One more separated link</a></li>
              </ul>
          </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">가구<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./search?query=테이블 IGT 의자&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">테이블/의자</a></li>
                <li><a href="./search?query=테이블 IGT&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">테이블</a></li>
                <li><a href="./search?query=의자&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">의자</a></li>
                <li><a href="./search?query=침대 야전침대&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침대</a></li>
                <li><a href="./search?query=해먹&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">해먹</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">코펠/버너<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./search?query=코펠 버너 스토브 컵 접시 아이스박스 쿨러 프라이팬 칼 가위&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">코펠/버너/주방용품</a></li>
                <li><a href="./search?query=코펠&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">코펠</a></li>
                <li><a href="./search?query=접시&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">접시</a></li>
                <li><a href="./search?query=컵&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">컵</a></li>
                <li><a href="./search?query=쿨러 아이스박스&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">쿨러</a></li>
                <li><a href="./search?query=프라이팬 팬&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">프라이팬</a></li>
                <li class="divider"></li>
                <li><a href="./search?query=버너 스토브&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">버너</a></li>
                <li><a href="./search?query=가스 버너&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가스 스토브</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
            </ul>
        </li>


        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">침낭/매트 <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./search?query=침낭 매트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭/매트</a></li>
                <li><a href="./search?query=침낭&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭</a></li>
                <li><a href="./search?query=매트&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">매트</a></li>
                <li><a href="./search?query=전기장판 전기요&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">전기장판</a></li>
                <li><a href="./search?query=베개&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">베개</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
            </ul>
        </li>


        <li>
          <a href="./search?query=lantern stove burner&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">
              버너 / 랜턴</a>
        </li>



        <li>
          <a href="./search?query=bag backpack&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">
              가방</a>
        </li>
          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">신발 <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?query=등산화 아쿠아슈즈 샌들 릿지화 암벽화 슬리퍼&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">신발</a></li>
                  <li><a href="./search?query=등산화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">등산화</a></li>
                  <li><a href="./search?query=아쿠아슈즈&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아쿠아슈즈</a></li>
                  <li><a href="./search?query=암벽화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">암벽화</a></li>
                  <li><a href="./search?query=샌들&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">샌들</a></li>
                  <li><a href="./search?query=슬리퍼&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">슬리퍼</a></li>
                  <li><a href="./search?query=릿지화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">릿지화</a></li>
                  <li><a href="./search?query=트레일러닝화&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">트레일러닝화</a></li>
                  <li><a href="#">T-shirts</a></li>
                  <li><a href="#"></a></li>
                  <li><a href="#">One more separated link</a></li>
              </ul>
          </li>



        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">등산복 <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./search?query=자켓 바지 조끼 반팔상의&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">자켓/바지</a></li>
                <li><a href="./search?query=자켓&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">자켓</a></li>
                <li><a href="./search?query=조끼&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">조끼</a></li>
                <li><a href="./search?query=바지&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">바지</a></li>
                <li><a href="./search?query=반바지&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">반바지</a></li>
                <li><a href="./search?query=긴팔상의&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">긴팔</a></li>
                <li><a href="./search?query=반팔상의&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">반팔</a></li>
                <li><a href="./search?query=우비&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">우비</a></li>
                <li><a href="#">T-shirts</a></li>
                <li><a href="#"></a></li>
                <li><a href="#">One more separated link</a></li>
            </ul>
        </li>

        <li>
          <a href="#">About</a>
        </li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container -->
</nav>
