<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<c:forEach var="list" items="${searchList}">
    <article class="white-panel" id="listitem" nfrom="${pageMap.nextPageFrom}">
        <img src="${list.getThumbUrl()}" alt="${list.getProductName()}" onerror="this.src='/SearchES/resources/images/no_detail_img.gif'">
        <h1><a href="${list.getContentUrl()}" target="_new">${list.getBrandName()} ${list.getProductName()}</a></h1>
        <c:choose>
        <c:when test="${list.getOrgPrice()!=list.getSalePrice()}">
           <p><del><small>${list.getOrgPrice()}</small></del> -> <span class="label label-success">${list.getSalePrice()}</span>
        </c:when>
        <c:otherwise>
           <p><span class="label label-success">${list.getSalePrice()}</span>
        </c:otherwise>
        </c:choose>
        &nbsp;&nbsp;<small><span class="badge">${list.getCpName()}</span></small></p>
    </article>
</c:forEach>