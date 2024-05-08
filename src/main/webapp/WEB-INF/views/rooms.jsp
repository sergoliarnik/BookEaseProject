<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title><spring:message code="bookease"/> - <spring:message code="rooms"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <jsp:include page="includes/styles.jsp"/>
</head>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html"><spring:message code="navigation.home"/></a></span> <span><spring:message code="navigation.about"/></span></p>
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
                <div class="row">
                    <script>console.log("${rooms}")</script>
                    <c:forEach items="${rooms}" var="room">
                    <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                        <div class="room">
                            <a href="rooms/${room.id}" class="img d-flex justify-content-center align-items-center" style="background-image: url(${room.imageUrl});">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <span><i class="fa-solid fa-magnifying-glass"></i></span>
                                </div>
                            </a>
                            <div class="text p-3 text-center">
                                <h3 class="mb-3"><a href="rooms/${room.id}">${room.type}</a></h3>
                                <p><span class="price mr-2">$${room.pricePerNight}</span> <span class="per"><spring:message code="rooms_page.per_night"/></span></p>
                                <ul class="list">
                                    <li><span><spring:message code="rooms.max"/>:</span> ${room.maxPeople} <spring:message code="rooms.persons"/></li>
                                    <li><span><spring:message code="rooms.bed"/>:</span> ${room.beds}</li>
                                </ul>
                                <hr>
                                <p class="pt-1"><a href="rooms/${room.id}" class="btn-custom"><spring:message code="rooms.book_now"/> <span><i class="fa-solid fa-arrow-right"></i></span></a></p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-3 sidebar">
                <div class="sidebar-wrap bg-light ftco-animate">
                    <h3 class="heading mb-4"><spring:message code="rooms_page.advanced_search"/></h3>
                    <form action="#">
                        <div class="fields">
                            <div class="form-group">
                                <input type="text" id="checkin_date" class="form-control checkin_date" placeholder="<spring:message code='rooms.check_in_date'/>">
                            </div>
                            <div class="form-group">
                                <input type="text" id="checkin_date" class="form-control checkout_date" placeholder="<spring:message code='rooms.check_out_date'/>">
                            </div>
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                    <select name="" id="" class="form-control">
                                        <option value=""><spring:message code="rooms.room_type"/></option>
                                        <option value=""><spring:message code="rooms.suite"/></option>
                                        <option value=""><spring:message code="rooms.family_room"/></option>
                                        <option value=""><spring:message code="rooms.deluxe_room"/></option>
                                        <option value=""><spring:message code="rooms.classic_room"/></option>
                                        <option value=""><spring:message code="rooms.superior_room"/></option>
                                        <option value=""><spring:message code="rooms.luxury_room"/></option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                    <select name="" id="" class="form-control">
                                        <option value="">0 <spring:message code="rooms.adult"/></option>
                                        <option value="">1 <spring:message code="rooms.adult"/></option>
                                        <option value="">2 <spring:message code="rooms.adult"/></option>
                                        <option value="">3 <spring:message code="rooms.adult"/></option>
                                        <option value="">4 <spring:message code="rooms.adult"/></option>
                                        <option value="">5 <spring:message code="rooms.adult"/></option>
                                        <option value="">6 <spring:message code="rooms.adult"/></option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                    <select name="" id="" class="form-control">
                                        <option value="">0 <spring:message code="rooms.children"/></option>
                                        <option value="">1 <spring:message code="rooms.children"/></option>
                                        <option value="">2 <spring:message code="rooms.children"/></option>
                                        <option value="">3 <spring:message code="rooms.children"/></option>
                                        <option value="">4 <spring:message code="rooms.children"/></option>
                                        <option value="">5 <spring:message code="rooms.children"/></option>
                                        <option value="">6 <spring:message code="rooms.children"/></option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="range-slider">
		              		<span>
										    <input type="number" value="25000" min="0" max="120000"/>	-
										    <input type="number" value="50000" min="0" max="120000"/>
										  </span>
                                    <input value="1000" min="0" max="120000" step="500" type="range"/>
                                    <input value="50000" min="0" max="120000" step="500" type="range"/>
                                    </svg>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Search" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                    </form>
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

</body>
</html>