<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

<style>
        html::-webkit-scrollbar {
                display: none; /* Chrome, Safari, Opera*/
        }

        section {
                display: flex;
                justify-content: center;
                height: auto !important;

        <%--background-image: url("<c:url value="/resources/img/img/img_tax.jpg" />");--%>
                /*background-size: cover;*/
                /*background-attachment: fixed;*/
        }
</style>

<html>
<jsp:include page="layout/head.jsp"/>
<jsp:include page="layout/header.jsp"/>
<body>
<section>
        <div class="wrapper-home-intro">
                <div class="home-intro-title animate__animated animate__swing">ACCOUNT BOOK PROJECT</div>

                <div class="wrapper-carousel">
                        <div id="carousel" class="carousel slide" style="width: 700px">
                                <div class="carousel-inner">
                                        <div class="carousel-item active">
                                                <img src="<c:url value="/resources/img/img/img_tax.jpg" />" class="d-block w-100" alt="...">
                                        </div>
                                        <div class="carousel-item">
                                                <img src="<c:url value="/resources/img/img/img_calculator.jpg" />" class="d-block w-100" alt="..." style="width: 700px; height: 466px">
                                        </div>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="visually-hidden">Next</span>
                                </button>
                        </div>
                </div>

                <div class="wrapper-aos">

                        <div data-aos="fade-left" style="margin-top: 100px; text-align: right">
                                <img src="<c:url value="/resources/img/img/img_calculator.jpg" />" style="width: 600px;">
                        </div>
                        <div data-aos="fade-right" style="margin-top: 100px">
                                <img src="<c:url value="/resources/img/img/img_tax.jpg" />" style="width: 600px;">
                        </div>

                        <div data-aos="fade-left" style="margin-top: 100px; text-align: right">
                                <img src="<c:url value="/resources/img/img/img_calculator2.jpg" />" style="width: 600px;">
                        </div>

                        <div data-aos="fade-right" style="margin-top: 100px">
                                <img src="<c:url value="/resources/img/img/img_calculator3.jpg" />" style="width: 600px;">
                        </div>

                        <div data-aos="fade-left" style="margin-top: 100px; text-align: right">
                                <img src="<c:url value="/resources/img/img/img_bookkeeper.jpg" />" style="width: 600px;">
                        </div>
                </div>
                <%--            <h1 style="color: white; font-weight: bold">wrapper-home-intro</h1>--%>
                <%--            <img src="<c:url value="/resources/img/img/img_businessman.png"/>">--%>
        </div>
</section>
<%--<jsp:include page="layout/footer.jsp"/>--%>
</body>
</html>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script type="text/javascript">
    AOS.init();
</script>