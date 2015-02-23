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
      <a class="navbar-brand" href="./summary?query=tent tarp pants&size=20&from=0&display_type=${displayType}&operator=or">OutdoorLife&You</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <%--<li>--%>
          <%--<a href="./summary?query=tent tarp&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Tent/Tarp</a>--%>
        <%--</li>--%>

          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tent/Tarp <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="./summary?query=tent tarp&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Tent & Tarp</a></li>
                  <li><a href="./summary?query=tent&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Tent</a></li>
                  <li><a href="./summary?query=tarp&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Tarp</a></li>
                  <li><a href="#">Living shell</a></li>
                  <li class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                  <li class="divider"></li>
                  <li><a href="#">One more separated link</a></li>
              </ul>
          </li>

        <%--<li>--%>
          <%--<a href="./summary?query=table chair&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">--%>
              <%--Table/Chair</a>--%>
        <%--</li>--%>

        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Funiture <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./summary?query=table chair&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Table & Chair</a></li>
                <li><a href="./summary?query=table&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Table</a></li>
                <li><a href="./summary?query=chair&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Chair</a></li>
                <li><a href="./summary?query=cot&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Cot</a></li>
                <li><a href="./summary?query=hammock&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Hammock</a></li>
                <li><a href="#">Living shell</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tableware <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./summary?query=copel plate cooler cup fork frying pan&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Tableware</a></li>
                <li><a href="./summary?query=copel&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Copel</a></li>
                <li><a href="./summary?query=plate&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Plate</a></li>
                <li><a href="./summary?query=cup&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Cup</a></li>
                <li><a href="./summary?query=cooler&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Cooler</a></li>
                <li><a href="./summary?query=frying pan&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Frying pan</a></li>
                <li><a href="#">Living shell</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sleeping <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./summary?query=copel plate cooler cup fork frying pan&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Tableware</a></li>
                <li><a href="./summary?query=copel&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Copel</a></li>
                <li><a href="./summary?query=plate&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Plate</a></li>
                <li><a href="./summary?query=cup&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Cup</a></li>
                <li><a href="./summary?query=cooler&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Cooler</a></li>
                <li><a href="./summary?query=frying pan&operator=and&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Frying pan</a></li>
                <li><a href="#">Living shell</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
            </ul>
        </li>

        <li>
          <a href="./summary?query=lantern stove burner&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">
              Burner / Lantern</a>
        </li>
        <li>
          <a href="./summary?query=bag backpack&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">
              Bag</a>
        </li>
        <li>
          <a href="./summary?query=shoos&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">
              Shoos</a>
        </li>

        <%--<li>--%>
          <%--<a href="./summary?query=pants jacket&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Pants&Jacket</a>--%>
        <%--</li>--%>

        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Jacket/Pants <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./summary?query=pants jacket&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Pants/Jacket</a></li>
                <li><a href="./summary?query=pants&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Pants</a></li>
                <li><a href="./summary?query=jacket&operator=or&size=20&from=0&display_type=${displayType}&sort_field=${sortField}&sort_option=${sortOption}">Jacket</a></li>
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
