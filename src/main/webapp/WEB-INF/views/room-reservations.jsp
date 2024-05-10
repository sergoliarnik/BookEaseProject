<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<spring:message code="rooms.reservations" var="reservations_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${reservations_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html"><spring:message code="navigation.home"/></a></span> <span><spring:message code="rooms.reservations"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="rooms.reservations"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section text-center ftco-animate fadeInUp ftco-animated">
                <h2><spring:message code="rooms.reservations"/></h2>
            </div>
        </div>
        <div class="row">
            <c:forEach var="reservation" items="${roomReservations}">
                <div class="col-md-12">
                    <h3><span><spring:message code="hotels.hotel"/>: '${reservation.hotelName}'. <spring:message code="rooms.room_type"/>: '${reservation.roomType}'</span></h3>
                    <span class="price">${reservation.from} - ${reservation.to}</span>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>

</body>
</html>