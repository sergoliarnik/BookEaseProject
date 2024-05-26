<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="/"><spring:message
                            code="navigation.home"/></a></span> <span><spring:message code="requests"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="requests"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>


<section class="ftco-section bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <table id="requests-table" class="table table-striped table-bordered" style="width:100%; height: 500px">
                    <thead>
                    <tr>
                        <th><spring:message code="users.name"/></th>
                        <th><spring:message code="users.email"/></th>
                        <th><spring:message code="requests.subject"/></th>
                        <th><spring:message code="requests.message"/></th>
                        <th><spring:message code="requests.new_company_request"/></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="request" items="${requests}">
                        <tr>
                            <td>${request.name}</td>
                            <td>${request.email}</td>
                            <td>${request.subject}</td>
                            <td class="text-justify">${request.message}</td>
                            <td>${request.newCompanyRequest}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<jsp:include page="includes/instagram-section.jsp"/>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>

<script>
    <%
        java.util.Locale locale = pageContext.getResponse().getLocale();
        pageContext.setAttribute("languageCode", locale.getLanguage().substring(0, 2));
    %>

    $(document).ready(function () {
        const languageCode = "${languageCode}";

        $('#requests-table').DataTable({
            language: {
                url: getDatatableLocalizationUrl(languageCode)
            }
        });
    });

    function getDatatableLocalizationUrl(languageCode) {
        if (languageCode === 'de') {
            return "https://cdn.datatables.net/plug-ins/1.11.5/i18n/de-DE.json"
        } else if (languageCode === 'pl') {
            return "https://cdn.datatables.net/plug-ins/1.11.5/i18n/pl.json"
        } else if (languageCode === 'uk') {
            return "https://cdn.datatables.net/plug-ins/1.11.5/i18n/uk.json"
        }
        return "https://cdn.datatables.net/plug-ins/1.11.5/i18n/en-GB.json";
    }
</script>
</body>
</html>