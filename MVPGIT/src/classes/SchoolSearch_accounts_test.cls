@isTest
public with sharing class SchoolSearch_accounts_test {

	@testSetup
	static void doSetup(){
		insert new Account(Name = 'Test Account');
	}

	@isTest
	static void testSearch() {
		System.RestRequest rr = new System.RestRequest();
		rr.requestBody = Blob.valueOf('{"whereClause":" Id = null"}');
		RestContext.request = rr;
		SchoolSearch_accounts.do_search();
	}

	@isTest
	static void testSearch_error() {

		Boolean hasError = false;

		try{
			System.RestRequest rr = new System.RestRequest();
			rr.requestBody = Blob.valueOf('{"whereClause":"invalid soql"}');
			RestContext.request = rr;
			SchoolSearch_accounts.do_search();
		}
		catch(SchoolSearch_accounts.SchoolSearchException e){
			hasError = true;
		}

		System.assert(hasError);
	}

	@isTest
	static void fetchAccount() {
		System.RestRequest rr = new System.RestRequest();
		rr.addHeader('recordId', [select Id from account limit 1][0].Id);
		RestContext.request = rr;
		SchoolSearch_accounts.fetchAccount();
	}

	@isTest
	static void fetchAccount_error() {

		Boolean hasError = false;

		try {
			System.RestRequest rr = new System.RestRequest();
			rr.addHeader('recordId', 'invalid id');
			RestContext.request = rr;
			SchoolSearch_accounts.fetchAccount();
		}
		catch(SchoolSearch_accounts.SchoolSearchException e){
			hasError = true;
		}

		System.assert(hasError);
	}
}