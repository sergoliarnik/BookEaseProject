<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<spring:message code="rooms.add_room" var="add_room_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${add_room_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="<c:url value="/"/>"><spring:message code="navigation.home"/></a></span> <span><spring:message code="rooms.add_room"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="rooms.add_room"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section">
    <div class="container">
        <form:form action="/rooms" method="post" modelAttribute="addRoomDto">
            <div class="fields">
                <div class="form-group">
                    <form:label path="type"><spring:message code="rooms.room_type"/>:</form:label>
                    <form:select path="type" cssClass="form-control" items="${roomTypes}"/><br>
                </div>
                    <form:label path="pricePerNight"><spring:message code="rooms.price_per_night"/>:</form:label>
                    <form:input path="pricePerNight" type="text" cssClass="form-control"/><br>
                <div class="form-group">
                    <form:label path="maxPeople"><spring:message code="rooms.max"/>:</form:label>
                    <form:input path="maxPeople" type="text" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <form:label path="beds"><spring:message code="rooms.beds"/>:</form:label>
                    <form:input path="beds" type="text" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <form:label path="size"><spring:message code="rooms.size"/>:</form:label>
                    <form:input path="size" type="text" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <form:label path="description"><spring:message code="rooms.description"/>:</form:label>
                    <form:input path="description" type="text" cssClass="form-control"/><br>
                </div>
                <div class="form-group">
                    <form:label path="view"><spring:message code="rooms.view"/>:</form:label>
                    <form:input path="view" type="text" cssClass="form-control"/><br>
                </div>
                <sec:authorize access="hasAnyAuthority('MANAGER')">
                    <form:input path="hotelId" type="hidden" value="${hotelId}"/>
                </sec:authorize>
                <sec:authorize access="hasAnyAuthority('OWNER')">
                <div class="form-group">
                    <form:select path="hotelId" cssClass="form-control" value="${hotelId}" items="${hotels}"  itemValue="id" itemLabel="name"/>
                </div>
                </sec:authorize>
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