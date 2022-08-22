public class ContactAndLeadSearch {

    public static List<List<sObject>> searchContactsAndLeads(String stringToMatch) {

        List<List<sObject>> searchList = [Find :stringToMatch IN ALL FIELDS 
        RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)
        ];

        return searchList;
    }
}