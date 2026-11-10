/**
 * @description Demonstrates bulk-safe Account retrieval.
 */
public with sharing class SoqlLoopViolation {

    /**
     * @description Retrieves Accounts matching the supplied IDs.
     * @param accountIds IDs of the Accounts to retrieve.
     * @return Matching Account records.
     */
    public static List<Account> getAccounts(List<Id> accountIds) {
        if (accountIds == null || accountIds.isEmpty()) {
            return new List<Account>();
        }

        return [
            SELECT Id, Name
            FROM Account
            WHERE Id IN :accountIds
            WITH USER_MODE
        ];
    }
}