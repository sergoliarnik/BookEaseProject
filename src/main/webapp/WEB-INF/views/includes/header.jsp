<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index">Deluxe</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="/" class="nav-link"><spring:message code="navigation.home"/></a></li>
                <li class="nav-item"><a href="rooms" class="nav-link"><spring:message code="rooms"/></a></li>
                <li class="nav-item"><a href="restaurant" class="nav-link"><spring:message code="restaurant.restaurant"/></a></li>
                <li class="nav-item"><a href="blog" class="nav-link"><spring:message code="blogs.blog"/></a></li>
                <li class="nav-item"><a href="contact" class="nav-link"><spring:message code="navigation.contact"/></a></li>
                <li class="nav-item"><a href="register" class="nav-link"><spring:message code="register"/></a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white text-sm show" data-toggle="dropdown" aria-expanded="false">
                        <span class="d-none d-sm-inline-block">Ukrainian</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end mt-sm-3 shadow-sm" aria-labelledby="languages">
                        <li><a class="dropdown-item" href="?lang=uk">Ukrainian</a></li>
                        <li><a class="dropdown-item" href="?lang=en">English</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>