<%--
  Created by IntelliJ IDEA.
  User: baeonejune
  Date: 15. 1. 11.
  Time: 오후 5:20
  To change this template use File | Settings | File Templates.
--%>
<body>

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
      <a class="navbar-brand" href="./summary?q=*&type=${type}">OutdoorLife&You</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li>
          <a href="./search?q=텐트 OR 타프&type=${type}&suje=텐트">Text/Tarp</a>
        </li>
        <li>
          <a href="./search?q=테이블 OR 체어 OR 의자 OR 가구&type=${type}&suje=가구">Table/Chair</a>
        </li>
        <li>
          <a href="./search?q=코펠 OR 식기 OR 수저 OR 칼 OR 도마 OR 나이프&type=${type}&suje=식기">Copel</a>
        </li>
        <li>
          <a href="./search?q=침낭 OR 매트&type=${type}&suje=침낭">Sleeping Bag</a>
        </li>
        <li>
          <a href="./search?q=랜턴 OR 버너 OR 후레시 OR 스토브&type=${type}&suje=랜턴">Bunner / Lantern</a>
        </li>
        <li>
          <a href="./search?q=배낭 OR 가방 OR 수납가방&type=${type}&suje=가방">Bag</a>
        </li>
        <li>
          <a href="./search?q=등산화 OR 신발&type=${type}&suje=신발">Shoos</a>
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
