Public Class CalendariFicServiceClass{
    @AuraEnabled(cacheable=true)
    public static List<wrapResponse> getHolidayDetails(){
        List<wrapResponse>  lstWrapResponse = new List<wrapResponse>();
        String endPoint = 'https://calendarific.com/api/v2/holidays?country=CA&year=2021&api_key=a96a55abdf43272e04144b2be228f9fefadb5355';
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint(endPoint);
        HttpResponse res = h.send(req);


        Map<String, Object> m = (Map<String, Object>) JSON.deserializeUntyped(res.getbody());
        object response = m.get('response');
        Map < String, Object > m1 = ( Map < String, Object > )response;
        for ( Object obj : ( List< Object > )m1.get('holidays') ) {
            Map <String, Object > mobj = ( Map < String, Object > )obj;
            String description  = String.ValueOf(mobj.get('description'));
            String name  = String.ValueOf(mobj.get('name'));
            object  dateVal = mobj.get('date') ;
            Map < String, Object > mapDate = ( Map < String, Object > )dateVal;
            String dateValstr = String.ValueOf(mapDate.get('iso'));
            lstWrapResponse.add(new wrapResponse(false,name,description,dateValstr));
        }
        return lstWrapResponse;

  }
  @AuraEnabled
  public Static void updateUserRecord(String selectedRow){
      user obj = new user(id= userinfo.getUserId());
      
      obj.Favorite_Holiday__c  = selectedRow;
      update obj;
  
  }
        
}