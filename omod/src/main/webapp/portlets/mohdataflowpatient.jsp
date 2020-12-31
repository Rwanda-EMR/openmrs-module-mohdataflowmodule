<%@ include file="/WEB-INF/template/include.jsp"%>
<openmrs:require privilege="View HMIS Data Flow" otherwise="/login.htm" redirect="/patientDashboard.form" />

<span class="boxHeader"><spring:message	code="mohdataflowmodule.diagnosis" /></span>
<div class="box">
	<table width="100%">
		<thead>
		<tr>
			<th class="columnHeader"><b>#</b></th>
			<th class="columnHeader"><b>Diagnosis</b></th>
			<th class="columnHeader"><b>Clinician</b></th>
			<th class="columnHeader"><b>Date</b></th>
		</tr>
		</thead>
		<tbody>
		<c:if test="${empty model.dignosisList}"><b>No diagnosis history found!</b></c:if>
		<c:forEach items="${model.dignosisList}" var="diagnosis" varStatus="status">
			<tr>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><b>${status.count}.</b></td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${diagnosis.value}</td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${diagnosis.provider.personName}</td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><openmrs:formatDate date="${diagnosis.obsDatetime}" type="medium" /></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<br/>
<span class="boxHeader"><spring:message	code="mohdataflowmodule.laborder" /></span>
<div class="box">
	<table width="100%">
		<thead>
		<tr>
			<th class="columnHeader"><b>#</b></th>
			<th class="columnHeader"><b>Lab Test</b></th>
			<openmrs:hasPrivilege privilege="Medical View Laboratory ValueHeader">
				<th class="columnHeader"><b>Value</b></th>
			</openmrs:hasPrivilege>
			<th class="columnHeader"><b>Date</b></th>
			<th class="columnHeader"><b>Lab Officer</b></th>
		</tr>
		</thead>
		<tbody>
		<c:if test="${empty model.labList}"><b>No Laboratory history found!</b></c:if>
		<c:forEach items="${model.labList}" var="lab" varStatus="status">
			<tr>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><b>${status.count}. </b></td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${lab.labTest}</td>
				<openmrs:hasPrivilege privilege="Medical View Laboratory Value">
					<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${lab.value}</td>
				</openmrs:hasPrivilege>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"> <openmrs:formatDate date="${lab.obsDatetime}" type="medium" /></td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${lab.provider.familyName} ${lab.provider.givenName}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<br/>

<span class="boxHeader"><spring:message
		code="mohdataflowmodule.acts" /></span>
<div class="box">
	<table width="100%">
		<tr>
			<th class="columnHeader"><b>#</b></th>
			<th class="columnHeader">Name</th>
			<th class="columnHeader">Date</th>
		</tr>
		<c:if test="${empty model.actsList}"><b>No Acts history found !</b></c:if>
		<c:forEach items="${model.actsList}" var="act" varStatus="status">
			<tr>
				<c:if test="${!empty act.value}">
					<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><b>${status.count}.</b></td>
					<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${act.value}</td>
					<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><openmrs:formatDate date="${act.obsDatetime}" type="medium" /></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
</div>
</br>
<span class="boxHeader"><spring:message
		code="mohdataflowmodule.visits" /></span>
<div class="box">
	<table width="100%">
		<tr>
			<th class="columnHeader"><b>#</b></th>
			<th class="columnHeader">Form Name</th>
			<th class="columnHeader">Encounter Type</th>
			<th class="columnHeader">Date</th>
		</tr>
		<c:if test="${empty model.encountersLists}"><b>No visits history found !</b></c:if>
		<c:forEach items="${model.encountersLists}" var="encounter" varStatus="status">
			<tr>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><b>${status.count}.</b></td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${encounter.form.name}</td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${encounter.encounterType.name}</td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><openmrs:formatDate date="${encounter.encounterDatetime}" type="medium" /></td>
			</tr>
		</c:forEach>
	</table>
</div>
</br>
<span class="boxHeader"><spring:message
		code="mohdataflowmodule.drugorder" /></span>
<div class="box">
	<table width="100%">
		<tr>
			<th class="columnHeader"><b>#</b></th>
			<th class="columnHeader">Drug orders</th>
			<th class="columnHeader">Quantity</th>
			<th class="columnHeader">Date</th>
		</tr>
		<c:if test="${empty model.drugList}"><b>No Drug Orders history found !</b></c:if>
		<c:forEach items="${model.drugList}" var="order" varStatus="status">
			<tr>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><b>${status.count}.</b></td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${order.drugproductId.drugId.name}</td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${order.quantity}</td>
				<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><openmrs:formatDate date="${order.date}" type="medium" /></td>
			</tr>
		</c:forEach>
	</table>
</div>
</br>

<span class="boxHeader"><spring:message
		code="mohdataflowmodule.drugAdmin" /></span>
<div class="box">
	<table width="100%">
		<tr>
			<th class="columnHeader"><b>#</b></th>
			<th class="columnHeader">Name</th>
			<th class="columnHeader">Date</th>
		</tr>
		<c:if test="${empty model.administeredDrugLists}">No Administred drugs available found for IPD !</c:if>
		<c:forEach items="${model.administeredDrugLists}" var="drugsIPD" varStatus="status">
			<tr>
				<c:if test="${!empty drugsIPD.value}">
					<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><b>${status.count}.</b></td>
					<td class="rowValue" style="border-bottom: 1px solid cadetblue;">${drugsIPD.value}</td>
					<td class="rowValue" style="border-bottom: 1px solid cadetblue;"><openmrs:formatDate date="${drugsIPD.obsDatetime}" type="medium" /></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
</div>