import { LightningElement ,wire,track } from 'lwc';
import loadData from '@salesforce/apex/CalendariFicServiceClass.getHolidayDetails';
import updateUserRecord  from '@salesforce/apex/CalendariFicServiceClass.updateUserRecord'; 
const columns = [
    { label: 'Name', fieldName: 'name' },
    { label: 'Description', fieldName: 'description', type: 'text' },
    { label: 'Date', fieldName: 'date_x', type: 'text' },
];
export default class FetchHoliday extends LightningElement {
    columns = columns;

   @wire(loadData) holidaysList;  
   updateUserRecords(){  
    var selectedHoliday='';
    var selectedRecords =  
     this.template.querySelector("lightning-datatable").getSelectedRows();  
     var jsonobj = JSON.stringify(selectedRecords);
     jsonobj = JSON.parse(jsonobj);
     if(selectedRecords.length==0){
         alert('please select atleast one record for processing');
     }
     if(selectedRecords.length>1){
        alert('please select only one record for processing');
    }else{
        var selectedHoliday = selectedRecords[0];
    }
     
     updateUserRecord({selectedRow: selectedHoliday.name})  
    .then(result=>{  
      alert(JSON.stringify(selectedRecords));
    })  
    .catch(error=>{  
      alert('Cloud not delete'+JSON.stringify(error));  
    })  
  }  
    

}