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
            <a class="navbar-brand" href="./search?query=여성 남성 의류 등산 청바지 정장&size=20&from=0&display_type=${displayType}&operator=or">AboutDeals</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <!-- ========================================== -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">의류<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="./search?query=여성 의류 상의 원피스 드레스 레깅스 이지웨어 아우터&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">여성 의류</a></li>
                        <li><a href="./search?query=여성 셔츠&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">여성 셔츠</a></li>
                        <li><a href="./search?query=브라우스&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">브라우스</a></li>
                        <li><a href="./search?query=스커트&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스커트</a></li>
                        <li><a href="./search?query=원피스&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">원피스</a></li>
                        <li><a href="./search?query=여성 이지웨어&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">여성 이지웨어</a></li>
                        <li><a href="./search?query=여성 언더웨어&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">여성 언더웨어</a></li>
                        <li><a href="./search?query=여성 아우터&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">여성 아우터</a></li>
                        <li class="divider"></li>
                        <li><a href="./search?query=남성 의류&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">남성 의류</a></li>
                        <li><a href="./search?query=남성 아우터&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">남성 아우터</a></li>
                        <li><a href="./search?query=남성 셔츠&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">남성 셔츠</a></li>
                        <li><a href="./search?query=남성 청바지&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">남성 청바지</a></li>
                        <li><a href="./search?query=남성 이지웨어&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">남성 이지웨어</a></li>
                        <li><a href="./search?query=남성 언더웨어&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">남성 언더웨어</a></li>
                        <li><a href="./search?query=남성 정장&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">남성 정장</a></li>
                        <li class="divider"></li>
                        <li><a href="./search?query=정장&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">정장</a></li>
                        <li><a href="./search?query=청바지&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">청바지</a></li>
                        <li><a href="./search?query=카고 바지&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">카고바지</a></li>
                        <li><a href="./search?query=아우터&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아우터</a></li>
                        <li><a href="./search?query=반팔&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">반팔</a></li>
                        <li><a href="./search?query=반바지&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">반바지</a></li>
                        <li><a href="./search?query=바람막이&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">바람막이</a></li>
                        <li><a href="./search?query=아웃도어 등산&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아웃도어</a></li>
                        <li><a href="./search?query=운동복 츄리닝 스포츠웨어&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스포츠웨어</a></li>
                    </ul>
                </li>
                <!-- ========================================== -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">출산/유아<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="./search?query=기저귀 물티슈 장난감 완구 유아 아동 키즈 분유 출산&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">유아동</a></li>
                        <li><a href="./search?query=출산&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">출산용품</a></li>
                        <li><a href="./search?query=기저귀&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">기저귀</a></li>
                        <li><a href="./search?query=물티슈&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">물티슈</a></li>
                        <li><a href="./search?query=분유&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">분유</a></li>
                        <li><a href="./search?query=장난감 완구&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">완구</a></li>
                        <li><a href="./search?query=아동 외출&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">외출</a></li>
                        <li><a href="./search?query=목욕 위생&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">목욕/위생</a></li>
                        <li><a href="./search?query=유아 식품&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">식품</a></li>
                        <li class="divider"></li>
                        <li><a href="./search?query=아동 의류&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아동의류</a></li>
                        <li><a href="./search?query=아동 바지&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아동바지</a></li>
                        <li><a href="./search?query=아동 셔츠&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아동셔츠</a></li>
                        <li><a href="./search?query=아동 내의&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아동내의</a></li>
                        <li><a href="./search?query=아동 신발&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아동신발</a></li>
                        <li class="divider"></li>
                        <li><a href="./search?query=유아 실내용품&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">실내용품</a></li>
                    </ul>
                </li>
                <!-- ========================================== -->
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">텐트류<span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu" role="menu">--%>
                        <%--<li><a href="./search?query=텐트 타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트/타프</a></li>--%>
                        <%--<li><a href="./search?query=텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트</a></li>--%>
                        <%--<li><a href="./search?query=리빙쉘 거실텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">리빙쉘</a></li>--%>
                        <%--<li><a href="./search?query=2인용 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">2인용 텐트</a></li>--%>
                        <%--<li><a href="./search?query=3인용 텐트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">3인용 텐트</a></li>--%>
                        <%--<li class="divider"></li>--%>
                        <%--<li><a href="./search?query=타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">타프</a></li>--%>
                        <%--<li><a href="./search?query=사각타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">사각타프</a></li>--%>
                        <%--<li><a href="./search?query=헥사타프&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">헥사타프</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <!-- ========================================== -->
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">가구<span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu" role="menu">--%>
                        <%--<li><a href="./search?query=테이블 IGT 의자&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">테이블/의자</a></li>--%>
                        <%--<li><a href="./search?query=테이블 IGT&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">테이블</a></li>--%>
                        <%--<li><a href="./search?query=의자&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">의자</a></li>--%>
                        <%--<li><a href="./search?query=침대 야전침대&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침대</a></li>--%>
                        <%--<li><a href="./search?query=해먹&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">해먹</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <!-- ========================================== -->
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">코펠/버너<span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu" role="menu">--%>
                        <%--<li><a href="./search?query=코펠 버너 스토브 컵 접시 아이스박스 쿨러 프라이팬 칼 가위&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">코펠/버너/주방용품</a></li>--%>
                        <%--<li><a href="./search?query=코펠&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">코펠</a></li>--%>
                        <%--<li><a href="./search?query=접시&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">접시</a></li>--%>
                        <%--<li><a href="./search?query=컵&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">컵</a></li>--%>
                        <%--<li><a href="./search?query=쿨러 아이스박스&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">쿨러</a></li>--%>
                        <%--<li><a href="./search?query=프라이팬 팬&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">프라이팬</a></li>--%>
                        <%--<li class="divider"></li>--%>
                        <%--<li><a href="./search?query=버너 스토브&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">버너</a></li>--%>
                        <%--<li><a href="./search?query=가스 버너&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가스 스토브</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <!-- ========================================== -->
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">침낭류 <span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu" role="menu">--%>
                        <%--<li><a href="./search?query=침낭 매트&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭/매트</a></li>--%>
                        <%--<li><a href="./search?query=침낭&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭</a></li>--%>
                        <%--<li><a href="./search?query=다운 침낭&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">다운 침낭</a></li>--%>
                        <%--<li><a href="./search?query=합성 침낭&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">합성섬유 침낭</a></li>--%>
                        <%--<li class="divider"></li>--%>
                        <%--<li><a href="./search?query=매트&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">매트</a></li>--%>
                        <%--<li><a href="./search?query=베개&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">베개</a></li>--%>
                        <%--<li><a href="./search?query=담요 매트리스&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">담요 매트리스</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <!-- ========================================== -->
                <%--<li class="dropdown">--%>
                    <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">가방<span class="caret"></span></a>--%>
                    <%--<ul class="dropdown-menu" role="menu">--%>
                        <%--<li><a href="./search?query=가방 배낭&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가방</a></li>--%>
                        <%--<li><a href="./search?query=배낭&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">배낭</a></li>--%>
                        <%--<li class="divider"></li>--%>
                        <%--<li><a href="./search?query=스틱&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스틱</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <!-- ========================================== -->
                <%--<li>--%>
                    <%--<a href="./search?query=lantern stove burner&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">--%>
                        <%--버너 / 랜턴</a>--%>
                <%--</li>--%>
                <!-- ========================================== -->
                <%--<li>--%>
                    <%--<a href="#">About</a>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
