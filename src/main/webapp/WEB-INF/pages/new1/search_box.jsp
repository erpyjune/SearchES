<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<!-- Page Content -->
<div class="container">
  <!-- search from -->
  <div class="row">
    <div class="col-lg-12">
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <%--<input type="text" name="query" class="form-control" placeholder="${query}">--%>
          <input type="text" name="query" class="form-control" placeholder="">
        </div>
        <input type="hidden" name="size" value="20">
        <input type="hidden" name="from" value="0">
        <input type="hidden" name="operator" value="and">
        <input type="hidden" name="cate1" value="">
        <input type="hidden" name="cate2" value="">
        <input type="hidden" name="cate3" value="">
        <input type="hidden" name="price_start" value="">
        <input type="hidden" name="price_end" value="">
        <input type="hidden" name="sort_option" value="">
        <input type="hidden" name="sort_field" value="">
        <%--<input type="hidden" name="display_type" value="${displayType}">--%>
        <button type="submit" class="btn btn-default">Search</button>
          <!-- search result info -->
          <div class="row">
              <div class="col-lg-12">
                  <h5> 검색결과 :  <span class="label label-default">${searchTotalCount}</span></h5>
              </div>
          </div>

          <!-- display method -->
          <div class="row">
              <div class="col-lg-12">
                  <div>
                      <button class="btn btn-default dropdown-toggle" type="button" id="sort" data-toggle="dropdown" aria-expanded="true">
                          정렬
                          <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu" role="menu" aria-labelledby="sort">
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=sale_price&sort_option=asc&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}">싼거 부터</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=sale_price&sort_option=desc&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}">비싼거 부터</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}">정확한거 부터</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=1&price_end=9999">1만원 아래</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=10000&price_end=19999">1~2만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=20000&price_end=29999">2~3만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=30000&price_end=39999">3~4만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=40000&price_end=49999">4~5만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=1&price_end=49999">5만원 아래</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=50000&price_end=59999">5~6만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=1&price_end=99999">10만원 아래</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=100000&price_end=199999">10~20만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=200000&price_end=299999">20~30만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=300000&price_end=399999">30~40만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=400000&price_end=499999">40~50만원</a></li>
                          <li role="presentation"><a role="menuitem" tabindex="-1" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}&price_start=500000&price_end=599999">50만원 이상</a></li>
                      </ul>


                      <%--정렬--%>
                      <%--<a class="btn btn-default" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=sale_price&sort_option=asc&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}" role="button">가격순</a>--%>
                      <%--정확도--%>
                      <%--<a class="btn btn-default" href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}" role="button">정확도순</a>--%>
                      <%--<div class="dropdown">--%>
                      <%--</div>--%>
                  </div>
                  <%--<div class="bs-example" data-example-id="single-button-dropdown">--%>
                      <%--<!-- ========== sort method start ========== -->--%>
                      <%--<div class="btn-group">--%>
                          <%--<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Sort<span class="caret"></span></button>--%>
                          <%--<ul class="dropdown-menu" role="menu">--%>
                              <%--<li><a href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=sale_price&sort_option=asc&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}">가격</a></li>--%>
                              <%--<li><a href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}&category_search_type=${category_search_type}&cate1=${cate1}&cate2=${cate2}&cate3=${cate3}&cp=${cp}">정확도</a></li>--%>
                          <%--</ul>--%>
                      <%--</div>--%>
                      <%--<!-- ========== sort method end ========== -->--%>
                  <%--</div>--%>
              </div>
          </div>
      </form>
    </div>
  </div>

  <!-- line -->
  <div class="row">
    <div class="col-lg-12">
      <hr>
        <%--<div class="btn-group" role="group" aria-label="버튼 그룹">--%>
            <%--<a href="./search?category_search_type=category&cate1=001&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}"><button type="button" class="btn btn-default">텐트전체</button></a>--%>
            <%--<button type="button" class="btn btn-default">Middle</button>--%>
            <%--<a href="./search?category_search_type=category&cate1=001&cate2=001&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}"><button type="button" class="btn btn-default">텐트전체</button></a>--%>
        <%--</div>--%>
    </div>
  </div>
  <!-- /. line -->

  </div> <!-- // end container -->