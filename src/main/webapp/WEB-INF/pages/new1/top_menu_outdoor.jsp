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
      <a class="navbar-brand" href="./search?query=텐트 타프 등산복 배낭 코펠&size=20&from=0&display_type=${displayType}&operator=or">Home</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
       <ul class="nav navbar-nav">

          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">텐트/타프<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?category_search_type=category&cate1=001&size=20&from=0&display_type=${displayType}">전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&size=20&from=0&display_type=${displayType}">텐트 전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&size=20&from=0&display_type=${displayType}">타프 전체</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=001&size=20&from=0&display_type=${displayType}">거실텐트/리빙쉘</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=002&size=20&from=0&display_type=${displayType}">티피텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=003&size=20&from=0&display_type=${displayType}">백패킹(1~2인용)텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=004&size=20&from=0&display_type=${displayType}">3인이상 텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=005&size=20&from=0&display_type=${displayType}">그늘막/모기장</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=006&size=20&from=0&display_type=${displayType}">비비색/침낭커버</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=007&size=20&from=0&display_type=${displayType}">루프탑텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=999&size=20&from=0&display_type=${displayType}">텐트 기타</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=003&size=20&from=0&display_type=${displayType}">그라운드시트</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=001&size=20&from=0&display_type=${displayType}">사각타프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=002&size=20&from=0&display_type=${displayType}">헥사타프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=003&size=20&from=0&display_type=${displayType}">스크린타프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=004&size=20&from=0&display_type=${displayType}">윈드스크린/프론트월</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=999&size=20&from=0&display_type=${displayType}">타프 기타</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&size=20&from=0&display_type=${displayType}">텐트/타프 관련장비 전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=001&size=20&from=0&display_type=${displayType}">스트링/로프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=002&size=20&from=0&display_type=${displayType}">스토퍼</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=003&size=20&from=0&display_type=${displayType}">폴/팩</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=999&size=20&from=0&display_type=${displayType}">관련장비 기타</a></li>
              </ul>
          </li>

          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">가구류<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?category_search_type=category&cate1=002&size=20&from=0&display_type=${displayType}">가구류 전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=001&size=20&from=0&display_type=${displayType}">테이블</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=002&size=20&from=0&display_type=${displayType}">키친 테이블</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=003&size=20&from=0&display_type=${displayType}">IGT</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=004&size=20&from=0&display_type=${displayType}">의자</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=999&size=20&from=0&display_type=${displayType}">가구류 기타</a></li>
              </ul>
          </li>

          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">침구류<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?category_search_type=category&cate1=003&size=20&from=0&display_type=${displayType}">침구류 전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=001&size=20&from=0&display_type=${displayType}">침낭 전체</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&size=20&from=0&display_type=${displayType}">매트 전체</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=003&size=20&from=0&display_type=${displayType}">침대/해먹</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=004&size=20&from=0&display_type=${displayType}">베개/방석/귀마개/안대</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=999&size=20&from=0&display_type=${displayType}">침구류 기타</a></li>
              </ul>
          </li>


            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">버너류/난로류<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="./search?category_search_type=category&cate1=004&size=20&from=0&display_type=${displayType}">버너류/난로류 전체</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=001&size=20&from=0&display_type=${displayType}">버너 전체</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=002&size=20&from=0&display_type=${displayType}">버너관련 기타</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=003&size=20&from=0&display_type=${displayType}">난방/난로/히터</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=004&size=20&from=0&display_type=${displayType}">연료/연료통</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=999&size=20&from=0&display_type=${displayType}">버너류/난로류 기타</a></li>
                </ul>
            </li>


            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">식기류<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="./search?category_search_type=category&cate1=005&size=20&from=0&display_type=${displayType}">식기류 전체</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=001&size=20&from=0&display_type=${displayType}">코펠</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=002&size=20&from=0&display_type=${displayType}">쿨러</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=003&size=20&from=0&display_type=${displayType}">식기</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=004&size=20&from=0&display_type=${displayType}">프라이팬/주전자</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=005&size=20&from=0&display_type=${displayType}">컵</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=006&size=20&from=0&display_type=${displayType}">물병/물통/수낭</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=007&size=20&from=0&display_type=${displayType}">보온병/보냉병</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=008&size=20&from=0&display_type=${displayType}">칼/가위/도마/수저/포크</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=999&size=20&from=0&display_type=${displayType}">식기류 기타</a></li>
                </ul>
            </li>


           <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">랜턴/화로대/BBQ<span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                   <li><a href="./search?category_search_type=category&cate1=006&size=20&from=0&display_type=${displayType}">랜턴/화로대/BBQ 전체</a></li>
                   <li><a href="./search?category_search_type=category&cate1=006&cate2=001&size=20&from=0&display_type=${displayType}">랜턴</a></li>
                   <li><a href="./search?category_search_type=category&cate1=006&cate2=002&size=20&from=0&display_type=${displayType}">손전등/후레쉬</a></li>
                   <li><a href="./search?category_search_type=category&cate1=006&cate2=003&size=20&from=0&display_type=${displayType}">헤드랜턴</a></li>
                   <li><a href="./search?category_search_type=category&cate1=006&cate2=004&size=20&from=0&display_type=${displayType}">화로대/그릴/BBQ/더치오븐/삼각대</a></li>
                   <li><a href="./search?category_search_type=category&cate1=006&cate2=005&size=20&from=0&display_type=${displayType}">취사/화로/BBQ/토치/라이터/꼬치 기타</a></li>
                   <li><a href="./search?category_search_type=category&cate1=006&cate2=006&size=20&from=0&display_type=${displayType}">랜턴/후레쉬 기타</a></li>
                   <li><a href="./search?category_search_type=category&cate1=006&cate2=999&size=20&from=0&display_type=${displayType}">랜턴/화로대/BBQ 기타</a></li>
               </ul>
           </li>


           <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">등산류<span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                   <li><a href="./search?category_search_type=category&cate1=007&size=20&from=0&display_type=${displayType}">등산복 전체</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=001&size=20&from=0&display_type=${displayType}">자켓/조끼/바람막이</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=002&size=20&from=0&display_type=${displayType}">바지/반바지/칠부</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=003&size=20&from=0&display_type=${displayType}">긴팔/반팔</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=004&size=20&from=0&display_type=${displayType}">언더웨어</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=005&size=20&from=0&display_type=${displayType}">장갑/모자/양말/스카프</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=006&size=20&from=0&display_type=${displayType}">등산패션 기타</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=007&size=20&from=0&display_type=${displayType}">등산화</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=008&size=20&from=0&display_type=${displayType}">아웃도어 신발</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=009&size=20&from=0&display_type=${displayType}">샌들/아쿠아/슬리퍼</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=999&size=20&from=0&display_type=${displayType}">등산패션 기타</a></li>
                   <li class="divider"></li>
                   <li><a href="./search?category_search_type=category&cate1=008&size=20&from=0&display_type=${displayType}">등산장비 전체</a></li>
                   <li><a href="./search?category_search_type=category&cate1=008&cate2=001&size=20&from=0&display_type=${displayType}">스틱</a></li>
                   <li><a href="./search?category_search_type=category&cate1=008&cate2=002&size=20&from=0&display_type=${displayType}">카라비너/퀵드로우</a></li>
                   <li><a href="./search?category_search_type=category&cate1=008&cate2=003&size=20&from=0&display_type=${displayType}">아이젠/스패츠</a></li>
                   <li><a href="./search?category_search_type=category&cate1=008&cate2=004&size=20&from=0&display_type=${displayType}">우산/우의</a></li>
                   <li><a href="./search?category_search_type=category&cate1=008&cate2=005&size=20&from=0&display_type=${displayType}">고글/선글라스</a></li>
                   <li><a href="./search?category_search_type=category&cate1=008&cate2=008&size=20&from=0&display_type=${displayType}">암벽장비</a></li>
                   <li><a href="./search?category_search_type=category&cate1=008&cate2=999&size=20&from=0&display_type=${displayType}">등산장비 기타</a></li>
               </ul>
           </li>


           <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">배낭/가방<span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                   <li><a href="./search?category_search_type=category&cate1=009&size=20&from=0&display_type=${displayType}">배낭 전체</a></li>
                   <li><a href="./search?category_search_type=category&cate1=009&cate2=001&size=20&from=0&display_type=${displayType}">배낭</a></li>
                   <li><a href="./search?category_search_type=category&cate1=009&cate2=002&size=20&from=0&display_type=${displayType}">디팩</a></li>
                   <li><a href="./search?category_search_type=category&cate1=009&cate2=003&size=20&from=0&display_type=${displayType}">가방</a></li>
                   <li><a href="./search?category_search_type=category&cate1=009&cate2=999&size=20&from=0&display_type=${displayType}">배낭/가방 기타</a></li>
               </ul>
           </li>


           <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">기타장비<span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                   <li><a href="./search?category_search_type=category&cate1=010&size=20&from=0&display_type=${displayType}">전체</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=001&size=20&from=0&display_type=${displayType}">삽/망치/도끼/툴/나이프</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=002&size=20&from=0&display_type=${displayType}">시계/나침반/온도계/습도계/고도계</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=003&size=20&from=0&display_type=${displayType}">수상스포츠</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=004&size=20&from=0&display_type=${displayType}">스키/보드용품</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=005&size=20&from=0&display_type=${displayType}">쌍안경</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=006&size=20&from=0&display_type=${displayType}">망원경/스코프</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=007&size=20&from=0&display_type=${displayType}">전선/릴선</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=008&size=20&from=0&display_type=${displayType}">자동차용품</a></li>
                   <li><a href="./search?category_search_type=category&cate1=010&cate2=999&size=20&from=0&display_type=${displayType}">기타장비</a></li>
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
