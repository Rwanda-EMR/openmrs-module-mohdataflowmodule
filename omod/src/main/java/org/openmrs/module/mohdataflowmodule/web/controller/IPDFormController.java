/**
 *
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

/**
 * @author Kamonyo Mugabo
 *
 */

public class IPDFormController extends ParameterizableViewController {

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

        mav.addObject("patient", patient);
        mav.addObject("patientId", patient.getPatientId());
        mav.addObject("ipd_diagnosis_display", "display");
        mav.addObject("ipd_acts_display", "display");

        mav.setViewName(getViewName());

        return mav;

    }
}