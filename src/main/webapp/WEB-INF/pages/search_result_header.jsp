
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
        <button type="submit" class="btn btn-default">Search</button>
      </form>
        <!-- search result info -->
        <div class="row">
            <div class="col-lg-12">
                <p> ${query} : ${searchTotalCount} | <small> ${from} ~ ${size} </small> </p>
            </div>
        </div>
    </div>
  </div>



    <!--div class="row">
        <div class="col-lg-12">
            <div class="dropdown">
                <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                    Display Type
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="./summary?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=0&sort_field=${sortField}&sort_option=${sortOption}">Default</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="./summary?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=1&sort_field=${sortField}&sort_option=${sortOption}">Another action</a></li>
                </ul>
            </div>
        </div>
    </div-->


  <!-- button option -->
  <div class="row">
    <div class="col-lg-12">
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Display type <span class="caret"></span></button>
            <ul class="dropdown-menu" role="menu">
                <li><a href="./summary?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=0&sort_field=${sortField}&sort_option=${sortOption}">Default</a></li>
                <li><a href="./summary?query=${query}&from=0&size=${pageMap.prevPageSize}&display_type=1&sort_field=${sortField}&sort_option=${sortOption}">Multi</a></li>
            </ul>
        </div>
    </div>
  </div>


  <!-- line -->
  <div class="row">
    <div class="col-lg-12">
      <hr>
    </div>
  </div>
  <!-- /. line -->

  <!-- 등산화 검색어 서제스트 -->
  <div class="row">
    <div class="col-lg-12">