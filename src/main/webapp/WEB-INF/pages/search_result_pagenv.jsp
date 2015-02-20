<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
      <h1>prevFrom:${pageMap.prevFrom}</h1>
        <h1>prevSize:${pageMap.prevSize}</h1>
        <h1>nextFrom:${pageMap.nextFrom}</h1>
        <h1>nextSize:${pageMap.nextSize}</h1>
        <h1>searchTotalCount:${searchTotalCount}</h1>
        <h1>searchListCount:${searchListCount}</h1>


      <c:if test="${pageMap.prevFrom > 0}">
        <li>
          <a href="./summary?query=${query}&from=0&size=${pageMap.prevSize}"> Go First page </a>
        </li>
      </c:if>

      <c:if test="${pageMap.prevFrom > 0}">
         <li>
           <a href="./summary?query=${query}&from=${pageMap.prevFrom}&size=${pageMap.prevSize}"> Prev page </a>
         </li>
      </c:if>

    <c:if test="${pageMap.nextSize eq searchListCount}">
      <li>
        <a href="./summary?query=${query}&from=${pageMap.nextFrom}&size=${pageMap.nextSize}"> Next page </a>
      </li>
    </c:if>


      <%--마무리--%>
    </ul>
  </div>
</div>
<!-- /.row -->

<hr>