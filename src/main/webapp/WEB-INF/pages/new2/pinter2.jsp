<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Outdoors</title>
    <link rel="stylesheet" href="/SearchES/resources/new2/css/reset.css">
    <link rel="stylesheet" href="/SearchES/resources/new2/css/waterfall.css">
    <!-- ------------------------------ -->
    <!-- ------------------------------ -->
    <!-- 이 스크립트는 원래 없던것인데 추가한거임 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 이 스크립트는 원래 없던것인데 추가한거임 -->
    <!-- ------------------------------ -->
    <!-- ------------------------------ -->
</head>
<body>
<div id="header">
    <h1>html datatype</h1>
</div>

<%--검색박스 시작--%>
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
<%--검색박스 종료--%>

<div id="container"></div>
<script src="/SearchES/resources/new2/js/libs/jquery/jquery.js"></script>
<script src="/SearchES/resources/new2/js/libs/handlebars/handlebars.js"></script>
<script src="/SearchES/resources/new2/js/waterfall.min.js"></script>

<script>
    $('#container').waterfall({
        itemCls: 'item',
        colWidth: 222,
        gutterWidth: 15,
        gutterHeight: 15,
        checkImagesLoaded: false,
        dataType: 'html',
        path: function(page) {
            var from=0;
            var query = getQueryVariable("query");
            if (page==1) {
                from = 0;
            } else {
                from = page * 20;
            }
            return 'http://summarynode.cafe24.com/SearchES/asearch?&operator=or&query='+query+'&size=20&from='+from;
        }
    });

    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i=0;i<vars.length;i++) {
            var pair = vars[i].split("=");
            if (pair[0] == variable) {
                return pair[1];
            }
        }
        alert('Query Variable ' + variable + ' not found');
    }
// =========== original =============
//    $('#container').waterfall({
//        itemCls: 'item',
//        colWidth: 222,
//        gutterWidth: 15,
//        gutterHeight: 15,
//        checkImagesLoaded: false,
//        dataType: 'html',
//        path: function(page) {
//            return 'resources/data/data.html?page=' + page;
//        }
//    });
</script>

</body>
</html>
