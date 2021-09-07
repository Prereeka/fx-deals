<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header class="header">
  <div class="container">
    <nav class="navbar navbar-expand-sm navbar-light bg-light">
      <span style="font-size:30px;cursor:pointer; margin-right:15px; color:#000;" onclick="openNav()">☰ </span>
      <a class="navbar-brand" href="<c:url value='/'/>">
        <img src="<c:url value='/theme/images/logo.png'/>" alt="logo" /></a>

      <div class="col-6 col-sm-10 col-md-9 col-lg-9 col-xl-9">
        <h4 class="text-center">Trainers Pool</h4>
        <p class=" mb-0 text-center">National Police Academy</p>
      </div>

      <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarsExample03"
        aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse " id="navbarsExample03">
        <ul class="navbar-nav ">
          <li class="nav-item active">
            <a class="nav-link" href="<c:url value='/logout'/>"><i class="fa fa-power-off" aria-hidden="true"></i> Logout </a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</header>
