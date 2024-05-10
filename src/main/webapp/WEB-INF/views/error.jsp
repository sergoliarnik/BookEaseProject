<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<spring:message code="error" var="error_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${error_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg'); height: 200px">
    <div class="overlay"></div>
</div>

<section class="ftco-section contact-section bg-light">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 ">
                <div class="col-sm-offset-1  text-center">
                    <div class="four_zero_four_bg">
                        <h1 class="text-center ">Error</h1>
                    </div>
                    <div class="content_box_404">
                        <h3 class="h2">
                            Something went wrong
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>

</body>
</html>