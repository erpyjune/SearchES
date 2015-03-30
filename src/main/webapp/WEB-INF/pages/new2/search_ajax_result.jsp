<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<c:forEach var="list" items="${searchList}">
<div class="item" >
    <img src="${list.getThumbUrl()}" width="200" height="200">
    <a href="${list.getContentUrl()}" target="_new">${list.getBrandName()} ${list.getProductName()}</a>
    <p><del><small>${list.getOrgPrice()}</small></del> -> ${list.getSalePrice()}<small> <br> [${list.getCpName()}]</small></p>
</div>
</c:forEach>
