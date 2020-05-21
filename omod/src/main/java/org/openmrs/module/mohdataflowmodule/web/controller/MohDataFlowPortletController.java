/**
 *
 */
package org.openmrs.module.mohdataflowmodule.web.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Patient;
import org.openmrs.api.context.Context;
import org.openmrs.module.mohdataflowmodule.utils.MohDataFlowUtil;
import org.openmrs.web.controller.PortletController;

/**
 * @author Kamonyo
 *
 *         This class will never accept any LogFactory display inside the Tomcat
 *         stdout file. Don't even think about implementing it in here.
 */
public class MohDataFlowPortletController extends PortletController {
    private Log log = LogFactory.getLog(this.getClass());

    @Override
    protected void populateModel(HttpServletRequest request,
                                 Map<String, Object> model) {
        Patient patient = null;
        if (request.getParameter("patientId") != null) {
            patient = Context.getPatientService().getPatient(
                    Integer.parseInt(request.getParameter("patientId")));
        }

        MohDataFlowUtil.getPrescribedDrugList(patient,null,null);
        /**
         * ______________Loading history__________________
         */

        try {
         /*   model.put("labList", MohDataFlowUtil.getLabTestsList(patient, null,
                    null));*/
            model.put("labList", MohDataFlowUtil.getLabTestsList(patient, null,
                    null));
        } catch (Exception e) {
            log.error(">>>>>>>>>>> MOH-DATA FLOW >> An error occured when "
                    + "trying to load patient's LAB history on the dashboard");
        }
        try {
            model.put("drugList", MohDataFlowUtil.getPrescribedDrugList(patient, null,
                    null));
        } catch (Exception e) {
            log.error(">>>>>>>>>>> MOH-DATA FLOW >> An error occured when "
                    + "trying to load patient's DRUG history on the dashboard");
        }
        try {
            model.put("dignosisList", MohDataFlowUtil.getPastDiagnosisList(
                    patient, null, null));

        } catch (Exception e) {
            log.error(">>>>>>>>>>> MOH-DATA FLOW >> An error occured when "
                    + "trying to load patient's "
                    + "DIAGNOSIS history on the dashboard");
        }

        super.populateModel(request, model);
    }
}