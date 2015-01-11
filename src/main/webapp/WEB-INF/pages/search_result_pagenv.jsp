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

      <%--이전보기--%>
      <li>
        <a href="./search?q=${query}&from=0&size=${pageMap.prevSize}"> Go First page </a>
      </li>

      <li>
        <a href="./search?q=${query}&from=${pageMap.prevFrom}&size=${pageMap.prevSize}"> Prev page </a>
      </li>

      <%-- 더보기 --%>
      <li>
        <a href="./search?q=${query}&from=${pageMap.nextFrom}&size=${pageMap.nextSize}"> Next page </a>
      </li>

      <%--마무리--%>
    </ul>
  </div>
</div>
<!-- /.row -->

<hr>