<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<openmrs:htmlInclude file="/scripts/calendar/calendar.js" />

<script language="javascript" type="text/javascript">
var $k= jQuery.noConflict();
</script>

<h2>Manage Patients Discharge</h2><br/>

<b class="boxHeader">Patient Discharge Form</b>
<div class="box">
	<table>
		<tr>
			<td width="30%">Patient</td>
			<td><openmrs:fieldGen type="org.openmrs.Patient"
				formFieldName="patientId" val="${patient}" /></td>
		</tr>
		<tr>
			<td width="30%">When?</td>
			<td>
				<table>
					<tr>
						<td>On Or After <input type="text" size="11" value="<openmrs:formatDate date='${todayDate}' type="string"/>""
							name="startDate" onclick="showCalendar(this);" /></td>
					</tr>
					<tr>
						<td>On Or Before <input type="text" size="11" value="<openmrs:formatDate date='${todayDate}' type="string"/>""
							name="endDate" onclick="showCalendar(this)" /></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td width="20%"></td>
			<td>
				<form action="mohdataflowdischarge.form" method="get">
					<input type="submit" value="Search" />
				</form>
			</td>
		</tr>		
	</table>
</div>
<br>
<br>
<form action="mohdataflowdischarge.form" method="get">
	<div><b class="boxHeader">List of encounters <input name="print"
		type="submit" value="PDF Print" /></b>
		<div class="box">
	
		<table width="99%">
			<tr>
				<td></td>
				<td>Patient</td>
				<td>Gender</td>
				<td>Encounter type</td>
				<td>Encounter date</td>
				<td>Obs</td>
				<td>Date</td>
			</tr>
		
			<c:forEach items="1,2,3,4" var="enc">
				<tr>
					<td class="rowValue"><input type="checkbox"/></td>
					<td class="rowValue">${enc}</td>
					<td class="rowValue">${enc}</td>
					<td class="rowValue">${enc}</td>
					<td class="rowValue">${enc}</td>
					<td class="rowValue">
						<c:forEach items="1,2,3,4" var="obs">
							${obs}<br/>
						</c:forEach>
					</td>
					<td class="rowValue">${enc}</td>
				</tr>		
			</c:forEach>
		</table>
		</div>
	</div>
</form>

<%@ include file="/WEB-INF/template/footer.jsp"%>