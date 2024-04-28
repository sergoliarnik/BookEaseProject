<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title><spring:message code="bookease"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <jsp:include page="includes/styles.jsp"/>
</head>
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
                <form action="#" class="booking-form">
                    <div class="row">
                        <div class="col-md-3 d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                <div class="wrap">
                                    <label for="#"><spring:message code="rooms.check_in_date"/></label>
                                    <input type="text" class="form-control checkin_date" placeholder="<spring:message code='rooms.check_in_date'/>">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                <div class="wrap">
                                    <label for="#"><spring:message code="rooms.check_out_date"/></label>
                                    <input type="text" class="form-control checkout_date" placeholder="<spring:message code='rooms.check_out_date'/>">
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                <div class="wrap">
                                    <label for="#"><spring:message code="rooms.room"/></label>
                                    <div class="form-field">
                                        <div class="select-wrap">
                                            <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value=""><spring:message code="rooms.suite"/></option>
                                                <option value=""><spring:message code="rooms.family_room"/></option>
                                                <option value=""><spring:message code="rooms.deluxe_room"/></option>
                                                <option value=""><spring:message code="rooms.classic_room"/></option>
                                                <option value=""><spring:message code="rooms.superior_room"/></option>
                                                <option value=""><spring:message code="rooms.luxury_room"/></option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                <div class="wrap">
                                    <label for="#"><spring:message code="rooms.customer"/></label>
                                    <div class="form-field">
                                        <div class="select-wrap">
                                            <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                            <select name="" id="" class="form-control">
                                                <option value="">1 <spring:message code="rooms.adult"/></option>
                                                <option value="">2 <spring:message code="rooms.adult"/></option>
                                                <option value="">3 <spring:message code="rooms.adult"/></option>
                                                <option value="">4 <spring:message code="rooms.adult"/></option>
                                                <option value="">5 <spring:message code="rooms.adult"/></option>
                                                <option value="">6 <spring:message code="rooms.adult"/></option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex">
                            <div class="form-group p-4 align-self-stretch d-flex align-items-end">
                                <div class="wrap">
                                    <label for="#"><spring:message code="rooms.where"/></label>
                                    <div class="form-field">
                                        <div class="select-wrap">
                                            <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                            <select name="" id="" class="form-control">
                                                <c:forEach items="${cities}" var="city">
                                                <option value="">${city}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md d-flex">
                            <div class="form-group d-flex align-self-stretch">
                                <input type="submit" value="<spring:message code='rooms.check_availability'/>"
                                       class="btn btn-primary py-3 px-4 align-self-stretch">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section ftc-no-pb ftc-no-pt">
    <div class="container">
        <div class="row">
            <div class="col-md-5 p-md-5 img img-2 d-flex justify-content-center align-items-center"
                 style="background-image: url(/images/bg_2.jpg);">
                <a href="https://vimeo.com/45830194"
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
</body>
</html>