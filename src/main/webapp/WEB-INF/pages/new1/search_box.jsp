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
        <input type="hidden" name="operator" value="or">
        <%--<input type="hidden" name="display_type" value="${displayType}">--%>
        <button type="submit" class="btn btn-default">Search</button>
          <!-- search result info -->
          <div class="row">
              <div class="col-lg-12">
                  <h5> Result :  <span class="label label-default">${searchTotalCount}</span></h5>
              </div>
          </div>
          <!-- display method -->
          <div class="row">
              <div class="col-lg-12">
                  <div class="bs-example" data-example-id="single-button-dropdown">
                      <%--<div class="btn-group">--%>
                      <%--<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Display<span class="caret"></span></button>--%>
                      <%--<ul class="dropdown-menu" role="menu">--%>
                      <%--<li><a href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=0&sort_field=${sortField}&sort_option=${sortOption}&operator=${operator}">Default</a></li>--%>
                      <%--<li><a href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=1&sort_field=${sortField}&sort_option=${sortOption}&operator=${operator}">Multi Display</a></li>--%>
                      <%--</ul>--%>
                      <%--</div>--%>
                      <!-- ========== sort method ========== -->
                      <div class="btn-group">
                          <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">Sort<span class="caret"></span></button>
                          <ul class="dropdown-menu" role="menu">
                              <li><a href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=sale_price&sort_option=asc&operator=${operator}">가격</a></li>
                              <li><a href="./search?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=none&sort_option=none&operator=${operator}">정확도</a></li>
                              <%--<li class="divider"></li>--%>
                              <%--<li><a href="#">Separated link</a></li>--%>
                          </ul>
                      </div>
                  </div>
              </div>
          </div>
      </form>
    </div>
  </div>

  <!-- line -->
  <div class="row">
    <div class="col-lg-12">
      <hr>
    </div>
  </div>
  <!-- /. line -->

  </div> <!-- // end container -->