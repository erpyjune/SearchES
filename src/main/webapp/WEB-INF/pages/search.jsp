<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="./search_header.jsp"%>

<%@include file="./search_body.jsp"%>

<%@include file="./search_result_header.jsp"%>

<c:if test="${displayType eq 0}">
    <%@include file="./search_result_list.jsp"%>
</c:if>

<c:if test="${displayType eq 1}">
    <%@include file="./search_result_list2.jsp"%>
</c:if>

<%@include file="./search_result_pagenv.jsp"%>

<%@include file="./search_footer.jsp"%>