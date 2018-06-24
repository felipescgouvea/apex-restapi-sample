

# Apex Rest API Sample

This reposity was created to show a sample of Rest API built with only Apex Code.

There is a sample online hosted on Salesforce that can be found in [Mathify](https://mathify-developer-edition.na59.force.com/services/apexrest/math/sum)

The use of this API is simply by filling **numbers** parameter and called with **GET** HTTP method.

The base URL is: https://mathify-developer-edition.na59.force.com/services/apexrest/math/sum

See the example below:

https://mathify-developer-edition.na59.force.com/services/apexrest/math/sum?numbers=1,1,3,5,8,13

We retrieve parameters by using: 

> String param = RestContext.request.params.get('numbers');

Check deeply our project!