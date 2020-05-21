/**
 *
 */
package org.openmrs.module.mohdataflowmodule.utils;

import java.math.BigDecimal;
import java.util.*;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Concept;
import org.openmrs.ConceptAnswer;
import org.openmrs.DrugOrder;
import org.openmrs.Encounter;
import org.openmrs.EncounterType;
import org.openmrs.Location;
import org.openmrs.Obs;
import org.openmrs.Patient;
import org.openmrs.Person;
import org.openmrs.User;
import org.openmrs.api.context.Context;
import org.openmrs.module.pharmacymanagement.DrugOrderPrescription;
import org.openmrs.module.pharmacymanagement.service.DrugOrderService;

/**
 * @author Kamonyo Mugabo
 *
 */
public class MohDataFlowUtil {

    /** Logger for this class and subclasses */
    private static Log log = LogFactory.getLog(MohDataFlowUtil.class);

    /**
     * Loads drugs history
     *
     * @param patient
     *            the patient to be matched
     * @param before
     *            the date before which we are searching
     * @param conditions
     *            any other conditions that will be matched by the lookup
     * @return drugs the list of found drugs for the given patient
     */
    public static List<DrugOrderPrescription> getPrescribedDrugList(Patient patient,Date before,Object[] conditions){
        DrugOrderService service = Context.getService(DrugOrderService.class);
        List<DrugOrderPrescription> dopList = service.getDOPByPatientId(patient);
        return dopList;
    }

     /* public static List<DrugOrder> getDrugsList(Patient patient, Date before,
                                               Object[] conditions) {
      DrugOrderService service = Context.getService(DrugOrderService.class);
      Collection<DrugOrderPrescription> dopList = service.getDOPByPatientId(patient);
      List<Integer> orderIdAndDisQuantity=new ArrayList<Integer>();
      for (DrugOrderPrescription dop:dopList) {
          orderIdAndDisQuantity.add(dop.getOrderId().getOrderId());
      }

       //if (MohDataFlowUtil.getPrescribedDrugList(patient, null, null).size()>0) {

        List<DrugOrder> drugs = Context.getOrderService()
                .getDrugOrdersByPatient(patient);
        List<Integer> drolist = new ArrayList<Integer>();
        for(DrugOrder dro : drugs){
            drolist.add(dro.getOrderId());
            }
        int i,j;
        for(i=0;i<dopList.size();i++){
            for(j=0;j<orderIdAndDisQuantity.size();j++){
              if(drolist==orderIdAndDisQuantity)
                return drugs;
              else
                  return  null;
            }
        }

   // }
    //else
        //return null;
          return null;
      }*/

    /**
     * Loads diagnosis history
     *
     * @param patient
     *            the patient to be matched
     * @param before
     *            the date before which we are searching
     * @param conditions
     *            any other conditions that will be matched by the lookup
     * @return diagnoses the list of found diagnoses for the given patient
     */
    public static List<SimplifiedObs> getPastDiagnosisList(Patient patient,
                                                           Date before, Object[] conditions) {

        List<SimplifiedObs> diagnoses = new ArrayList<SimplifiedObs>();

        List<Concept> concList = new ArrayList<Concept>();
        // outpatient diagnosis
        concList.add(Context.getConceptService().getConcept(105502));
        // hospitalized diagnosis
        concList.add(Context.getConceptService().getConcept(2134));
        // previous diagnosis
        concList.add(Context.getConceptService().getConcept(992));

        for (Concept c : concList) {
            diagnoses.addAll(transformObsValueList(Context.getObsService()
                    .getObservationsByPersonAndConcept(patient, c)));
        }
        return diagnoses;
    }

    /**
     * Loads lab tests history
     *
     * @param patient
     *            the patient to be matched
     * @param before
     *            the date before which we are searching
     * @param conditions
     *            any other conditions that will be matched by the lookup
     * @return tests the list of found tests for the given patient
     */
    public static List<SimplifiedObs> getLabTestsList(Patient patient,
                                                      Date before, Object[] conditions) {

        List<Obs> tests = new ArrayList<Obs>();
        Person person = Context.getPersonService().getPerson(
                patient.getPatientId());

        List<Obs> obsList = Context.getObsService().getObservationsByPerson(
                person);
        // <<<<<<< .mine
        // for (Encounter enc : getPatientEncounters(patient, Context
        // .getLocationService().getDefaultLocation(), null, before)) {
        // for (Obs obs : enc.getObs()) {
        // if (obs.getConcept().getConceptId().intValue() == 1271
        // || obs.getConcept().getConceptId().intValue() == 1337) {
        // tests.add(obs);
        // }
        // =======
        for (Obs o : obsList) {
            if (o.getOrder() != null) {
                if (o.getOrder().getOrderType().getOrderTypeId().intValue() == 1)// Context.getAdministrationService().getGlobalProperty("orderTypeId")
                    tests.add(o);
            }
        }
        return transformObsValueListLabTest(tests);
    }

    /**
     * Gets the list of Obs to be cast into simplified Obs
     *
     * @param obsList
     *            the list of Obs to be cast into simplified Obs
     * @return simplifiedObsList the simplified list of obs
     */
    private static List<SimplifiedObs> transformObsValueList(List<Obs> obsList) {
        List<SimplifiedObs> simplifiedObsList = new ArrayList<SimplifiedObs>();
        int count = 0;

        for (Obs o : obsList) {
            simplifiedObsList.add(new SimplifiedObs(o));
            if (count == 4)
                break;
            else
                count += 1;
        }

        return simplifiedObsList;
    }

    private static List<SimplifiedObs> transformObsValueListLabTest(List<Obs> obsList) {
        List<SimplifiedObs> simplifiedObsList = new ArrayList<SimplifiedObs>();
        int count = 0;

        for (Obs o : obsList) {
            simplifiedObsList.add(new SimplifiedObs(o));
            if (count == 100)
                break;
            else
                count += 1;
        }

        return simplifiedObsList;
    }

    /**
     * Gets the Names and ConceptIds of the matched conceptId answers
     *
     * @param codedConceptQuestionId
     *            the ConceptId to be matched as a question
     * @return the Map of Names and ConceptIds of the matched concepts
     */
    public static HashMap<Integer, String> getConceptCodedOptions(
            Integer codedConceptQuestionId) {
        HashMap<Integer, String> answersMap = new HashMap<Integer, String>();
        Concept questionConcept = Context.getConceptService().getConcept(
                Integer.valueOf(codedConceptQuestionId));
        if (questionConcept != null) {
            for (ConceptAnswer ca : questionConcept.getAnswers()) {
                answersMap.put(ca.getAnswerConcept().getConceptId(), ca
                        .getAnswerConcept().getDisplayString());
            }
        }
        return answersMap;
    }

    /**
     * Gets the Encounters for a given Patient.
     *
     * @param who
     * @param loc
     * @param fromDate
     * @param toDate
     * @return
     */
    private static List<Encounter> getPatientEncounters(Patient who,
                                                        Location loc, Date fromDate, Date toDate) {

        List<EncounterType> encounterTypes = Context.getEncounterService()
                .getAllEncounterTypes();
        List<Encounter> encounters = Context.getEncounterService()
                .getEncounters(who, loc, fromDate, toDate, null,
                        encounterTypes, null, false);
        return encounters;
    }

    /**
     * Gets patient's vital signs on a given period
     *
     * @param patient
     *            the patient to whom the vital signs belong
     * @param fromDate
     *            the start date of the period
     * @param toDate
     *            the end date of the period
     * @return the list of Obs that contains those vital signs
     */
    public static List<Obs> getPatientVitalSigns(Patient patient,
                                                 Date fromDate, Date toDate) {
        List<Encounter> encList = getPatientEncounters(patient, Context
                .getLocationService().getDefaultLocation(), fromDate, toDate);
        List<Person> people = new ArrayList<Person>();
        people.add(Context.getPersonService().getPerson(patient.getPersonId()));
        List<Concept> vitalSigns = new ArrayList<Concept>();
        List<Concept> answers = new ArrayList<Concept>();

        answers.add(Context.getConceptService().getConcept(ConceptConstants.SYSTOLIC_BLOOD_PRESSURE));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.DIASTOLIC_BLOOD_PRESSURE));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.PULSE));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.TEMPERATURE_C));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.WEIGHT_KG));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.HEIGHT_CM));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.BLOOD_OXYGEN_SATURATION));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.HEAD_CIRCUMFERENCE));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.KARNOFSKY_PERFORMANCE_SCORE));
        answers.add(Context.getConceptService().getConcept(ConceptConstants.RESPIRATORY_RATE));
        vitalSigns.add(Context.getConceptService().getConcept(ConceptConstants.VITAL_SIGNS));

        List<Obs> results = Context.getObsService().getObservations(people,
                encList, vitalSigns, answers, null, null, null, null, null,
                fromDate, toDate, false);
        return results;
    }

    /**
     * Auto generated method comment
     *
     * @param obsDatetime
     *            The obs datetime
     * @param loc
     *            The location
     * @param p
     *            The Patient
     * @param c
     *            The concept concerned
     * @param obsValue
     *            The value of the obs
     * @param obsValueType
     *            The type of obs value - 1 Numeric; 2 Datetime; 3 Text; 4 Coded
     * @return
     */
    public static Obs createObservation(Date obsDatetime, Location loc,
                                        Person p, Concept c, Object obsValue, int obsValueType) {
        Obs o = new Obs();

        try {
            o.setDateCreated(new Date());
            o.setObsDatetime(obsDatetime);
            o.setLocation(loc);
            o.setPerson(p);
            o.setConcept(c);

            if (obsValueType == 1) {
                o.setValueNumeric((Double) obsValue);
            } else if (obsValueType == 2) {
                o.setValueDatetime((Date) obsValue);
            } else if (obsValueType == 3) {
                o.setValueText("" + obsValue);
            } else if (obsValueType == 4) {
                o.setValueCoded((Concept) obsValue);
            }
        } catch (Exception e) {
            System.out
                    .println("An Error occured when trying to create an observation :\n");
            e.printStackTrace();
            o = null;
        }
        return o;
    }

    /**
     * Auto generated method comment
     *
     * @param encounterDate
     *            Date of the encounter
     * @param provider
     *            Person
     * @param location
     *            Location
     * @param patient
     *            Patient
     * @param encounterType
     *            The type of that encounter
     * @param obsList
     *            The list of obs related to that encounter
     * @return
     */
    public static Encounter createEncounter(Date encounterDate,
                                            Person provider, Location location, Patient patient,
                                            EncounterType encounterType, List<Obs> obsList) {
        Encounter enc = new Encounter();

        try {
            enc.setDateCreated(new Date());
            enc.setEncounterDatetime(encounterDate);
            enc.setProvider(provider);
            enc.setLocation(location);
            enc.setPatient(patient);
            enc.setEncounterType(encounterType);

            for (Obs o : obsList) {
                if (null != o)
                    enc.addObs(o);
                else
                    System.out
                            .println("An observation has not been saved because it was null.");
            }
        } catch (Exception e) {
            System.out
                    .println("An Error occured when trying to create an encounter :\n");
            e.printStackTrace();
            enc = null;
        }
        return enc;
    }

    /**
     * Creates OBSERVATION...
     *
     * @param obsDatetime
     *            Obs Date time...
     * @param location
     *            Encounter Location
     * @param person
     *            Encounter Patient
     * @param dateCreated
     *            Encounter creation date
     * @param concept
     *            Obs Concept
     * @return obs Obs created
     */
    public static Obs createObsGr(Date obsDatetime, Location location,
                                  Person person, Date dateCreated, Concept concept) {
        Obs obs = new Obs();

        obs.setObsDatetime(obsDatetime);
        obs.setPerson(person);
        obs.setLocation(location);
        obs.setDateCreated(new Date());
        obs.setCreator(Context.getAuthenticatedUser());
        obs.setConcept(concept);

        return obs;
    }

    public static void printOutTransferOutForm(){
        //TODO: this part is for TransferOut Printout

    }
}