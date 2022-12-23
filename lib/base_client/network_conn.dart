import 'package:http/http.dart' as http;

const String baseURL = "http://18.135.170.140";

class NetworkConn {
  var client = http.Client();
  // GET
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseURL + api);
    // var _headers = {

    // }
    var response = await client.get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      // Exception
    }
  }

  Future<dynamic> post(String api) async {}
  Future<dynamic> put(String api) async {}
  Future<dynamic> delete(String api) async {}
}
