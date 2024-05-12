<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2"><spring:message code="page.footer.bookease_hotel"/></h2>
                    <p><spring:message code="page.footer.hotel_description"/></p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="#"><span><i class="fa-brands fa-x-twitter"></i></span></a></li>
                        <li class="ftco-animate"><a href="#"><span><i class="fa-brands fa-facebook"></i></span></a></li>
                        <li class="ftco-animate"><a href="#"><span><i class="fa-brands fa-instagram"></i></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-5">
                    <h2 class="ftco-heading-2"><spring:message code="page.footer.useful_links"/></h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block"><spring:message code="blogs.blog"/></a></li>
                        <li><a href="#" class="py-2 d-block"><spring:message code="rooms"/></a></li>
                        <li><a href="#" class="py-2 d-block"><spring:message code="page.footer.useful_links.amenities"/></a></li>
                        <li><a href="#" class="py-2 d-block"><spring:message code="page.footer.useful_links.gift_card"/></a></li>
                        <li>
                            <%
                                java.util.Locale locale = pageContext.getResponse().getLocale();
                                String languageName = locale.getDisplayLanguage(locale);
                                languageName = languageName.substring(0, 1).toUpperCase() + languageName.substring(1);

                                pageContext.setAttribute("languageName", languageName);
                            %>
                            <a href="#" class="py-2 d-block nav-link dropdown-toggle text-sm show" style="padding: 0;" data-toggle="dropdown" aria-expanded="false">
                                ${languageName}
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end mt-sm-3 shadow-sm" style="background: inherit" aria-labelledby="languages">
                                <li><a class="dropdown-item" href="?lang=uk" style="background: #232323">Українська</a></li>
                                <li><a class="dropdown-item" href="?lang=en" style="background: #232323">English</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2"><spring:message code="page.footer.privacy"/></h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block"><spring:message code="page.footer.privacy.career"/></a></li>
                        <li><a href="#" class="py-2 d-block"><spring:message code="page.footer.privacy.about_us"/></a></li>
                        <li><a href="#" class="py-2 d-block"><spring:message code="contact.contact_us"/></a></li>
                        <li><a href="#" class="py-2 d-block"><spring:message code="page.footer.privacy.services"/></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2"><spring:message code="page.footer.have_a_questions"/>?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon"><i class="fa-solid fa-location-dot"></i></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                            <li><a href="#"><span class="icon"><i class="fa-solid fa-phone"></i></span><span class="text">+2 392 3929 210</span></a></li>
                            <li><a href="#"><span class="icon"><i class="fa-solid fa-envelope"></i></span><span class="text">info@yourdomain.com</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>