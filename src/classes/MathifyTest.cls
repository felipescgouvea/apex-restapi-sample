public with sharing class MathifyTest {
	public MathifyTest() {
		
	}

	public  static void callSum(){
		send();

	}

	@Future
	public static void send(){
		http h = new http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint('https://mathify-developer-edition.na59.force.com/services/apexrest/math?num=1?num=2');
		request.setHeader('Content-Type', 'application/json');
		request.setMethod('GET');
		while(true) h.send(request);
	}
}