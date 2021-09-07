<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta Full Name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<c:url value='/theme/css/bootstrap.min.css'/>" />
  <link rel="stylesheet" href="<c:url value='/theme/css/jquery-ui.min.css'/>" />
  <link rel="stylesheet" href="<c:url value='/theme/css/toastr.min.css'/>" />
  <link rel="stylesheet" href="<c:url value='/theme/css/chosen.min.css'/>" />
  <link rel="stylesheet" href="<c:url value='/theme/css/jquery.dataTables.min.css'/>" />
  <link rel="stylesheet" type="text/css" href='<c:url value="/theme/css/buttons.dataTables.min.css"/>' />
  <link rel="stylesheet" type="text/css" href="<c:url value='/theme/css/font-awesome.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/theme/css/style.css'/>" />
  <link rel="stylesheet" href="<c:url value='/theme/css/select2.min.css'/>" />
   <!-- For tagsinput -->
  <link href='<c:url value="/theme/css/bootstrap-tagsinput.css"/>'
        media="all"
        type="text/css"
        rel="stylesheet">

	<!-- For chosen -->
  <link href='<c:url value="/theme/css/chosen.min.css"/>'
        media="all"
        type="text/css"
        rel="stylesheet">
  <title>Nepal Prahari</title>
</head>

<style>
	.bootstrap-tagsinput {
      line-height: 0px;
    }

    .bootstrap-tagsinput .tag {
      background: #eaebed;
      color: #000 !important;
    }
    
    
ul.breadcrumb {
	padding: 10px 16px;
	list-style: none;
	background-color: #eee;
}

ul.breadcrumb li {
	display: inline;
	font-size: 18px;
}

ul.breadcrumb li+li:before {
	padding: 8px;
	color: black;
	content: "/\00a0";
}

ul.breadcrumb li a {
	color: #0275d8;
	text-decoration: none;
}

ul.breadcrumb li a:hover {
	color: #01447e;
	text-decoration: underline;
}

</style>
<body>
  <div id="loadingDiv" style="
  width: 100%;
  height: 100%;
  position: fixed;
  z-index: 10000;
  background-color: black;
  opacity: 0.5;
  display: none;">
    <div style="
  display: flex;
  justify-content: center;">
      <img src='<c:url value="/theme/images/loading-gif.gif" />' />
    </div>
  </div>
  <div id="wrapper">
    <jsp:include page="/WEB-INF/jsp/scafolding/navbar.jsp" />
    <jsp:include page="/WEB-INF/jsp/scafolding/sidebar.jsp" />