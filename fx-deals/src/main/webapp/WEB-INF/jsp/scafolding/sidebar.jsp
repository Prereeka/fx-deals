<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="<c:url value='/'/>">Home</a>
  <a href="<c:url value='/sarea'/>">Specialized Area</a>
  <a href="<c:url value='/lookup/sarea'/>">Specialized Area Lookup</a>
  <a href="<c:url value='/report/trainer-detail'/>">Trainer Detail Report</a>
  <a href="<c:url value='/report/statistics'/>">Statistics Report</a>
</div>
