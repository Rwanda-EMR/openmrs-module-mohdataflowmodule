/**
 * Auto generated file comment
 */
package org.openmrs.module.mohdataflowmodule.web.controller.opd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Patient;
import org.openmrs.Concept;
import org.openmrs.api.ConceptService;
import org.openmrs.api.context.Context;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.ParameterizableViewController;

/**
 *
 */
public class OpdGeneralInfoFormController extends ParameterizableViewController {

    /** Logger for this class and subclasses */
    protected final Log log = LogFactory.getLog(getClass());

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request,
                                                 HttpServletResponse response) throws Exception {

        Patient patient = null;
        ConceptService conceptService = Context.getConceptService();
        Concept symptoms = conceptService.getConcept(1293);

        if (request.getParameter("patientId") != null) {
            patient = Context.getPatientService().getPatient(
                    Integer.parseInt(request.getParameter("patientId")));
        }

        ModelAndView mav = new ModelAndView();

        mav.addObject("patient", patient);
        mav.addObject("patientId", patient.getPatientId());
        mav.addObject("symptoms", symptoms);
        System.out.println("Symptoms: ******************************* " + symptoms.getName().getName());
        mav.setViewName(getViewName());

        return mav;

    }
}