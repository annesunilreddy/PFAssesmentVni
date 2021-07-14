public class wrapResponse{
    @AuraEnabled
    public Boolean isSelected;
    @AuraEnabled
    public string name;
    @AuraEnabled
    public string description;
    @AuraEnabled
    public string date_x;
    
    public wrapResponse(boolean isSelected,String name,string description,string date_x){
        this.isSelected = isSelected;
        this.name = name;
        this.description = description;
        this.date_x = date_x;
        
    }

}