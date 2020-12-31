/**
 *
 */
package org.openmrs.module.mohdataflowmodule.extension.html;

import org.openmrs.module.web.extension.LinkExt;

/**
 * @author Yves GAKUBA
 *
 */
public class MohDataFlowGutterLink extends LinkExt {

    /**
     * (non-Javadoc)
     *
     * @see org.openmrs.module.web.extension.LinkExt#getLabel()
     */
    @Override
    public String getLabel() {
        return "mohdataflowmodule.MedicalHistory";
    }

    /**
     * (non-Javadoc)
     *
     * @see org.openmrs.module.web.extension.LinkExt#getRequiredPrivilege()
     */
    @Override
    public String getRequiredPrivilege() {
        return "Search Patient History";
    }

    /**
     * (non-Javadoc)
     *
     * @see org.openmrs.module.web.extension.LinkExt#getUrl()
     */
    @Override
    public String getUrl() {
        return "module/mohdataflowmodule/history.form";
    }

}