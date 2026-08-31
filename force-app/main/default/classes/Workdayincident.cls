public with sharing class Workdayincident {
    public void test(Set<Id> setOfAccountId) {
        if (setOfAccountId == null || setOfAccountId.isEmpty()) {
            return;
        }

        List<Account> accountList = [
            SELECT Id, Name
            FROM Account
            WHERE Id IN :setOfAccountId
        ];
        Map<Id, Account> mapOfAccounts = new Map<Id, Account>(accountList);
    }
}