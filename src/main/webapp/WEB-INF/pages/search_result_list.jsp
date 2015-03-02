<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<%--
  Created by IntelliJ IDEA.
  User: baeonejune
  Date: 15. 1. 11.
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>

<c:forEach var="list" items="${searchList}">

<div class="row">
  <div class="col-md-7">
    <!-- <a href="'.$link.'" target="_new"> -->
    <img class="img-responsive" src="${list.getThumbUrl()}" alt="${list.getProductName()}">
    <!-- </a> -->
  </div>

  <div class="col-md-4">
    <h4>${list.getProductName()}</h4>
    <a href="./summary?q=${query_param}">
      <span class="label label-default">${list.getBrandName()}</span>
    </a>
    <a href="./summary?q=${query_param}">
      <span class="label label-warning">${list.getCpName()}</span>
    </a>
    <h4><del><small>${list.getOrgPrice()}</small></del> -> <strong class="text-danger">${list.getSalePrice()}</strong></h4>
    <a class="btn btn-primary" href="${list.getContentUrl()}" target="_new">Go Site<span class="glyphicon glyphicon-chevron-right"></span></a>
  </div>
</div>

</c:forEach>
<!-- /.row -->

<hr>