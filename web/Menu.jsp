<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md navbar-dark bg-warning">
    <div class="container">
        <a class="navbar-brand" href="home">Dược thảo Mailands</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc.isAdmin==1}">
                    <li class="nav-item">
                        <a class="nav-link" href="">Manager Account</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell==1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Product</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc!=null}">
                    <li class="nav-item">
                        <a class="nav-link" href="">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc==null}">
                    <li class="nav-item">
                        <a class="nav-link" href="login">Login</a>
                    </li>
                </c:if>
            </ul>
            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>         
                <a class="btn btn-success btn-sm ml-3" href="cart">
                    <i class="fa fa-shopping-cart"></i> <span style="font-size: 14px;">Cart</span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px;"></span></b> 
                </a>
            </form>
        </div>
    </div>
</nav>
<section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">Công ty tiên phong trong lĩnh vực nuôi trồng và sản xuất đông trùng hạ thảo tại Việt Nam</h1>
        <p class="lead text-muted mb-0">Cam kết sản xuất những sản phẩm đông trùng hạ thảo tốt nhất, chất lượng cao, an toàn, hiệu quả, đem lại sức khỏe và sự an tâm cho mọi gia đình.</p>
    </div>
</section>
