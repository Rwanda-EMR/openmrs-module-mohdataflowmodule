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
		
		$j("#internal_medecine").hide();
		$j("#maternity").hide();
		$j("#neonatology").hide();
		$j("#surgery").hide();
		$j("#pediatrics").hide();
		$j("#medical_acts").hide();
		$j("#ipd_diagnosis").hide();
		
		$j("#internal_med_link").click(function(){
			$j("#internal_medecine").show();
			
			$j("#maternity").hide();
			$j("#neonatology").hide();
			$j("#surgery").hide();
			$j("#pediatrics").hide();
			$j("#medical_acts").hide();
			$j("#ipd_diagnosis").hide();
		});
		$j("#maternity_link").click(function(){
			$j("#maternity").show();
			
			$j("#internal_medecine").hide();
			$j("#neonatology").hide();
			$j("#surgery").hide();
			$j("#pediatrics").hide();
			$j("#medical_acts").hide();
			$j("#ipd_diagnosis").hide();
		});
		$j("#neonatology_link").click(function(){
			$j("#neonatology").show();
			
			$j("#maternity").hide();
			$j("#internal_medecine").hide();
			$j("#surgery").hide();
			$j("#pediatrics").hide();
			$j("#medical_acts").hide();
			$j("#ipd_diagnosis").hide();
		});
		$j("#surgery_link").click(function(){
			$j("#surgery").show();
			
			$j("#maternity").hide();
			$j("#neonatology").hide();
			$j("#internal_medecine").hide();
			$j("#pediatrics").hide();
			$j("#medical_acts").hide();
			$j("#ipd_diagnosis").hide();
		});
		$j("#pediatrics_link").click(function(){
			$j("#pediatrics").show();
			
			$j("#maternity").hide();
			$j("#neonatology").hide();
			$j("#surgery").hide();
			$j("#internal_medecine").hide();
			$j("#medical_acts").hide();
			$j("#ipd_diagnosis").hide();
		});
		$j("#medical_acts_link").click(function(){
			$j("#medical_acts").show();
			
			$j("#maternity").hide();
			$j("#neonatology").hide();
			$j("#surgery").hide();
			$j("#pediatrics").hide();
			$j("#internal_medecine").hide();
			$j("#ipd_diagnosis").hide();
		});
		$j("#diagnosis_link").click(function(){
			$j("#ipd_diagnosis").show();
			
			$j("#maternity").hide();
			$j("#neonatology").hide();
			$j("#surgery").hide();
			$j("#pediatrics").hide();
			$j("#medical_acts").hide();
			$j("#internal_medecine").hide();
		});
	});

	$j(function() {
		$j("#menu").menu();
	});
</script>

<style>
.ui-menu {
	width: 100px;
}

#ipd_diagnosis #medical_acts #pediatrics #surgery #neonatology #maternity #internal_medecine {
	display: ;
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
				<openmrs:hasPrivilege privilege="Manage IPD Form - General information">
					<li><a id="general_info_link" href="#">General Information</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage IPD Form - Internal Medecine">
					<li><a id="internal_med_link" href="#">Internal Medicine</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage IPD Form - Maternity">
					<li><a id="maternity_link" href="#">Maternity</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage IPD Form - Neonatology">
					<li><a id="neonatology_link" href="#">Neonatology</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage IPD Form - Surgery">
					<li><a id="surgery_link" href="#">Surgery</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage IPD Form - Pediatrics">
					<li><a id="pediatrics_link" href="#">Pediatrics</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage IPD Form - Medical Acts">
					<li class="ui-state-disabled"><a id="medical_acts_link" href="#">Medical Acts</a></li><br/><br/>
				</openmrs:hasPrivilege>
				<openmrs:hasPrivilege privilege="Manage IPD Form - Diagnosis">
					<li><a id="diagnosis_link" href="#">IPD Diagnosis</a></li>
				</openmrs:hasPrivilege>
			</ul>
		</div>
	</div>
	<div id="right_side" style="float: right; width: 84.5%">
		<openmrs:hasPrivilege privilege="Manage IPD Form - General information">
			<div id="general_info" style="padding-bottom: 5px;">
				<b class="boxHeader">IPD general information</b>
				<div class="box"><%@include file="templates/ipd/ipdGeneralInfoForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage IPD Form - Internal Medecine">
			<div id="internal_medecine" style="padding-bottom: 5px;">
				<b class="boxHeader">Internal Medecine</b>
				<div class="box"><%@include file="templates/ipd/internalMedecineForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage IPD Form - Maternity">
			<div id="maternity" style="padding-bottom: 5px;">
				<b class="boxHeader">Maternity</b>
				<div class="box"><%@include file="templates/ipd/maternityForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage IPD Form - Neonatology">
			<div id="neonatology" style="padding-bottom: 5px;">
				<b class="boxHeader">Neonatology</b>
				<div class="box"><%@include file="templates/ipd/neonatologyForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage IPD Form - Surgery">
			<div id="surgery" style="padding-bottom: 5px;">
				<b class="boxHeader">Surgery</b>
				<div class="box"><%@include file="templates/ipd/surgeryForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage IPD Form - Pediatrics">
			<div id="pediatrics" style="padding-bottom: 5px;">
				<b class="boxHeader">Pediatrics</b>
				<div class="box"><%@include file="templates/ipd/pediatricsForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage IPD Form - Medical Acts">
			<div id="medical_acts" style="padding-bottom: 5px;">
				<b class="boxHeader">Medical Acts</b>
				<div class="box"><%@include file="templates/medicalActsForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

		<openmrs:hasPrivilege privilege="Manage IPD Form - Diagnosis">
			<input type="hidden" name="ipd_diagnosis_submit" id="ipd_diagnosis_submit" value="${ipd_diagnosis_display}"/>
			<div id="ipd_diagnosis" style="padding-bottom: 5px;">
				<b class="boxHeader">IPD Diagnosis</b>
				<div class="box"><%@include file="templates/diagnosisForm.jsp"%></div>
			</div>
		</openmrs:hasPrivilege>

	</div><div style="clear: both;"></div>
</div>

<%@ include file="/WEB-INF/template/footer.jsp"%>