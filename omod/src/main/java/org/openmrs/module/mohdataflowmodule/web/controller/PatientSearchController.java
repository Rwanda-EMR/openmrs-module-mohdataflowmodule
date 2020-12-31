package org.openmrs.module.mohdataflowmodule.web.controller;

import org.openmrs.Patient;
import org.openmrs.api.context.Context;
import org.openmrs.module.mohdataflowmodule.utils.MohDataFlowUtil;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.ParameterizableViewController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PatientSearchController extends ParameterizableViewController {

   @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response){
       ModelAndView mav = new ModelAndView();

       Patient patient = null;
       if(request.getParameter("patientId") !=null) {
           patient = Context.getPatientService().getPatient(Integer.parseInt(request.getParameter("patientId")));
       }
       Integer patientId = Integer.parseInt(request.getParameter("patientId"));

           mav.addObject("labList", MohDataFlowUtil.getLabTestsList(patient, null, null));
           mav.addObject("drugList",MohDataFlowUtil.getPrescribedDrugList(patient,null,null));
           mav.addObject("dignosisList", MohDataFlowUtil.getPastDiagnosisList(
                   patient, null, null));
           mav.addObject("actsList",MohDataFlowUtil.getPastMedicalActsList(patient,null,null));
           mav.addObject("encountersLists",MohDataFlowUtil.getPatientVisitsEncounters(patient,null,null,null));
           mav.addObject("administeredDrugLists",MohDataFlowUtil.getPastAdminstredDrugList(patient,null,null));
           mav.addObject("patient",Context.getPatientService().getPatient(patientId));
       mav.setViewName(getViewName());
        return mav;
    }
}