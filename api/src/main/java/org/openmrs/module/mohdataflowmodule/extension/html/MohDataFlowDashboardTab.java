/**
 *
 */
package org.openmrs.module.mohdataflowmodule.extension.html;

import org.openmrs.module.web.extension.PatientDashboardTabExt;

/**
 * @author Kamonyo
 *
 */
public class MohDataFlowDashboardTab extends PatientDashboardTabExt {

    @Override
    public String getPortletUrl() {

        return "mohdataflowpatient";
    }

    @Override
    public String getRequiredPrivilege() {

        return "View HMIS Data Flow";
    }

    @Override
    public String getTabId() {

        return "mohdataflowpatient";
    }

    @Override
    public String getTabName() {

        return "mohdataflowmodule.dashboard";
    }

}