@IsTest
private class CloudForgeHealthCheckTest {

    @IsTest
    static void testGetStatus() {
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