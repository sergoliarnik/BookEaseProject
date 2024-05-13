<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="/"><spring:message code="bookease"/></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="/" class="nav-link"><spring:message code="navigation.home"/></a></li>
                <li class="nav-item"><a href="/hotels" class="nav-link"><spring:message code="hotels"/></a></li>
                <li class="nav-item"><a href="/rooms" class="nav-link"><spring:message code="rooms"/></a></li>
                <li class="nav-item"><a href="/restaurant" class="nav-link"><spring:message code="restaurant.restaurant"/></a></li>
                <li class="nav-item"><a href="/blog" class="nav-link"><spring:message code="blogs.blog"/></a></li>
                <li class="nav-item"><a href="/contact" class="nav-link"><spring:message code="contact"/></a></li>
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item"><a href="/login" class="nav-link"><spring:message code="login"/></a></li>
                    <li class="nav-item"><a href="/register" class="nav-link"><spring:message code="register"/></a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a href="/reservations" class="nav-link"><spring:message code="rooms.reservations"/></a></li>
                    <li class="nav-item"><a href="/logout" class="nav-link"><spring:message code="logout"/></a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>