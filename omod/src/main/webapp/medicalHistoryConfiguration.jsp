<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="templates/medicalHistoryHeader"%>
<openmrs:portlet url="globalProperties" parameters="title=${title}|propertyPrefix=mohdataflowmodule.|excludePrefix=mohdataflowmodule.started|hidePrefix=true"/>
<%@ include file="/WEB-INF/template/footer.jsp"%>