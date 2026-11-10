/**
 * @description Tests the CloudForge 360 health-check service.
 */
@IsTest
private class CloudForgeHealthCheckTest {

    /**
     * @description Verifies the expected health-check response.
     */
    @IsTest
    static void testGetStatus() {
        User currentUser = new User(
            Id = UserInfo.getUserId()
        );

        System.runAs(currentUser) {
            Test.startTest();
            String result = CloudForgeHealthCheck.getStatus();
            Test.stopTest();

            System.assertEquals(
                'CloudForge 360 is operational',
                result,
                'Health check should return the expected status'
            );
        }
    }
}