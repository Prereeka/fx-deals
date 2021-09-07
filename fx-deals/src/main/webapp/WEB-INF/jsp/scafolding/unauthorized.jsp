<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<jsp:include page="/WEB-INF/jsp/scafolding/header.jsp" />
<div class="bg"></div>
<div>
  <center>
    <div>
      <img src='<c:url value="/theme/images/forbidden.jpg" />' />
    </div>
    <div><a href='<c:url value="/" />'>Goto Home</a></div>
  </center>
</div>
<jsp:include page="/WEB-INF/jsp/scafolding/footer.jsp" />