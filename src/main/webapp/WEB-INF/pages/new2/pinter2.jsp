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
<div>
    <div id="header">
        <h1>Search outdoor</h1>
    </div>
    <div id="search_form">
        <form>
            <input type="text" name="query" placeholder="">
            <input type="hidden" name="size" value="20">
            <input type="hidden" name="from" value="0">
            <input type="hidden" name="operator" value="or">
            <button type="submit" class="btn btn-default">Search</button>
        </form>
    </div>
</div>

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
//            return 'http://summarynode.com:8080/SearchES/asearch?&operator=or&query='+query+'&size=20&from='+from;
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
