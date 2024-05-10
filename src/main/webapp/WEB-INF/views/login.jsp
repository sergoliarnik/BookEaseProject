<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<spring:message code="login" var="login_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${login_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html"><spring:message code="navigation.home"/></a></span> <span><spring:message code="login"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="login"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section">
    <div class="container">
        <c:if test="${param.error != null}">
            <div>
                Failed to login.
                <c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
                    Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
                </c:if>
            </div>
        </c:if>
        <!-- the configured LogoutConfigurer#logoutSuccessUrl is /login?logout and contains the query param logout -->
        <c:if test="${param.logout != null}">
            <div>
                You have been logged out.
            </div>
        </c:if>
        <p>
        <form:form action="/login" method="post" modelAttribute="loginUserDto">
            <div class="fields">
                <div class="form-group">
                    <form:label path="email">Email:</form:label>
                    <form:input type="email" path="email" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <form:label path="password">Password:</form:label>
                    <form:input type="password" path="password" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="remember-me" name="remember-me"/>
                        <label class="form-check-label" for="remember-me">Remember Me?</label>
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" value="Submit" class="btn btn-primary py-3 px-5"/>
                </div>
            </div>
        </form:form>
    </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>

</body>
</html>