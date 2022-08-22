public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName , String postalCode) {
        List<Contact> cts = [Select LastName,MailingPostalCode
        From Contact
        WHERE (LastName=:lastName AND MailingPostalCode=:postalCode)];

        return cts;
    }
}