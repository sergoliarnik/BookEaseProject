<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<spring:message code="register" var="register_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${register_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/"><spring:message code="navigation.home"/></a></span> <span><spring:message code="register"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="register"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section">
    <div class="container">
        <form:form action="/user" method="post" modelAttribute="registerUserDto">
            <div class="fields">
                <div class="form-group">
                    <form:label path="name"><spring:message code="users.name"/>:</form:label>
                    <form:input type="text" path="name" cssClass="form-control"/><br>
                </div>
                    <form:label path="surname"><spring:message code="users.surname"/>:</form:label>
                    <form:input type="text" path="surname" cssClass="form-control"/><br>
                <div class="form-group">
                    <form:label path="email"><spring:message code="users.email"/>:</form:label>
                    <form:input type="email" path="email" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <form:label path="password"><spring:message code="users.password"/>:</form:label>
                    <form:input type="password" path="password" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <spring:message code="button.submit" var="submit_i18n"/>
                    <input type="submit" value="${submit_i18n}" class="btn btn-primary py-3 px-5"/>
                </div>
            </div>
        </form:form>
    </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>

</body>
</html>