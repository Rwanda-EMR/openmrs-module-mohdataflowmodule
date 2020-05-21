/**
 * Auto generated file comment
 */
package org.openmrs.module.mohdataflowmodule.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Patient;
import org.openmrs.api.context.Context;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.ParameterizableViewController;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 */
public class MedicalActsFormController extends ParameterizableViewController {

    /** Logger for this class and subclasses */
    protected final Log log = LogFactory.getLog(getClass());

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request,
                                                 HttpServletResponse response) throws Exception {

        Patient patient = null;
        if (request.getParameter("patientId") != null) {
            patient = Context.getPatientService().getPatient(
                    Integer.parseInt(request.getParameter("patientId")));
        }

        ModelAndView mav = new ModelAndView();

        if(request.getParameter("opd_acts_submit") != null
                && request.getParameter("opd_acts_submit").equals("display"))
            mav = new ModelAndView(new RedirectView("outpatient.form"));

        if(request.getParameter("ipd_acts_submit") != null
                && request.getParameter("ipd_acts_submit").equals("display"))
            mav = new ModelAndView(new RedirectView("inpatient.form"));

        mav.addObject("patient", patient);
        mav.addObject("patientId", patient.getPatientId());

        return mav;

    }
}