<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="container">
<div class="text-left">
<form:label for="recipient.companyName" path="recipient.companyName" cssErrorClass="error">


  <fmt:message key="name"/> *
</form:label>
</div>
</div>
