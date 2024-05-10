<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<spring:message code="blogs.blog" var="blog_i18n"/>
<jsp:include page="includes/head.jsp">
    <jsp:param name="title" value="${blog_i18n}"/>
</jsp:include>
<body>

<jsp:include page="includes/header.jsp"/>

<div class="hero-wrap" style="background-image: url('/images/bg_1.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
            <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                <div class="text">
                    <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html"><spring:message code="navigation.home"/></a></span> <span><spring:message code="blogs.blog"/></span></p>
                    <h1 class="mb-4 bread"><spring:message code="blogs.blog"/></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-3 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_1.jpg');">
                    </a>
                    <div class="text mt-3 d-block">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
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
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
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
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
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
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
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
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_5.jpg');">
                    </a>
                    <div class="text mt-3 d-block">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
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
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_6.jpg');">
                    </a>
                    <div class="text mt-3">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
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
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_7.jpg');">
                    </a>
                    <div class="text mt-3">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
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
                    <a href="blog-single" class="block-20" style="background-image: url('/images/image_8.jpg');">
                    </a>
                    <div class="text mt-3">
                        <h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                        <div class="meta mb-3">
                            <div><a href="#">Dec 6, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span><i class="fa-regular fa-message"></i></span> 3</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col text-center">
                <div class="block-27">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<jsp:include page="includes/scripts.jsp"/>

</body>
</html>