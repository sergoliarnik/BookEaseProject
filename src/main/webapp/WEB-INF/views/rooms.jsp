<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<spring:message code="rooms" var="rooms_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${rooms_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/"><spring:message code="navigation.home"/></a></span> <span><spring:message code="rooms"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="rooms"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <c:forEach items="${hotelsWithRooms}" var="hotelWithRooms">
                <c:if test="${hotelWithRooms.rooms.size() != 0}">
                <h2>${hotelWithRooms.name}</h2>
                </c:if>
                <div class="row">
                    <c:forEach items="${hotelWithRooms.rooms}" var="room">
                    <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                        <c:set var="bookedRoomCss" value=""/>
                        <c:if test="${room.booked}">
                            <c:set var="bookedRoomCss" value="booked-room"/>
                            <spring:message code="rooms.this_room_is_booked" var="bookedRoomTitleI18n"/>
                            <c:set var="bookedRoomTitle" value="${bookedRoomTitleI18n}"/>
                        </c:if>
                        <div class="room ${bookedRoomCss}" title="${bookedRoomTitle}">
                            <a href="/rooms/${room.id}" class="img d-flex justify-content-center align-items-center" style="background-image: url(${room.imageUrl});">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <span><i class="fa-solid fa-magnifying-glass"></i></span>
                                </div>
                            </a>
                            <div class="text p-3 text-center">
                                <h3 class="mb-3"><a href="/rooms/${room.id}">${room.type}</a></h3>
                                <p><span class="price mr-2">$${room.pricePerNight}</span> <span class="per"><spring:message code="rooms_page.per_night"/></span></p>
                                <ul class="list">
                                    <li><span><spring:message code="rooms.max"/>:</span> ${room.maxPeople} <spring:message code="rooms.persons"/></li>
                                    <li><span><spring:message code="rooms.bed"/>:</span> ${room.beds}</li>
                                </ul>
                                <hr>
                                <p class="pt-1"><a href="/rooms/${room.id}" class="btn-custom"><spring:message code="rooms.book_now"/> <span><i class="fa-solid fa-arrow-right"></i></span></a></p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                </c:forEach>
            </div>
            <div class="col-lg-3 sidebar">
                <div class="sidebar-wrap bg-light ftco-animate">
                    <h3 class="heading mb-4"><spring:message code="rooms_page.advanced_search"/></h3>
                    <c:set var="action" value="/rooms"/>
                    <c:if test="${hotelId != null}">
                        <c:set var="action" value="/hotels/${hotelId}/rooms"/>
                    </c:if>
                    <form:form action="${action}" modelAttribute="roomFilterDto" method="get">
                        <div class="fields">
                            <div class="form-group">
                                <spring:message code="rooms.check_in_date" var="i18n_check_in_date"/>
                                <form:input type="text" path="from" class="form-control" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="${i18n_check_in_date}"/>
                                <form:errors path="from" cssClass="is-invalid sidebar-form-error" element="div"/>
                            </div>
                            <div class="form-group">
                                <spring:message code="rooms.check_in_date" var="i18n_check_out_date"/>
                                <form:input type="text" path="to" class="form-control" onfocus="(this.type='date')" onblur="(this.type='text')" placeholder="${i18n_check_out_date}"/>
                                <form:errors path="to" cssClass="is-invalid sidebar-form-error" element="div"/>
                            </div>
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                    <form:select path="roomType" class="form-control">
                                        <form:option value=""><spring:message code="rooms.room_type"/></form:option>
                                        <form:options items="${roomTypes}"/>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                    <form:select path="peopleCount" class="form-control">
                                        <form:option value="1">1 <spring:message code="rooms.adult"/></form:option>
                                        <form:option value="2">2 <spring:message code="rooms.adult"/></form:option>
                                        <form:option value="3">3 <spring:message code="rooms.adult"/></form:option>
                                        <form:option value="4">4 <spring:message code="rooms.adult"/></form:option>
                                        <form:option value="5">5 <spring:message code="rooms.adult"/></form:option>
                                        <form:option value="6">6 <spring:message code="rooms.adult"/></form:option>
                                    </form:select>
                                </div>
                            </div>
                            <c:if test="${hotelId == null}">
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                    <form:select path="city" class="form-control">
                                        <form:option value=""><spring:message code="hotels.city"/></form:option>
                                        <form:options items="${cities}"/>
                                    </form:select>
                                </div>
                            </div>
                            </c:if>
                            <div class="form-group">
                                <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                    </form:form>
                </div>
                <div class="sidebar-wrap bg-light ftco-animate">
                    <h3 class="heading mb-4"><spring:message code="rooms_page.star_rating"/></h3>
                    <form method="post" class="star-rating">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i></span></p>
                            </label>
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">
                                <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i></span></p>
                            </label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="includes/instagram-section.jsp"/>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>
<script>
    const today = new Date().toISOString().split('T')[0];

    const toElement = document.getElementById("to");
    const fromElement = document.getElementById("from");

    toElement.setAttribute("min", today);
    fromElement.setAttribute("min", today);
</script>
</body>
</html>