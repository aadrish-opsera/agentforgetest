public class AccountHandler_Arun {
    
    // Method with 4 parameters
    public static String createAccountRecord(String accName, String accPhone, String accWebsite, String accIndustry, String accIndustry1,String accIndustry2) {
        Account acc = new Account(
            Name = accName,
            Phone = accPhone,
            Website = accWebsite,
            Industry = accIndustry
        );
        
        try {
            insert acc;
            return 'Account created successfully with Id: ' + acc.Id;
        } catch (Exception e) {
            return 'Error while creating account: ' + e.getMessage();
        }
    }
}