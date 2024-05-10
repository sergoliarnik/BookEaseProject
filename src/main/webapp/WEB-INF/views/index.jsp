<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<spring:message code="navigation.home" var="home_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${home_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<section class="home-slider owl-carousel">
    <div class="slider-item" style="background-image:url(/images/bg_1.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-12 ftco-animate text-center">
                    <div class="text mb-5 pb-3">
                        <h1 class="mb-3"><spring:message code="index_page.welcome_to_bookease"/></h1>
                        <h2><spring:message code="hotels"/></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="slider-item" style="background-image:url(/images/bg_2.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-12 ftco-animate text-center">
                    <div class="text mb-5 pb-3">
                        <h1 class="mb-3"><spring:message code="index_page.enjoy_luxury_experience"/></h1>
                        <h2><spring:message code="index_page.join_with_us"/></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-booking">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <form:form action="rooms" method="get" cssClass="booking-form" modelAttribute="roomFilterDto">
                    <div class="row">
                        <div class="col-md-3 d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end rounded-lg">
                                <div class="wrap">
                                    <form:label path="from"><spring:message code="rooms.check_in_date"/></form:label>
                                    <form:input path="from" type="date" class="form-control" placeholder="<spring:message code='rooms.check_in_date'/>" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end rounded-lg">
                                <div class="wrap">
                                    <form:label path="to"><spring:message code="rooms.check_out_date"/></form:label>
                                    <form:input path="to" type="date" class="form-control" placeholder="<spring:message code='rooms.check_out_date'/>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end rounded-lg">
                                <div class="wrap">
                                    <form:label path="roomType"><spring:message code="rooms.room"/></form:label>
                                    <div class="form-field">
                                        <div class="select-wrap">
                                            <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                            <form:select path="roomType" class="form-control">
                                                <form:option value=""><spring:message code="rooms.room_type"/></form:option>
                                                <form:options items="${roomTypes}"/>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end rounded-lg">
                                <div class="wrap">
                                    <form:label path="peopleCount"><spring:message code="rooms.customer"/></form:label>
                                    <div class="form-field">
                                        <div class="select-wrap">
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
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end rounded-lg">
                                <div class="wrap">
                                    <form:label path="city"><spring:message code="rooms.where"/></form:label>
                                    <div class="form-field">
                                        <div class="select-wrap">
                                            <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                            <form:select path="city" class="form-control">
                                                <form:option value=""><spring:message code="hotels.city"/></form:option>
                                                <form:options items="${cities}"/>
                                            </form:select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex" style="margin-top: 20px">
                            <div class="form-group d-flex align-self-stretch rounded-lg">
                                <input type="submit" value="<spring:message code='rooms.check_availability'/>"
                                       class="btn btn-primary py-3 px-4 align-self-stretch rounded-lg">
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section ftc-no-pb ftc-no-pt">
    <div class="container">
        <div class="row">
            <div class="col-md-5 p-md-5 img img-2 d-flex justify-content-center align-items-center"
                 style="background-image: url(/images/bg_2.jpg);">
                <a href="https://www.youtube.com/watch?v=nH5Cmlv9Ixs"
                   class="icon popup-vimeo d-flex justify-content-center align-items-center">
                    <span><i class="fa-solid fa-play"></i></span>
                </a>
            </div>
            <div class="col-md-7 py-5 wrap-about pb-md-5 ftco-animate">
                <div class="heading-section heading-section-wo-line pt-md-5 pl-md-5 mb-5">
                    <div class="ml-md-0">
                        <span class="subheading"><spring:message code='index_page.welcome_to_bookease_hotels'/></span>
                        <h2 class="mb-4"><spring:message code='index_page.welcome_to_our_hotels'/></h2>
                    </div>
                </div>
                <div class="pb-md-5">
                    <p><spring:message code='index_page.zakarpattia_description_first_paragraph'/></p>
                    <p><spring:message code='index_page.zakarpattia_description_second_paragraph'/></p>
                    <ul class="ftco-social d-flex">
                        <li class="ftco-animate"><a href="#"><span><i class="fa-brands fa-x-twitter"></i></span></a></li>
                        <li class="ftco-animate"><a href="#"><span><i class="fa-brands fa-facebook"></i></span></a></li>
                        <li class="ftco-animate"><a href="#"><span><i class="fa-brands fa-instagram"></i></span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <h2 class="mb-4"><spring:message code='hotels.our_hotels'/></h2>
            </div>
        </div>
        <div class="row">
            <c:forEach var="hotel" items="${hotels}">
            <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                <div class="room">
                    <a href="/hotels/${hotel.id}/rooms" class="img d-flex justify-content-center align-items-center"
                       style='background-image: url(${hotel.imageUrl});'>
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span><i class="fa-solid fa-magnifying-glass"></i></span>
                        </div>
                    </a>
                    <div class="text p-3 text-center">
                        <h3 class="mb-3"><a href="/hotels/${hotel.id}/rooms">${hotel.name}</a></h3>
                        <hr>
                        <p class="pt-1"><a href="/hotels/${hotel.id}/rooms" class="btn-custom"><spring:message code='rooms'/> <span><i class="fa-solid fa-arrow-right"></i></span></a></p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>

<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(/images/bg_1.jpg);">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="row">
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <strong class="number" data-number="50000">0</strong>
                                <span><spring:message code="index_page.happy_guests"/></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <strong class="number" data-number="3000">0</strong>
                                <span><spring:message code="rooms"/></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <strong class="number" data-number="1000">0</strong>
                                <span><spring:message code="index_page.staffs"/></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <strong class="number" data-number="100">0</strong>
                                <span><spring:message code="index_page.destination"/></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <h2><spring:message code="blogs.recent_blog"/></h2>
            </div>
        </div>
        <div class="row d-flex">
            <div class="col-md-3 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_1.jpg');">
                    </a>
                    <div class="text mt-3 d-block">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
                            blind texts</a></h3>
                        <div class="meta mb-3">
                            <div><a href="#">Dec 6, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span><i class="fa-regular fa-message"></i></span> 3</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_2.jpg');">
                    </a>
                    <div class="text mt-3">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
                            blind texts</a></h3>
                        <div class="meta mb-3">
                            <div><a href="#">Dec 6, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span><i class="fa-regular fa-message"></i></span> 3</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_3.jpg');">
                    </a>
                    <div class="text mt-3">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
                            blind texts</a></h3>
                        <div class="meta mb-3">
                            <div><a href="#">Dec 6, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span><i class="fa-regular fa-message"></i></span> 3</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_4.jpg');">
                    </a>
                    <div class="text mt-3">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
                            blind texts</a></h3>
                        <div class="meta mb-3">
                            <div><a href="#">Dec 6, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span><i class="fa-regular fa-message"></i></span> 3</a></div>
                        </div>
                    </div>
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