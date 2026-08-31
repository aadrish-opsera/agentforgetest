public with sharing class WorkdayIssueReported {
    public void test(Set<Id> setOfAccountId) {
        if (setOfAccountId == null || setOfAccountId.isEmpty()) {
            return;
        }

        Map<Id, Account> mapOfAccounts = new Map<Id, Account>([
            SELECT Id, Name
            FROM Account
            WHERE Id IN :setOfAccountId
        ]);
    }
}