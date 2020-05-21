<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<openmrs:htmlInclude file="/scripts/calendar/calendar.js" />

<openmrs:portlet url="patientHeader" id="patientDashboardHeader"
	patientId="${patient.patientId}" />
<br />
<openmrs:htmlInclude file="/moduleResources/mohdataflowmodule/js/jquery-1.8.3.js" />

<script type="text/javascript">
	var $j = jQuery.noConflict();
	
	$j(document).ready(function() {

		$j("#stomatology").hide();
		$j("#emergency").hide();
		$j("#physiotherapy").hide();
		$j("#ophtalmology").hide();
		$j("#mental_health").hide();
		$j("#medical_acts").hide();
		$j("#opd_diagnosis").hide();
		$j("#forensic").hide();
		$j("#transfer_out").hide();
		
		$j("#stomatology_link").click(function(){
			$j("#stomatology").show();

			$j("#emergency").hide();
			$j("#ophtalmology").hide();
			$j("#physiotherapy").hide();
			$j("#mental_health").hide();
			$j("#medical_acts").hide();
			$j("#opd_diagnosis").hide();
			$j("#forensic").hide();
			$j("#transfer_out").hide();

		});
		$j("#ophtalmology_link").click(function(){
			$j("#ophtalmology").show();
			
			$j("#stomatology").hide();
			$j("#mental_health").hide();
			$j("#physiotherapy").hide();
			$j("#emergency").hide();
			$j("#medical_acts").hide();
			$j("#opd_diagnosis").hide();
			$j("#forensic").hide();
			$j("#transfer_out").hide();
		});
		$j("#emergency_link").click(function(){
			$j("#emergency").show();
			
			$j("#ophtalmology").hide();
			$j("#stomatology").hide();
			$j("#mental_health").hide();
			$j("#physiotherapy").hide();
			$j("#medical_acts").hide();
			$j("#opd_diagnosis").hide();
			$j("#forensic").hide();
			$j("#transfer_out").hide();
		});
		$j("#physiotherapy_link").click(function(){
			$j("#physiotherapy").show();
			
			$j("#ophtalmology").hide();
			$j("#emergency").hide();
			$j("#stomatology").hide();
			$j("#mental_health").hide();
			$j("#medical_acts").hide();
			$j("#opd_diagnosis").hide();
			$j("#forensic").hide();
			$j("#transfer_out").hide();
		});
		$j("#mental_health_link").click(function(){
			$j("#mental_health").show();
			
			$j("#ophtalmology").hide();
			$j("#emergency").hide();
			$j("#physiotherapy").hide();
			$j("#stomatology").hide();
			$j("#medical_acts").hide();
			$j("#opd_diagnosis").hide();
			$j("#forensic").hide();
			$j("#transfer_out").hide();
		});
		$j("#medical_acts_link").click(function(){
			$j("#medical_acts").show();
			
			$j("#ophtalmology").hide();
			$j("#emergency").hide();
			$j("#physiotherapy").hide();
			$j("#mental_health").hide();
			$j("#stomatology").hide();
			$j("#opd_diagnosis").hide();
			$j("#forensic").hide();
			$j("#transfer_out").hide();
		});
		
		$j("#diagnosis_link").click(function(){
			$j("#opd_diagnosis").show();
			
			$j("#ophtalmology").hide();
			$j("#emergency").hide();
			$j("#physiotherapy").hide();
			$j("#mental_health").hide();
			$j("#medical_acts").hide();
			$j("#stomatology").hide();
			$j("#forensic").hide();
			$j("#transfer_out").hide();
		});
		
		$j("#forensic_link").click(function(){
			$j("#forensic").show();
			
			$j("#ophtalmology").hide();
			$j("#emergency").hide();
			$j("#physiotherapy").hide();
			$j("#mental_health").hide();
			$j("#medical_acts").hide();
			$j("#stomatology").hide();
			$j("#transfer_out").hide();
			$j("#opd_diagnosis").hide();
		});
		
		$j("#transfert_out_link").click(function(){
			$j("#transfer_out").show();
			
			$j("#ophtalmology").hide();
			$j("#emergency").hide();
			$j("#physiotherapy").hide();
			$j("#mental_health").hide();
			$j("#medical_acts").hide();
			$j("#stomatology").hide();
			$j("#forensic").hide();
			$j("#opd_diagnosis").hide();
		});
	});
</script>

<style type="text/css">
	.shadow {
		-moz-box-shadow: 3px 3px 4px #000;
		-webkit-box-shadow: 3px 3px 4px #000;
		box-shadow: 3px 3px 4px #000;
		/* For IE 8 */
		-ms-filter:
			"progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000')";
		/* For IE 5.5 - 7 */
		filter: progid:  DXImageTransform.Microsoft.Shadow(  Strength=  4,
			Direction=  135, Color=  '#000000');
		margin-left: auto;
		margin-right: auto;
		width: 100%;
		background-color: #ffffff;
	}
	.shadow tbody {
		border: 1px solid #D3D3D3;
	    color: #555555;
	    font-weight: normal;
	    font-size: 0.8em;
	    margin: 0;
	    padding: 3px 0 3px 5px;
	}
	.shadow thead {
		background-color: #D3DCE3;
	    font-size: 0.8em;
	}
</style>

<center>
	<h2>Out-patient Form</h2>
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
				<openmrs:hasPrivilege privilege="Manage OPD Form - General information">
					<li><a id="general_info_link" href="#">General Information</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Stomatology">
					<li><a id="stomatology_link" href="#">Stomatology</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Ophtalmology">
					<li><a id="ophtalmology_link" href="#">Ophtalmology</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Emergency">
					<li><a id="emergency_link" href="#">Emergency</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Physiotherapy">
					<li><a id="physiotherapy_link" href="#">Physiotherapy</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Mental Health">
					<li><a id="mental_health_link" href="#">Mental Health</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Forensic">
					<li><a id="forensic_link" href="#">Forensic</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Medical Acts">
					<li><a id="medical_acts_link" href="#">Medical Acts</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Diagnosis">
					<li><a id="diagnosis_link" href="#">OPD Diagnosis</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage OPD Form - Transfer Out">
					<li><a id="transfert_out_link" href="#">Transfer Out</a></li>
				</openmrs:hasPrivilege>
			</ul>
		</div>
	</div>
	<div id="right_side" style="float: right; width: 84.5%">
		<openmrs:hasPrivilege privilege="Manage OPD Form - General information">
			<div id="general_info" style="padding-bottom: 5px;">
				<b class="boxHeader">OPD general information</b>
				<div class="box"><%@include file="templates/opd/opdGeneralInfoForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Stomatology">
			<div id="stomatology" style="padding-bottom: 5px;">
				<b class="boxHeader">Stomatology</b>
				<div class="box"><%@include file="templates/opd/stomatologyForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Ophtalmology">
			<div id="ophtalmology" style="padding-bottom: 5px;">
				<b class="boxHeader">Ophtalmology</b>
				<div class="box"><%@include file="templates/opd/ophtalmologyForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Emergency">
			<div id="emergency" style="padding-bottom: 5px;">
				<b class="boxHeader">Emergency</b>
				<div class="box"><%@include file="templates/opd/emergencyForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Physiotherapy">
			<div id="physiotherapy" style="padding-bottom: 5px;">
				<b class="boxHeader">Physiotherapy</b>
				<div class="box"><%@include file="templates/opd/physiotherapyForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Mental Health">
			<div id="mental_health" style="padding-bottom: 5px;">
				<b class="boxHeader">Mental Health</b>
				<div class="box"><%@include file="templates/opd/mentalHealthForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>
		
		<openmrs:hasPrivilege privilege="Manage OPD Form - Forensic">
			<div id="forensic" style="padding-bottom: 5px;">
				<b class="boxHeader">Forensic</b>
				<div class="box"><%@include file="templates/opd/forensicForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Medical Acts">
			<div id="medical_acts" style="padding-bottom: 5px;">
				<b class="boxHeader">Medical Acts</b>
				<div class="box"><%@include file="templates/medicalActsForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Diagnosis">
			<input type="hidden" name="opd_diagnosis_submit" id="opd_diagnosis_submit" value="${opd_diagnosis_display}"/>
			<div id="opd_diagnosis" style="padding-bottom: 5px;">
				<b class="boxHeader">OPD Diagnosis</b>
				<div class="box"><%@include file="templates/diagnosisForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage OPD Form - Transfer Out">
			<div id="transfer_out" style="padding-bottom: 5px;">
				<b class="boxHeader">Transfer Out</b>
				<div class="box"><%@include file="templates/opd/transferoutForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

	</div>
	<div style="clear: both;"></div>
</div>


<%@ include file="/WEB-INF/template/footer.jsp"%>