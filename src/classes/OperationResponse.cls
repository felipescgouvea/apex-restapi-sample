public with sharing class OperationResponse {

	public Double result{get;set;}
	public String Operation{get;set;}
	public String requestDate{get;set;}


	public OperationResponse(){
		result = 0;
	}

	public Static OperationResponse newInstance(){
		return new OperationResponse();
	}
}