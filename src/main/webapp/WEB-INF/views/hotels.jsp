<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<spring:message code="hotels" var="hotels_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${hotels_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/"><spring:message code="navigation.home"/></a></span> <span><spring:message code="hotels"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="hotels"/></h1>
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
                    <c:forEach var="hotel" items="${hotels}">
                    <div class="col-sm col-md-6 col-lg-4 ftco-animate">
                        <div class="room">
                            <a href="/hotels/${hotel.id}" class="img d-flex justify-content-center align-items-center" style="background-image: url(${hotel.imageUrl});">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <span><i class="fa-solid fa-magnifying-glass"></i></span>
                                </div>
                            </a>
                            <div class="text p-3 text-center">
                                <h3 class="mb-3"><a href="/hotels/${hotel.id}">${hotel.name}</a></h3>
                                <p class="pt-1"><a href="hotels/${hotel.id}/rooms" class="btn-custom"><spring:message code="rooms"/> <span><i class="fa-solid fa-arrow-right"></i></span></a></p>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-3 sidebar">
                <div class="sidebar-wrap bg-light ftco-animate">
                    <h3 class="heading mb-4"><spring:message code="sidebar.advanced_search"/></h3>
                    <form:form action="/hotels" modelAttribute="hotelFilterDto" method="get">
                        <div class="fields">
                            <div class="form-group">
                                <div class="select-wrap one-third">
                                    <div class="icon"><span><i class="fa-solid fa-chevron-down"></i></span></div>
                                    <form:select path="city" class="form-control">
                                        <form:option value=""><spring:message code="hotels.city"/></form:option>
                                        <form:options items="${cities}"/>
                                    </form:select>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="<spring:message code="button.search"/>" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                    </form:form>
                </div>
                <div class="sidebar-wrap bg-light ftco-animate">
                    <h3 class="heading mb-4"><spring:message code="hotels.add_hotel"/></h3>
                    <form action="<c:url value="/hotels/add"/>" method="get">
                        <div class="fields">
                            <div class="form-group">
                                <input type="submit" value="<spring:message code="hotels.add_hotel"/>" class="btn btn-primary py-3 px-5">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="sidebar-wrap bg-light ftco-animate">
                    <h3 class="heading mb-4"><spring:message code="sidebar.star_rating"/></h3>
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