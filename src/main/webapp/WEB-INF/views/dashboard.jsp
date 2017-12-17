
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h1 align="center" style="margin-top: 50px;">Online Currency Rate</h1>
<div class="col-sm-1"></div>
<div class="col-sm-10">
	<section class="shortcode-box" id="shortcode-counter"
		style="margin-bottom: 50px">
		<div class="section-title line-style no-margin">
			<h3 class="title">Currency Rate Now {1 USD=}</h3>
		</div>


		<div class="form-group" style="margin-bottom:100px">
			<div class="col-sm-3">
				<label for="from">From:</label> <select class="form-control"
					id="from">
					<option value="1">AUD</option>
					<option value="2">BDT</option>
					<option value="3">CAD</option>
					<option value="4">EUR</option>
					<option value="5">INR</option>
					<option value="6">SEK</option>
					<option value="7">USD</option>
				</select>
			</div>

			<div class="col-sm-3">
				<label for="from">Amount:</label> <input type="text"
					class="form-control" id="amount1" placeholder="Enter Amount"
					name="amount1">
			</div>

			<div class="col-sm-3">
				<label for="from">To:</label> <select class="form-control" id="to">
					<option value="1">AUD</option>
					<option value="2">BDT</option>
					<option value="3">CAD</option>
					<option value="4">EUR</option>
					<option value="5">INR</option>
					<option value="6">SEK</option>
					<option value="7">USD</option>
				</select>
			</div>

			<div class="col-sm-3">
				<label for="from">Amount:</label> <input type="text"
					class="form-control" readonly id="amount2" placeholder="Converted Amount"
					name="amount2">
			</div>
		</div>

		<div class="form-group" >
			<div class="col-sm-offset-5 col-sm-7">
				<button onclick="calculate()" class="btn btn-default">Submit</button>
			</div>
		</div>

		<div id="showamount"></div>

		<div class="row">
			<div class="col-md-3">
				<div class="counter-slide grey-color">
					<span class="timer" data-to="${eur}" data-from="1"></span> <span
						class="type">EUR</span>
				</div>
			</div>
			<div class="col-md-3">
				<div class="counter-slide grey-color">
					<span class="timer" data-to="${sek}" data-from="1"></span> <span
						class="type">SEK</span>
				</div>
			</div>
			<div class="col-md-3">
				<div class="counter-slide grey-color">
					<span class="timer" data-to="${aud}" data-from="1"></span> <span
						class="type">AUD</span>
				</div>
			</div>

			<div class="col-md-3">
				<div class="counter-slide grey-color">
					<span class="timer" data-to="${cad}" data-from="1"></span> <span
						class="type">CAD</span>
				</div>
			</div>
			<div class="col-md-3">
				<div class="counter-slide grey-color">
					<span class="timer" data-to="${usd}" data-from="1"></span> <span
						class="type">USD</span>
				</div>
			</div>

			<div class="col-md-3">
				<div class="counter-slide grey-color">
					<span class="timer" data-to="${inr}" data-from="1"></span> <span
						class="type">INR</span>
				</div>
			</div>

			<div class="col-md-3">
				<div class="counter-slide grey-color">
					<span class="timer" data-to="${bdt}" data-from="1"></span> <span
						class="type">BDT</span>
				</div>
			</div>


		</div>
		<!-- /.row -->


	</section>
	<!-- /.shortcode-box - #counter -->
</div>
<!-- /.col-md-4 -->