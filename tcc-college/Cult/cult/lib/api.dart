import 'package:http/http.dart' as http;

const baseUrl = 'http://cult-api.herokuapp.com/api/v1/';
// const baseUrl = 'https://jsonplaceholder.typicode.com/';

class API {
  static Future getCities() async {
    return await http
        .get(baseUrl + 'cities?country_code=BR')
        .catchError((error) => print(error));
    ;
    // return await http.get(baseUrl + 'users');
  }
}
