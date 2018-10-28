global with sharing class WebServiceExecuteBatches {
    WebService static string ExecuteRatifyLogNoteBatchProcess()
    {
        RatifyLogNotesBatch b = new RatifyLogNotesBatch();
        Id batchId = Database.executeBatch(b, 5);
        return batchId;
    }
}