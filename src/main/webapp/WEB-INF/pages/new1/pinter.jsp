<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>키위토마토 - 아웃도어 용품 검색</title>

    <link href="/SearchES/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/SearchES/resources/bootstrap/css/1-col-portfolio.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn\'t work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
        body {
            background: #E9E9E9;
        }
        #blog-landing {
            margin-top: 81px;
            position: relative;
            max-width: 100%;
            width: 100%;
        }
        img {
            width: 100%;
            max-width: 100%;
            height: auto;
        }
        .white-panel {
            position: absolute;
            background: white;
            box-shadow: 0px 1px 2px rgba(0,0,0,0.3);
            padding: 10px;
        }
        .white-panel h1 {
            font-size: 1em;
        }
        .white-panel h1 a {
            color: #A92733;
        }
        .white-panel:hover {
            box-shadow: 1px 1px 10px rgba(0,0,0,0.5);
            margin-top: -5px;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(255, 255, 255, .8) url('http://www.kiwitomato.com/SearchES/resources/images/loading34.gif') 50% 50% no-repeat;
        }
        /* When the body has the loading class, we turn
            the scrollbar off with overflow:hidden */
        body.loading {
            overflow: hidden;
        }

        /* Anytime the body has the loading class, our
           modal element will be visible */
        /*body.loading .modal {*/
            /*display: block;*/
        /*}*/
    </style>
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
</head>
<!-- NAVBAR
    ================================================== -->
<body>
<%@include file="./top_menu_outdoor.jsp"%>
<%@include file="./search_box.jsp"%>
<!-- search list
    ================================================== -->
<div class="container marketing">
    <section id="blog-landing"></section>
    <%--<%@include file="./footer.jsp"%>--%>
</div>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/SearchES/resources/bootstrap/js/jquery-1.11.0.js"></script>
<script src="/SearchES/resources/bootstrap/js/bootstrap.min.js"></script>
<script src="/SearchES/resources/new1/pinterest_grid.js"></script>
<script>
    $(document).ready(function() {

        $('#blog-landing').pinterest_grid({
            no_columns: 4,
            padding_x: 10,
            padding_y: 10,
            margin_bottom: 50,
            single_column_breakpoint: 700
        });
    });

    $(document).ready(function (){
        $(window).scroll(function (){
            if($(window).scrollTop() == $(document).height() - $(window).height()){ //최하단의 위치값과 동일여부
                lastPostLoad(); //스크롤페이징 ajax 호출 스크립트
            }
        });

        lastPostLoad(); //스크롤페이징 ajax 호출 스크립트
    });

    function lastPostLoad(){
        var from = getQueryVariable('from');
        var size = getQueryVariable('size');
        var operator = getQueryVariable('operator');
        var sort_option = getQueryVariable('sort_option');
        var sort_field = getQueryVariable('sort_field');
        var next_from=0;
        var query = getQueryVariable('query');
        var category_search_type = getQueryVariable('category_search_type');
        var cate1 = getQueryVariable('cate1');
        var cate2 = getQueryVariable('cate2');
        var cate3 = getQueryVariable('cate3');
        var cp = getQueryVariable('cp');
        var price_start = getQueryVariable('price_start');
        var price_end = getQueryVariable('price_end');

//        alert('size:'+size+', from:'+next_from+', query:'+query);

        $body = $("body");
        $(document).on({
            ajaxStart: function() { $body.addClass("loading");},
            ajaxStop: function() { $body.removeClass("loading");}
        });

        if ($(".white-panel").attr("nfrom")) {
            next_from = $(".white-panel:last").attr("nfrom");

            if (navigator.userAgent.indexOf('iPhone') != -1) {
                setTimeout(scrollTo, 0, 0, $(window).scrollTop() + 30); //안드로이드 스크롤 아래이동
            }else{
                window.scrollTo(0, $(window).scrollTop() + 30); //아이폰 스크롤 아래이동.
            }
        }
        $.ajax({
            type :"GET",
            data :"size="+size+"&from="+next_from+'&operator='+operator+'&sort_option='+sort_option+
                '&sort_field='+sort_field+'&category_search_type='+category_search_type+'&cate1='+cate1+
                '&cate2='+cate2+'&cate3='+cate3+'&cp='+cp+'&price_start='+price_start+'&price_end='+price_end,
//            url : "http://summarynode.cafe24.com/SearchES/pin_ajax?query="+query,
//            url : "http://www.kiwitomato.com/SearchES/pin_ajax?query="+query,
            url : "http://summarynode.com:8080/SearchES/pin_ajax?query="+query,
            success: function (data){
                if(data=="false"){
                    alert("데이터를 로드 하지 못하였습니다.");
                }else if(data == ""){
                    alert("더이상 목록이 존재 하지 않습니다.");
                }else{
                    if($(".white-panel").attr("nfrom")){
                        $("#blog-landing").append(data);
                    }else{ //첫실행일 경우li 없음
                        $('#blog-landing').append(data);
                    }
                }
            },
            error: function (){
                alert("서버 접속 오류! 잠시후 이용해 주세요.");
            }
        });
    }

    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split("&");
        for (var i=0;i<vars.length;i++) {
            var pair = vars[i].split("=");
            if (pair[0] == variable) {
                return pair[1];
            }
        }
        return '';
//        alert('Query Variable ' + variable + ' not found');
    }

    window.onLoad = lastPostLoad;

</script>

</body>
</html>