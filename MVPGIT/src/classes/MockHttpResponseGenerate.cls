@isTest
global class MockHttpResponseGenerate implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest req) {
        // Optionally, only send a mock response for a specific endpoint
        // and method.
      //  System.assertEquals('http://deveproveapi.advanc-ed.org:8101/users-api/v1/unsecured/build-version', req.getEndpoint());
       
        
        // Create a fake response
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"id":"5433243496585949","Name":"Test","Volunteer?":"true","Email":"test@gmail.com","FirstName":"Test","LastName":"Class"}');
        res.setStatusCode(200);
        return res;
    }
}