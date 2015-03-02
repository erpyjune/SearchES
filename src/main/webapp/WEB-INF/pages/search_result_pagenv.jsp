<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<%--
  Created by IntelliJ IDEA.
  User: baeonejune
  Date: 15. 1. 11.
  Time: 오후 5:29
  To change this template use File | Settings | File Templates.
--%>

<!-- Pagination -->
<div class="row text-center">
  <div class="col-lg-12">
    <ul class="pager">
      <!-- h1>prevFrom:${pageMap.prevPageFrom}</h1>
        <h1>prevSize:${pageMap.prevPageSize}</h1>
        <h1>nextFrom:${pageMap.nextPageFrom}</h1>
        <h1>nextSize:${pageMap.nextPageSize}</h1>
        <h1>searchTotalCount:${searchTotalCount}</h1>
        <h1>searchListCount:${searchListCount}</h1 -->


      <c:if test="${pageMap.currPageFrom > 0}">
        <li>
          <a href="./summary?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}&operator=${operator}"> Go First page </a>
        </li>
      </c:if>

      <c:if test="${pageMap.currPageFrom > 0}">
         <li>
           <a href="./summary?query=${query}&from=${pageMap.prevPageFrom}&size=${pageMap.prevPageSize}&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}&operator=${operator}"> Prev page </a>
         </li>
      </c:if>

    <c:if test="${pageMap.nextPageYN eq 1}">
      <li>
        <a href="./summary?query=${query}&from=${pageMap.nextPageFrom}&size=${pageMap.nextPageSize}&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}&operator=${operator}"> Next page </a>
      </li>
    </c:if>


      <%--마무리--%>
    </ul>
  </div>
</div>
<!-- /.row -->

<hr>