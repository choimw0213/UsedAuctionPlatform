<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items='${list}' var='p'>
	<div class="card d-flex align-items-center border-0 ps-2 pe-2"
		data-productseq="${p.getProductSeq()}">
		<div class="row align-content-center w-100">
			<div
				class="d-flex align-items-center justify-content-center h-100 ps-0 pe-0">
				<div>
					<img src="images/product/product1/product1-img1.jpg"
						class="thumbnail">
				</div>
				<div class="ms-2 w-100">
					<div class="card-text d-flex align-items-start">
						<div class="d-flex align-items-center justify-content-start me-1">

							<c:choose>
								<c:when test="${p.getProductUserId().equals(userId)}">
									<span class="badge badge-s">판매품</span>
								</c:when>
								<c:otherwise>
									<span class="badge bg-info">구매품</span>
								</c:otherwise>
							</c:choose>
						</div>
						<div id="item-title-group">
							<h6>${p.getTitle()}</h6>
							<p class="p-0 pt-1">${p.getCategory()}</p>
						</div>
					</div>
					<div class="m-0">
						<span class="noti-content">[${p.getNickname()}]님이 </span> <span
							class="pr">${p.getPrice()}</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr class="m-2">
</c:forEach>