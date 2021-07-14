@isTest

Public Class CalendariFicServiceClassTest{

     @isTest static void validateGetHolidayDetails(){
          Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
          List<wrapResponse> lstResponse =  CalendariFicServiceClass.getHolidayDetails();
          CalendariFicServiceClass.updateUserRecord('new eve');
    }
    
    
    
   
}