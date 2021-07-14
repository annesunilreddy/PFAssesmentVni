# Assessment

In this project, a UI is built with LWC(demolwc) and is exposed in a tab named **Load Holiday** and users can select their favorite holiday from the the list of public holidays in Canada and their choice is saved in a field named **Favorite Holiday** at the user level.


**CalendariFicServiceClass.cls** and **wrapResponse.cls**  are Apex class and wrapper class files respectively and consists of code to make a callout to the calendarific Holiday API using Apex.

**CalendariFicServiceClassTest.cls** and **MockHttpResponseGenerator.cls** are test classes and 100% code coverage is achieved for all the apex classess.

**metadataPackage_1626227918042** consists of all the necessary metadata to deploy the solution to a new org.
