<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<spring:message code="contact" var="contact_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${contact_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/"><spring:message code="navigation.home"/></a></span> <span><spring:message code="contact"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="contact.contact_us"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section contact-section bg-light">
    <div class="container">
        <div class="row d-flex mb-5 contact-info">
            <div class="col-md-12 mb-4">
                <h2 class="h3"><spring:message code="contact.contact_information"/></h2>
            </div>
            <div class="w-100"></div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span><spring:message code="contact.address"/>:</span> Uzhhorod hotel, Bohdana Khmel'nyts'koho Square, 2, Uzhhorod, Zakarpattia Oblast, 88000</p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span><spring:message code="contact.phone"/>:</span> <a href="tel://1234567920">+380 99 000 0000</a></p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span><spring:message code="contact.email"/>:</span> <a href="mailto:info@yoursite.com">info@bookease.com</a></p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span><spring:message code="contact.website"/></span> <a href="#">bookease.com</a></p>
                </div>
            </div>
        </div>
        <div class="row block-9">
            <div class="col-md-6 order-md-last d-flex">
                <form:form action="/requests" modelAttribute="addRequestDto" method="post" cssClass="bg-white p-5 contact-form">
                    <div class="form-group">
                        <spring:message code="users.name" var="name_i18n"/>
                        <form:input path="name" type="text" class="form-control" placeholder="${name_i18n}"/>
                    </div>
                    <div class="form-group">
                        <spring:message code="users.email" var="email_i18n"/>
                        <form:input path="email" type="email" class="form-control" placeholder="${email_i18n}"/>
                    </div>
                    <div class="form-group">
                        <spring:message code="requests.subject" var="subject_i18n"/>
                        <form:input path="subject" type="text" class="form-control" placeholder="${subject_i18n}"/>
                    </div>
                    <div class="form-group">
                        <spring:message code="requests.message" var="message_i18n"/>
                        <form:textarea path="message" cols="30" rows="7" class="form-control" placeholder="${message_i18n}"/>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <form:checkbox path="newCompanyRequest" class="form-check-input"/>
                            <form:label path="newCompanyRequest" class="form-check-label"><spring:message code="requests.you_want_to_join_us"/>?</form:label>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="<spring:message code="button.send_message"/>" class="btn btn-primary py-3 px-5">
                    </div>
                </form:form>

            </div>

            <div class="col-md-6 d-flex">
                <div id="map" class="bg-white"></div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>

</body>
</html>