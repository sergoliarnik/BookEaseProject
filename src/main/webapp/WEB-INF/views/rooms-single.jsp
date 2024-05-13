<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<spring:message code="rooms.room" var="room_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${room_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/"><spring:message code="navigation.home"/></a></span> <span class="mr-2"><a href="rooms.html"><spring:message code="rooms"/></a></span> <span><spring:message code="rooms.room"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="rooms.room"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <h2 class="mb-4">${room.type} <spring:message code="rooms.room"/></h2>
                        <div class="single-slider owl-carousel">
                            <c:choose>
                                <c:when test="${empty room.images}">
                                    <div class="item">
                                        <div class="room-img" style="background-image: url(https://clarionhealthcare.com/wp-content/uploads/2020/12/default-fallback-image.png);"></div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="image" items="${room.images}">
                                        <div class="item">
                                            <div class="room-img" style="background-image: url(${image.imageUrl});"></div>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
                        <p>${room.description}</p>
                        <div class="d-md-flex mt-5 mb-5">
                            <ul class="list">
                                <li><span><spring:message code="rooms.max"/>:</span> ${room.maxPeople} <spring:message code="rooms.persons"/></li>
                                <li><span><spring:message code="rooms.size"/>:</span> ${room.size} m2</li>
                            </ul>
                            <ul class="list ml-md-5">
                                <li><span><spring:message code="rooms.view"/>:</span> ${room.view}</li>
                                <li><span><spring:message code="rooms.beds"/>:</span> ${room.beds}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-12 ftco-animate mb-5 mt-4">
                    <form:form action="/book" method="post" modelAttribute="bookDto" cssClass="booking-form">
                        <div class="row">
                            <form:hidden path="roomId"/>
                            <div class="col-md-4 d-flex">
                                <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                    <div class="wrap">
                                        <form:label path="from"><spring:message code="rooms.check_in_date"/></form:label>
                                        <form:input required="required" type="date" path="from" cssClass="form-control" placeholder="Check-in Date"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex">
                                <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                    <div class="wrap">
                                        <form:label path="to"><spring:message code="rooms.check_out_date"/></form:label>
                                        <form:input required="required" type="date" path="to" cssClass="form-control" placeholder="Check-out Date"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md d-flex">
                                <div class="form-group d-flex align-self-stretch">
                                    <button class="btn btn-primary py-3 px-4 align-self-stretch"><spring:message code="book"/></button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                    </div>
                    <div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
                        <h4 class="mb-4"><spring:message code="rooms.review"/> &amp; <spring:message code="rooms.rating"/></h4>
                        <div class="row">
                            <div class="col-md-6">
                                <form method="post" class="star-rating">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">
                                            <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i> 100 <spring:message code="rooms.rating"/></span></p>
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">
                                            <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i> 30 <spring:message code="rooms.rating"/></span></p>
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">
                                            <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i> 5 <spring:message code="rooms.rating"/></span></p>
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">
                                            <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i> 0 <spring:message code="rooms.rating"/></span></p>
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">
                                            <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i> 0 <spring:message code="rooms.rating"/></span></p>
                                        </label>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 room-single ftco-animate mb-5 mt-5">
                        <h4 class="mb-4"><spring:message code="rooms.available_room"/></h4>
                        <div class="row">
                            <div class="col-sm col-md-6 ftco-animate">
                                <div class="room">
                                    <a href="rooms.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(/images/room-1.jpg);">
                                        <div class="icon d-flex justify-content-center align-items-center">
                                            <span><i class="fa-solid fa-magnifying-glass"></i></span>
                                        </div>
                                    </a>
                                    <div class="text p-3 text-center">
                                        <h3 class="mb-3"><a href="rooms.html">Suite Room</a></h3>
                                        <p><span class="price mr-2">$120.00</span> <span class="per"><spring:message code="rooms_page.per_night"/></span></p>
                                        <hr>
                                        <p class="pt-1"><a href="room-single.html" class="btn-custom"><spring:message code="rooms.view_room_details"/> <span><i class="fa-solid fa-arrow-right"></i></span></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div> <!-- .col-md-8 -->
            <div class="col-lg-4 sidebar ftco-animate">
                <div class="sidebar-box ftco-animate">
                    <h3>Tag Cloud</h3>
                    <div class="tagcloud">
                        <a href="#" class="tag-cloud-link">dish</a>
                        <a href="#" class="tag-cloud-link">menu</a>
                        <a href="#" class="tag-cloud-link">food</a>
                        <a href="#" class="tag-cloud-link">sweet</a>
                        <a href="#" class="tag-cloud-link">tasty</a>
                        <a href="#" class="tag-cloud-link">delicious</a>
                        <a href="#" class="tag-cloud-link">desserts</a>
                        <a href="#" class="tag-cloud-link">drinks</a>
                    </div>
                </div>
                <div class="sidebar-box ftco-animate">
                    <h3>Recent Blog</h3>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url(/images/image_1.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                            <div class="meta">
                                <div><a href="#"> July 12, 2018</a></div>
                                <div><a href="#"> Admin</a></div>
                                <div><a href="#"><span><i class="fa-regular fa-message"></i></span> 19</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> <!-- .section -->

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