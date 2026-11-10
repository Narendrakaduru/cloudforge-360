public with sharing class SoqlLoopViolation {

    public static List<Account> getAccounts(List<Id> accountIds) {
        List<Account> results = new List<Account>();

        for (Id accountId : accountIds) {
            Account acc = [
                SELECT Id, Name
                FROM Account
                WHERE Id = :accountId
                LIMIT 1
            ];

            results.add(acc);
        }

        return results;
    }
}