<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>CurrencyConverter</title>
<link href="<c:url value='/resources/css/bootstrap.min.css'/>"
	rel="stylesheet">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/vendor/font-awesom/css/font-awesome.min.css'/>">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/vendor/mmenu/jquery.mmenu.all.css'/>" />
<!-- Menu Responsive -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/vendor/animate-wow/animate.css'/>">
<!-- Animation WOW -->

<link rel="stylesheet"
	href="<c:url value='/resources/css/vendor/labelauty/labelauty.css'/>">
<!-- Checkbox form Style -->

<link rel="stylesheet"
	href="<c:url value='/resources/css/vendor/magnific-popup/magnific-popup.css'/>">
<!-- Gallery Effect -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/vendor/skill-bars/skill-bars.css'/>">
<!-- Gallery Effect -->

<link rel="stylesheet" href="<c:url value='/resources/css/menu.css'/>">
<!-- Include Menu stylesheet -->
<link rel="stylesheet" href="<c:url value='/resources/css/custom.css'/>">
<!-- Custom Stylesheet -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/media-query.css'/>">
<!-- Media Query -->

<spring:url value="/resources/script/modernizr.min.js" var="modernizr" />
<script src="${modernizr}"></script>
<!-- Modernizr -->

</head>
<body class="fixed-header">
	<div id="page-container">
		<tiles:insertAttribute name="header" />

		<tiles:insertAttribute name="body" />
	</div>

	<tiles:insertAttribute name="footer" />

	<spring:url value="/resources/script/jquery.min.js" var="jquery" />
	<script src="${jquery}"></script>
	<!-- jQuery	(necessary for Bootstrap's JavaScript plugins) -->

	<spring:url value="/resources/script/jquery-ui.min.js" var="jqueryui" />
	<script src="${jqueryui}"></script>
	<!-- jQuery	UI is a	curated	set	of user	interface interactions,	effects, widgets, and themes -->

	<spring:url value="/resources/script/bootstrap.min.js"
		var="bootstrapmin" />
	<script src="${bootstrapmin}"></script>



	<script type="text/javascript"
		src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
		
	</script>
	<script type="text/javascript"
		src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
		
	</script>


	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<spring:url value="/resources/script/vendor/mmenu/mmenu.min.all.js"
		var="mmenu" />
	<script src="${mmenu}"></script>
	<!-- Menu Responsive -->
	<spring:url value="/resources/script/vendor/animation-wow/wow.min.js"
		var="animation" />
	<script src="${animation}"></script>
	<!-- Animate Script	-->
	<spring:url value="/resources/script/vendor/labelauty/labelauty.min.js"
		var="labelauty" />
	<script src="${labelauty}"></script>
	<!-- Checkbox Script -->
	<spring:url value="/resources/script/vendor/parallax/parallax.min.js"
		var="parallax" />
	<script src="${parallax}"></script>
	<!-- Parallax Script -->
	<spring:url
		value="/resources/script/vendor/images-fill/imagesloaded.min.js"
		var="imagesloaded" />
	<script src="${imagesloaded}"></script>
	<!-- Loaded	image with ImageFill -->
	<spring:url
		value="/resources/script/vendor/images-fill/imagefill.min.js"
		var="imagefill" />
	<script src="${imagefill}"></script>
	<!-- ImageFill Script -->

	<spring:url
		value="/resources/script/vendor/magnific-popup/magnific-popup.min.js"
		var="magnific" />
	<script src="${magnific}"></script>

	<spring:url
		value="/resources/script/vendor/circle-diagram/circle-diagram.min.js"
		var="circle" />
	<script src="${circle}"></script>

	<spring:url value="/resources/script/vendor/countTo/countTo.min.js"
		var="countTo" />
	<script src="${countTo}"></script>

	<script src="script/custom.js"></script>
	<!-- Custom	Script -->


	<spring:url value="/resources/script/custom.js" var="custom" />
	<script src="${custom}"></script>
	<!-- Custom	Script -->

	<script>
		// COUNTER INITIALIZATION
		$('.timer').countTo();

		function calculate() {
			var from = document.getElementById('from').value;
			var amount1 = document.getElementById('amount1').value;
			var to = document.getElementById('to').value;

			if (amount1 != null) {
				if (from == "1" && to == "1") {
					document.getElementById('amount2').value = (amount1 / "${aud}")
					* "${aud}";
				}
				if (from == "1" && to == "2") {
					document.getElementById('amount2').value = (amount1 / "${aud}")
							* "${bdt}";
				}
				if (from == "1" && to == "3") {
					document.getElementById('amount2').value = (amount1 / "${aud}")
							* "${cad}";
				}
				if (from == "1" && to == "4") {
					document.getElementById('amount2').value = (amount1 / "${aud}")
							* "${eur}";
				}
				if (from == "1" && to == "5") {
					document.getElementById('amount2').value = (amount1 / "${aud}")
							* "${inr}";
				}
				if (from == "1" && to == "6") {
					document.getElementById('amount2').value = (amount1 / "${aud}")
							* "${sek}";
				}
				if (from == "1" && to == "7") {
					document.getElementById('amount2').value = (amount1 / "${aud}")
							* "${usd}";
				}
				
				
				if (from == "2" && to == "1") {
					document.getElementById('amount2').value = (amount1 / "${bdt}")
					* "${aud}";
				}
				if (from == "2" && to == "2") {
					document.getElementById('amount2').value = (amount1 / "${bdt}")
							* "${bdt}";
				}
				if (from == "2" && to == "3") {
					document.getElementById('amount2').value = (amount1 / "${bdt}")
							* "${cad}";
				}
				if (from == "2" && to == "4") {
					document.getElementById('amount2').value = (amount1 / "${bdt}")
							* "${eur}";
				}
				if (from == "2" && to == "5") {
					document.getElementById('amount2').value = (amount1 / "${bdt}")
							* "${inr}";
				}
				if (from == "2" && to == "6") {
					document.getElementById('amount2').value = (amount1 / "${bdt}")
							* "${sek}";
				}
				if (from == "2" && to == "7") {
					document.getElementById('amount2').value = (amount1 / "${bdt}")
							* "${usd}";
				}
				
				
				if (from == "3" && to == "1") {
					document.getElementById('amount2').value = (amount1 / "${cad}")
					* "${aud}";
				}
				if (from == "3" && to == "2") {
					document.getElementById('amount2').value = (amount1 / "${cad}")
							* "${bdt}";
				}
				if (from == "3" && to == "3") {
					document.getElementById('amount2').value = (amount1 / "${cad}")
							* "${cad}";
				}
				if (from == "3" && to == "4") {
					document.getElementById('amount2').value = (amount1 / "${cad}")
							* "${eur}";
				}
				if (from == "3" && to == "5") {
					document.getElementById('amount2').value = (amount1 / "${cad}")
							* "${inr}";
				}
				if (from == "3" && to == "6") {
					document.getElementById('amount2').value = (amount1 / "${cad}")
							* "${sek}";
				}
				if (from == "3" && to == "7") {
					document.getElementById('amount2').value = (amount1 / "${cad}")
							* "${usd}";
				}
				
				
				if (from == "4" && to == "1") {
					document.getElementById('amount2').value = (amount1 / "${eur}")
					* "${aud}";
				}
				if (from == "4" && to == "2") {
					document.getElementById('amount2').value = (amount1 / "${eur}")
							* "${bdt}";
				}
				if (from == "4" && to == "3") {
					document.getElementById('amount2').value = (amount1 / "${eur}")
							* "${cad}";
				}
				if (from == "4" && to == "4") {
					document.getElementById('amount2').value = (amount1 / "${eur}")
							* "${eur}";
				}
				if (from == "4" && to == "5") {
					document.getElementById('amount2').value = (amount1 / "${eur}")
							* "${inr}";
				}
				if (from == "4" && to == "6") {
					document.getElementById('amount2').value = (amount1 / "${eur}")
							* "${sek}";
				}
				if (from == "4" && to == "7") {
					document.getElementById('amount2').value = (amount1 / "${eur}")
							* "${usd}";
				}
				
				
				if (from == "5" && to == "1") {
					document.getElementById('amount2').value = (amount1 / "${inr}")
					* "${aud}";
				}
				if (from == "5" && to == "2") {
					document.getElementById('amount2').value = (amount1 / "${inr}")
							* "${bdt}";
				}
				if (from == "5" && to == "3") {
					document.getElementById('amount2').value = (amount1 / "${inr}")
							* "${cad}";
				}
				if (from == "5" && to == "4") {
					document.getElementById('amount2').value = (amount1 / "${inr}")
							* "${eur}";
				}
				if (from == "5" && to == "5") {
					document.getElementById('amount2').value = (amount1 / "${inr}")
							* "${inr}";
				}
				if (from == "5" && to == "6") {
					document.getElementById('amount2').value = (amount1 / "${inr}")
							* "${sek}";
				}
				if (from == "5" && to == "7") {
					document.getElementById('amount2').value = (amount1 / "${inr}")
							* "${usd}";
				}
				
				
				if (from == "6" && to == "1") {
					document.getElementById('amount2').value = (amount1 / "${sek}")
					* "${aud}";
				}
				if (from == "6" && to == "2") {
					document.getElementById('amount2').value = (amount1 / "${sek}")
							* "${bdt}";
				}
				if (from == "6" && to == "3") {
					document.getElementById('amount2').value = (amount1 / "${sek}")
							* "${cad}";
				}
				if (from == "6" && to == "4") {
					document.getElementById('amount2').value = (amount1 / "${sek}")
							* "${eur}";
				}
				if (from == "6" && to == "5") {
					document.getElementById('amount2').value = (amount1 / "${sek}")
							* "${inr}";
				}
				if (from == "6" && to == "6") {
					document.getElementById('amount2').value = (amount1 / "${sek}")
							* "${sek}";
				}
				if (from == "6" && to == "7") {
					document.getElementById('amount2').value = (amount1 / "${sek}")
							* "${usd}";
				}
				
				if (from == "7" && to == "1") {
					document.getElementById('amount2').value = (amount1 / "${usd}")
					* "${aud}";
				}
				if (from == "7" && to == "2") {
					document.getElementById('amount2').value = (amount1 / "${usd}")
							* "${bdt}";
				}
				if (from == "7" && to == "3") {
					document.getElementById('amount2').value = (amount1 / "${usd}")
							* "${cad}";
				}
				if (from == "7" && to == "4") {
					document.getElementById('amount2').value = (amount1 / "${usd}")
							* "${eur}";
				}
				if (from == "7" && to == "5") {
					document.getElementById('amount2').value = (amount1 / "${usd}")
							* "${inr}";
				}
				if (from == "7" && to == "6") {
					document.getElementById('amount2').value = (amount1 / "${usd}")
							* "${sek}";
				}
				if (from == "7" && to == "7") {
					document.getElementById('amount2').value = (amount1 / "${usd}")
							* "${usd}";
				}
			}
		}
	</script>

</body>
</html>