package org.openmrs.module.mohdataflowmodule.web.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.ParameterizableViewController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MedicalHistoryController extends ParameterizableViewController {

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response){
        ModelAndView mav = new ModelAndView();

        mav.setViewName(getViewName());
        return mav;
    }
}
