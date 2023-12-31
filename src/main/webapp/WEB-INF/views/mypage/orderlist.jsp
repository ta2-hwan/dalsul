<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp"%>
<%@ include file="/WEB-INF/views/main/header.jsp"%>
<%@ include file="/WEB-INF/views/mypage/mypageCommon.jsp"%>
<style>
body{ margin-top: 70px;}
h1 { text-align:center; }
#thead_table { width:80%;  text-align:center; margin: 0 auto;}
#detaliReview {margin-right: 40px;}

</style>
<script>
$(function(){
    $(".order-detail-link > a").click(function() {
        // data-order-no 값을 가져와서 변수에 저장
        var orderNo = $(this).closest('.order-detail-link').data('order-no');
        console.log(orderNo)
        // 해당 값을 숨겨진 input 요소에 설정
        $('#no').val(orderNo);
        console.log($('#no').val());
		$("#orderForm").submit();
    });

})
</script>

<body>
    <h1>주문 내역</h1>
   <form id="orderForm" method="get" action="/mypage/orderListDetail">
    	<input type="hidden" id="no" name="order_no" />
	</form>

    <div class="border border-success p-2 mb-2 whole-table" id="thead_table">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">주문 번호</th>
                    <th scope="col">총 금액</th>
                    <th scope="col">주문 날짜</th>
                    <th scope="col">주문 상태</th>
                </tr>
            </thead>
            <tbody>
				<c:forEach items="${orderList}" var="orderList">
					<tr>
						<td class="order-detail-link"data-order-no="${orderList.order_no}">
							<a href="javascript:void(0)"> ${orderList.order_no}</a></td>
						<!--  <td>${orderList.order_total_price}</td> -->
						<td><script>
							// order_total_price 값을 가져와 쉼표로 포맷팅하여 출력
							var orderTotalPrice = ${orderList.order_total_price};
							var formattedPrice = orderTotalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
							document.write(formattedPrice);
						</script></td>
						<td>${orderList.order_date}</td>
						<td>${orderList.order_status}</td>
					</tr>
				</c:forEach>
			</tbody>
        </table>
    <!--    <p class="d-inline-flex gap-1">
  <a href="/" class="btn active" role="button" data-bs-toggle="button" aria-pressed="true">메인으로 돌아가기</a>
		</p>    	<a href="/mypage/orderlistDetailView">상세내역 조회하기</a>-->
		 
    
      	    <a href="/" class="btn active" role="button">메인으로 돌아가기</a> 
    </div>
</body>
</html>