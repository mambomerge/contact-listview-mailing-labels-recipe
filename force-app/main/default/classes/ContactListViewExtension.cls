public with sharing class ContactListViewExtension {
  public String selectedRecordsString {get;set;}

  public ContactListViewExtension(ApexPages.StandardSetController setController) {
    selectedRecordsString = JSON.serialize(queryRecords(new Map<Id,sObject>(setController.getSelected()).keySet()));
  }

  static List<Contact> queryRecords(Set<Id> ids){
    List<Contact> contacts = [
      SELECT Id, Salutation, FirstName, LastName, Title, Account.Name,
        MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry
      FROM Contact
      WHERE Id IN: ids
      ORDER BY Name
    ];
    system.debug(contacts);
    return contacts;
  }
}
