<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false" %>
<%--<%@ page import="java.util.ArrayList"%>--%>
<%--<%@ page import="java.util.Properties"%>--%>
<%--<%@ page import="java.io.IOException"%>--%>
<%--<%@ page import="java.io.FileInputStream"%>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<h1>${message}</h1>

<ul>
<c:forEach var="list" items="${srchList}">
<%--<li>${list.getName()}</li>--%>
</c:forEach>
<ul>

	<p>
	${searchResult}
	</p>

</body>
</html>