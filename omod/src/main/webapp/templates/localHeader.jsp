<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<openmrs:htmlInclude file="/scripts/calendar/calendar.js" />

<openmrs:portlet url="patientHeader" id="patientDashboardHeader"
	patientId="${patient.patientId}" />
<br />

<script type="text/javascript">
	var $k = jQuery.noConflict();

	$k(document).ready(function() {
		// Code comes here...
	});

	$k(function() {
		$k("#menu").menu();
	});
</script>

<style>
.ui-menu {
	width: 100px;
}
</style>

<center>
	<h2>In-patient Form</h2>
</center>

<div>
	<a
		href="<openmrs:contextPath/>/patientDashboard.form?patientId=${param.patientId}">
		<spring:message code="patientDashboard.viewDashboard" />
	</a>
</div>

<div id="my_form">
	<div id="left_menu" style="float: left; width: 15%">
		<b class="boxHeader">Main menu</b>
		<div class="box">
			<ul id="menu">
				<li><a
					href="${pageContext.request.contextPath}/module/mohdataflowmodule/outpatient.form">General
						Information</a></li>
				<li><a href="#">Internal Medicine</a></li>
				<li><a href="#">Maternity</a></li>
				<li><a href="#">Neonatology</a></li>
				<li><a href="#">Surgery</a></li>
				<li><a href="#">Pediatrics</a></li>
				<li class="ui-state-disabled"><a href="#">Medical Acts</a></li>
				<li><a href="#">IPD Diagnosis</a></li>
			</ul>
		</div>
	</div>
	<div id="right_side" style="float: right; width: 84.5%">
		<div id="general_info">
			<b class="boxHeader">IPD general information</b>
			<div class="box">This is the general information section</div>
		</div>
			
			