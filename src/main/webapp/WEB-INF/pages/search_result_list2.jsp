<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<div class="row">
    <c:forEach var="list" items="${searchList}">
    <div class="col-lg-3 col-md-4 col-xs-6 thumb">
        <div class="thumbnail right-caption span4">
            <a class="thumbnail" href="${list.getContentUrl()}" target="_new">
                <img class="img-responsive" src="${list.getThumbUrl()}" alt="${list.getProductName()}"  style="width: auto; height: auto;">
                <div class="caption">
                    <del><small>${list.getOrgPrice()}</small></del> -> ${list.getSalePrice()}<small> <br> [${list.getCpName()}]</small>
                </div>
            </a>
        </div>
    </div>
    </c:forEach>
</div>