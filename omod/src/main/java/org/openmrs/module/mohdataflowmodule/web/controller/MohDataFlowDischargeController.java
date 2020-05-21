/**
 *
 */
package org.openmrs.module.mohdataflowmodule.web.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.ParameterizableViewController;

/**
 * @author Kamonyo
 *
 */
public class MohDataFlowDischargeController extends
        ParameterizableViewController {

    /** Logger for this class and subclasses */
    protected final Log log = LogFactory.getLog(getClass());

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request,
                                                 HttpServletResponse response) throws Exception {

        ModelAndView mav = new ModelAndView();
        mav.addObject("todayDate", new Date());
        mav.setViewName(getViewName());

        return mav;

    }
}