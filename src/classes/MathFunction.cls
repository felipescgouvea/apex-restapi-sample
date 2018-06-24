@RestResource(urlMapping='/math/sum')
global with sharing class MathFunction {


	global class MathResponse{
		global String id{get;set;}

		public MathResponse(){
			id = 'Teste';
		}

	}

	@HttpGet()
	global static void sum(){

        RestRequest req = RestContext.request;
        RestResponse res = Restcontext.response;


		OperationRequest op = OperationRequest.newInstance();
		RestContext.response.addHeader('Content-Type', 'application/json');
		RestContext.response.responseBody = Blob.valueOf(Mathify.sum(op));
		
	}
}