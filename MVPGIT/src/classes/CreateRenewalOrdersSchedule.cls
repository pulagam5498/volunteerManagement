global class CreateRenewalOrdersSchedule implements Schedulable {
    global void execute(SchedulableContext sc)
    {
        CreateRenewalOrdersBatch b = new CreateRenewalOrdersBatch();
        Database.executeBatch(b, 10);
    }
}