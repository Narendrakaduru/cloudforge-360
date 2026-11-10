
public with sharing class SoqlLoopViolation {

    public static List<Account> getAccounts(List<Id> accountIds) {
        if (accountIds == null || accountIds.isEmpty()) {
            return new List<Account>();
        }

        return [
            SELECT Id, Name
            FROM Account
            WHERE Id IN :accountIds
        ];
    }
}