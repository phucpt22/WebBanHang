<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@include file="/views/head/headadmin.jsp"%>
</head>
<body>
    <div class="container1">
        <!-- BEGIN ASIDE -->
        <aside>
          <%@include file="/views/header/headeradmin.jsp"%>
        </aside>
        <!-- END ASIDE -->

        <main>
            <h1>Dashboard</h1>

            <div class="insights">
                <!-- Tổng tiền trong tháng -->
                <div class="total">
                    <span class="material-symbols-outlined bg-primary">payments</span>
                    <div>
                        <h3>Tổng tiền trong tháng</h3>
                    </div>
                    <div class="middle">
                        <h1> $<fmt:formatNumber value="${tongtien}" type="number" maxFractionDigits = "3"> </fmt:formatNumber></h1>
                    </div>
                </div>
                <!-- Số sản phẩm đã bán -->
                <div class="sold">
                    <span class="material-symbols-outlined bg-success">archive</span>
                    <div>
                        <h3>Sản phẩm đã bán</h3>
                    </div>
                    <div class="middle">
                        <h1>${tongsanpham}</h1>
                    </div>
                </div>
                <!-- Số đơn đang chờ xác nhận -->
                
                <div class="order">
                    <span class="material-symbols-outlined bg-danger">receipt_long</span>
                    <div>
                        <h3>Đơn chờ xác nhận</h3>
                    </div>
                    <div class="middle">
                        <h1>${xacnhan}</h1>
                    </div>
                </div>
            </div>

            <div class="recent-orders">
                <h2 class="my-3">Đơn hàng đang chờ xác nhận</h2>
                <table>
                    <thead>
                        <tr>
                            <th>#ID</th>
                            <th>Tên người mua</th>
                            <th>Số lượng</th>
                            <th>Tổng tiền</th>
                            <th>Trạng thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:set var="start" value="${0}"> </c:set>
                    <c:forEach var="item" items="${choxacnhan}">
                        <tr>
                        	<c:set var="start" value="${start+ 1}"></c:set>
                            <td>${start}</td>
                            <td>${item.hoten}</td>
                            <td>${item.soluong } </td>
                            <td>${item.tongtien}</td>
                            <td class="status">${item.trangthai }</td>
                            <td>
                                <a class="text-success" href="/increase/${item.id}" type="submit"><span class="material-symbols-outlined">check_box</span></a>
                                <a class="text-danger" href="/delete/${item.id}" type="submit"><span class="material-symbols-outlined">disabled_by_default</span></a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
        </main>

        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <span class="material-symbols-outlined">
                        menu
                    </span>
                </button>
                <div class="theme-toggler">
                    <span class="material-icons-sharp active">
                        light_mode
                    </span>
                    <span class="material-icons-sharp">
                        dark_mode
                    </span>
                </div>
                <div class="profile">
                    <div class="info">
                        <p>Hi, ${user.hoten}</p>
                        <div class="rule">${user.vaitro?"Admin":""}</div>
                    </div>
                </div>
            </div>

            <!-- SHOP-INFO -->
            <div class="shop-info">
                <h2>Thông tin</h2>
                <div class="info">
                    <div class="box-info bg-success">
                        <span class="material-icons-sharp">
                            mark_unread_chat_alt
                        </span>
                        <h3>Số lượng đánh giá tốt</h3>
                        <div class="amount1">Tổng: ${danhgia} đánh giá</div>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped bg-warning progress-bar-animated" role="progressbar" aria-valuenow="${good}" aria-valuemin="0" aria-valuemax="100" style="width: ${mucdo}%"></div>
                        </div>
                    </div>
                    <div class="box-info bg-danger">
                        <span class="material-icons-sharp">
                            account_box
                        </span>
                        <h3>Số lượng tài khoản</h3>
                        <div class="amount">
                            ${total_user}
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>


    <script src="<c:url value='/css/admin.js'/>"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>