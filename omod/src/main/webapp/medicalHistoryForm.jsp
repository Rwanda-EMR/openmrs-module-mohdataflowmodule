<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="templates/medicalHistoryHeader"%>


<openmrs:require privilege="Search Patient History" otherwise="/login.htm" redirect="module/mohdataflowmodule/history.form" />


<openmrs:portlet id="findPatient" url="findPatient" parameters="size=full|postURL=searchpatient.form|showIncludeVoided=false|viewType=shortEdit|hideAddNewPatient=true" />


<%@ include file="/WEB-INF/template/footer.jsp"%>