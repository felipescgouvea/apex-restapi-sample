/**
 * See https://github.com/financialforcedev/fflib-apex-common for more info
 *
 * Install library via
 *   https://githubsfdeploy.herokuapp.com/app/githubdeploy/financialforcedev/fflib-apex-common
 */

/**
 * Encapsulates all service layer logic for a given function or module in the application
 * 
 * For more guidelines and details see 
 *   https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Service_Layer
 *
 **/
public class Mathify
{



	public static String sum(OperationRequest op)
	{

		OperationResponse response = OperationResponse.newInstance();

		String separator = ',';
		Double formattedNumbers = 0;
		String numbers = RestContext.request.params.get('numbers');
		try{
			if(numbers != null){
				while(numbers != ''){
					Double nextNumber = Double.valueOf(numbers.substringBefore(separator));
					formattedNumbers += (nextNumber);

					numbers = numbers.substringAfter(separator);
				}
			}
		} catch(TypeException ex){
				System.debug('ERRO NOS PARAMETROS DE ENTRADA');
				formattedNumbers = 0;
		} finally{

			response.result = formattedNumbers;
			response.requestDate = System.Now().format('dd/MM/yyyy  HH:mm:ss');
			response.operation = 'sum';
			//response.operation = numbers;

			
		}
		return JSON.serialize(response);

	}
}