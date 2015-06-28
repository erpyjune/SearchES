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
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트 전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">타프 전체</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">거실텐트/리빙쉘</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">티피텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">백패킹(1~2인용)텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">3인이상 텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">그늘막/모기장</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=006&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">비비색/침낭커버</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=007&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">루프탑텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=001&cate3=008&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">기타텐트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">그라운드시트</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">사각타프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">헥사타프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스크린타프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=002&cate3=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">관련용품</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">텐트/타프 관련장비 전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스트링/로프</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스토퍼</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">폴</a></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=004&cate3=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">팩</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=001&cate2=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">삽/망치/도끼/툴/삽</a></li>
              </ul>
          </li>

          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">테이블/의자<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?category_search_type=category&cate1=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">테이블</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">키친테이블</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">IGT류</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">의자</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침대</a></li>
                  <li><a href="./search?category_search_type=category&cate1=002&cate2=006&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가구류 기타</a></li>

              </ul>
          </li>

          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">침낭/매트/침대<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=001&cate3=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">3계절침낭</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=001&cate3=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">동계침낭</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=001&cate3=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">하계침낭</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=001&cate3=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침낭라이너</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=001&cate3=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">커버/압축색</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">매트전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&cate3=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">자충매트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&cate3=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">에어매트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&cate3=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">발포매트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&cate3=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">레저시트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&cate3=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">온수매트</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=002&cate3=006&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">매트 기타</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">침대/해먹</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">베개/방석/귀마개/안대</a></li>
                  <li><a href="./search?category_search_type=category&cate1=003&cate2=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">펌프/담요/텐트슈즈/기타</a></li>
              </ul>
          </li>


            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">버너/난로/화로대/랜턴/BBQ<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">버너 전체</a></li>
                    <li class="divider"></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=001&cate3=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가스버너</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=001&cate3=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">휘발류버너</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=001&cate3=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">버너 기타</a></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">버너관련소품</a></li>
                    <li class="divider"></li>
                    <li><a href="./search?category_search_type=category&cate1=004&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">난로/히터</a></li>
                    <li class="divider"></li>
                    <li><a href="./search?category_search_type=category&cate1=006&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">화료대/BBQ/랜턴 전체</a></li>
                    <li><a href="./search?category_search_type=category&cate1=006&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">랜턴</a></li>
                    <li><a href="./search?category_search_type=category&cate1=006&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">손전등/후래쉬</a></li>
                    <li><a href="./search?category_search_type=category&cate1=006&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">헤드랜턴</a></li>
                    <li><a href="./search?category_search_type=category&cate1=006&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">화로대/그릴</a></li>
                    <li><a href="./search?category_search_type=category&cate1=006&cate2=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">기타장비</a></li>
                </ul>
            </li>


            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">식기류<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="./search?category_search_type=category&cate1=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">식기류 전체</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">코펠</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">쿨러/아이스박스</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">식기</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">프라이팬/주전자/칼</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">컵</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=006&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">물병/수낭</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=007&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">보온병/보냉병</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=008&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">칼/가위/도마/수저/포크</a></li>
                    <li><a href="./search?category_search_type=category&cate1=005&cate2=009&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">식기류 기타</a></li>
                </ul>
            </li>


           <li class="dropdown">
               <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">등산복/등산화 <span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                   <li><a href="./search?category_search_type=category&cate1=007&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">전체</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">자켓/조끼/바람막이</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">바지/반바지/칠부</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">긴팔/반바지</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">언더웨어</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">장갑/모자/양말/스카프</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=006&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">등산복 기타</a></li>
                   <li class="divider"></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=007&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">등산화</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=008&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아웃도어 신발</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=009&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">샌들/아쿠아/슬리퍼</a></li>
                   <li><a href="./search?category_search_type=category&cate1=007&cate2=010&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">신발 기타</a></li>
               </ul>
           </li>


            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">등산장비 <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="./search?category_search_type=category&cate1=008&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">전체</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">스틱</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">카라비너/퀵드로우</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">아이젠/스패츠</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">우산/우의</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=005&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">고글/선글라스</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=006&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">시계</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=007&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">고도계/나침반/온도계</a></li>
                    <li><a href="./search?category_search_type=category&cate1=008&cate2=008&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">등산장비 기타</a></li>
                </ul>
            </li>


          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">배낭/가방<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./search?category_search_type=category&cate1=009&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">배낭</a></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">디팩</a></li>
                  <li class="divider"></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">가방전체</a></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=003&cate3=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">힙색</a></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=003&cate3=002&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">메신저백</a></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=003&cate3=003&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">더플/카고백</a></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=003&cate3=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">케이스</a></li>
                  <li><a href="./search?category_search_type=category&cate1=009&cate2=004&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">기타 가방</a></li>
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
