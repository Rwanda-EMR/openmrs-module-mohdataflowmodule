/**
 *
 */
package org.openmrs.module.mohdataflowmodule.utils;

import java.util.Date;

import org.openmrs.Obs;
import org.openmrs.Person;
import org.openmrs.api.context.Context;

/**
 * @author Yves GAKUBA
 *
 */
public class SimplifiedObs {

    private Date obsDatetime;
    private String value;
    private Person provider;
    private String labTest;

    public SimplifiedObs(Obs o) {
        this.obsDatetime = o.getObsDatetime();
        this.value = o.getValueAsString(Context.getLocale());
        this.setProvider(MohDataFlowUtil.getProviderFromEncounter(o.getEncounter()).getPerson());
        this.labTest = o.getConcept().getName().getName();
    }

    public Date getObsDatetime() {
        return obsDatetime;
    }

    public void setObsDatetime(Date obsDatetime) {
        this.obsDatetime = obsDatetime;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    /**
     * @param provider
     *            the provider to set
     */
    public void setProvider(Person provider) {
        this.provider = provider;
    }

    /**
     * @return the provider
     */
    public Person getProvider() {
        return provider;
    }

    /**
     * @return the labTest
     */
    public String getLabTest() {
        return labTest;
    }

    /**
     * @param labTest the labTest to set
     */
    public void setLabTest(String labTest) {
        this.labTest = labTest;
    }
}