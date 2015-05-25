<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Thumbnail Gallery - Start Bootstrap Template</title>

  <!-- Bootstrap Core CSS -->
  <link href="/SearchES/resources/odsearch/bootstrap.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="/SearchES/resources/odsearch/thumbnail-gallery.css" rel="stylesheet">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body>

      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" name="query" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">검색</button>
        <input type="hidden" name="size" value="20">
        <input type="hidden" name="from" value="0">
        <input type="hidden" name="operator" value="or">
      </form>


      <div id="search-result"></div>


<!-- jQuery -->
<script src="/SearchES/resources/odsearch/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="/SearchES/resources/odsearch/bootstrap.min.js"></script>

<script>
  $(document).ready(function(){
    $('form').submit(function() {
//        $("button").click(function() {
      var from = getQueryVariable('from');
      var size = getQueryVariable('size');
      var operator = getQueryVariable('operator');
      var sort_option = getQueryVariable('sort_option');
      var sort_field = getQueryVariable('sort_field');
      var next_from=0;
      var query = getQueryVariable('query');

      $.ajax({
        type :'GET',
        dataType:'html',
        data :"size="+size+"&from="+next_from+'&operator='+operator+'&sort_option='+sort_option+'&sort_field='+sort_field,
        url : "http://summarynode.com:8080/SearchES/odsearch_ajax?query="+query,
        success: function(result) {
          $("#search-result").html("<img src='http://www.campschule.co.kr/web/product/medium/campschule00_7320.jpg'>");
        },
        error: function(jqXHR, textStatus, errorThrown) {
          alert("code:"+jqXHR.status+"\n"+"message:"+jqXHR.responseText+"\n"+"error:"+errorThrown);
        }
      });
    });
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
    return '';
//        alert('Query Variable ' + variable + ' not found');
  }
</script>

</body>

</html>
