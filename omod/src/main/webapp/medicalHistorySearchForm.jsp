<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<style>
    .center {
    display: flex;
    justify-content: center;
    }
</style>
<div class="center">
    <table style="">
        <tr>
            <td><spring:message code="laboratorymanagement.patientId" />:</td>
            <td><b>${patient.patientIdentifier}</b></td>
        </tr>
        <tr>
            <td><spring:message code="laboratorymanagement.givenName" /> :</td>
            <td><b>${patient.givenName}</b></td>
        </tr>
        <tr>
            <td><spring:message code="laboratorymanagement.familyName" />:</td>
            <td><b>${patient.familyName}</b></td>
        </tr>
        <tr>
            <td><spring:message code="laboratorymanagement.gender" />:</td>
            <td><b><img
                    src="${pageContext.request.contextPath}/images/${patient.gender == 'M' ? 'male' : 'female'}.gif" /></b></td>
        </tr>
    </table>
</div>
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
        <c:if test="${empty dignosisList}"><b>No diagnosis history found!</b></c:if>
        <c:forEach items="${dignosisList}" var="diagnosis" varStatus="status">
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
            <th class="columnHeader"><b>Date</b></th>
            <th class="columnHeader"><b>Lab Officer</b></th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${empty labList}"><b>No Laboratory history found!</b></c:if>
        <c:forEach items="${labList}" var="lab" varStatus="status">
            <tr>
                <td class="rowValue" style="border-bottom: 1px solid cadetblue;"><b>${status.count}. </b></td>
                <td class="rowValue" style="border-bottom: 1px solid cadetblue;">${lab.labTest}</td>
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
        <c:if test="${empty actsList}"><b>No Acts history found !</b></c:if>
        <c:forEach items="${actsList}" var="act" varStatus="status">
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
        <c:if test="${empty encountersLists}"><b>No visits history found !</b></c:if>
        <c:forEach items="${encountersLists}" var="encounter" varStatus="status">
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
        <c:if test="${empty drugList}"><b>No Drug Orders history found !</b></c:if>
        <c:forEach items="${drugList}" var="order" varStatus="status">
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
        <c:if test="${empty administeredDrugLists}">No Administred drugs available found for IPD !</c:if>
        <c:forEach items="${administeredDrugLists}" var="drugsIPD" varStatus="status">
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
<%@ include file="/WEB-INF/template/footer.jsp"%>