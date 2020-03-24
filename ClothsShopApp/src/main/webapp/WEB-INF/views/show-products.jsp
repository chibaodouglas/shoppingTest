<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div class="col-md-offset-2 col-md-7">
		<h1>Product List</h1>
		${message}
		<hr />
		<!-- Display: All items in stock -->
		<div class="grid-container">
			<!-- Each slot links to the page itemDetail?id=[productID] -->
			<c:forEach var="product" items="${products}">
				<div class="grid-slot">
					<a href="/itemDetail?id=${product.productID}"> <img
						src="<c:url value="/resources/img/${product.imgURL}"/>"
						alt="imgNOTFOUND"> <!-- image --> ${product.productName}<!-- name -->
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<%@ include file="common/footer.jspf"%>
