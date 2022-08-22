//Add Account and Related Contact
Account acct = new Account(
    Name='SFDC Computing',
    Phone='012841',
    NumberOfEmolyess=50,
    BillingCity='San Francisco'
);

insert acct;

//Once the Account is Inserted, the sObj will be populated with an ID , Get this ID

ID acctID = acct.ID;

//Add Contact to this Account 
Contact con = new Contact(
    FirstName='Carol',
    LastName='Ruiz',
    Phone='012941',
    Department='Wingo',
    AccountId=:acctID
);

insert con;

// Add account with no contact
Account acct2 = new Account(
    Name='The SFDC Query Man',
    Phone='(310)555-1213',
    NumberOfEmployees=50,
    BillingCity='Los Angeles',
    Description='Expert in wing technologies.');
insert acct2;