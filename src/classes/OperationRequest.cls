public class OperationRequest {

	public List<Double> numbers{get;set;}
	public DateTime reqDate{get;set;}

	public OperationRequest(){
		numbers = new List<Double>();
		reqDate = System.now();
	}

	public Static OperationRequest newInstance(){
		return new OperationRequest();
	}

}