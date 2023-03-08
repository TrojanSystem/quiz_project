import 'package:http/http.dart' as http;

class HttpService {
  Future<http.Response> getWeatherData() async {
    http.Response response;
    String url =
        "https://opentdb.com/api.php?amount=10";
    final uri = Uri.parse(url);
    try {
      response = await http.get(uri);
    } on Exception catch (e) {
      throw e;
    }
    return response;
  }
}
