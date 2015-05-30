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
    <title>Outdoors Search.</title>

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
    </style>
    <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
</head>
<!-- NAVBAR
    ================================================== -->
<body>
<%@include file="./top_menu_outdoor.jsp"%>
<%--<%@include file="./search_box.jsp"%>--%>
<!-- search list
    ================================================== -->
<div class="container marketing">
    <section id="blog-landing"></section>
    <%@include file="./footer.jsp"%>
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
//            single_column_breakpoint: 700
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

    var pstate = 0; //ajax 진행중값
    function lastPostLoad(){
        var from = getQueryVariable('from');
        var size = getQueryVariable('size');
        var operator = getQueryVariable('operator');
        var sort_option = getQueryVariable('sort_option');
        var sort_field = getQueryVariable('sort_field');
        var next_from=0;
        var query = getQueryVariable('query');

//        alert('size:'+size+', from:'+next_from+', query:'+query);

        if(pstate == 0){ /*진행중이 아닐경우*/
            $("#LodingImage").html('<img src="/SearchES/resources/images/loading34.gif" style="margin:10px 0;" />');
            pstate == 1; //진행중값으로 변경
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
                data :"size="+size+"&from="+next_from+'&operator='+operator+'&sort_option='+sort_option+'&sort_field='+sort_field,
//                url : "http://summarynode.cafe24.com/SearchES/pin_ajax?query="+query,
                url : "http://summarynode.com:8080/SearchES/pin_ajax?query="+query,
                success: function (data){
                    if(data=="false"){
                        alert("데이터를 로드 하지 못하였습니다.");
                        $("#LodingImage").empty();
                        pstate = 0;
                    }else if(data == ""){
                        alert("더이상 목록이 존재 하지 않습니다.");
                        $("#LodingImage").empty();
                        pstate = 1;

                    }else{
                        if($(".white-panel").attr("nfrom")){
//                            alert('more');
                            $("#blog-landing").append(data);
                        }else{ //첫실행일 경우li 없음
//                            alert('first:');
                            $('#blog-landing').append(data);
                        }

                        $("#LodingImage").empty();
                        pstate = 0;
                    }
                },
                error: function (){
                    alert("서버 접속 오류! 잠시후 이용해 주세요.");
                    $("#LodingImage").empty();
                    pstate = 0;
                }
            });
        }
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
    //window.onLoad = lastPostLoad;

</script>
</body>
</html>