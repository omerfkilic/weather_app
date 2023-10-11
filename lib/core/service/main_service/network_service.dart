import 'dart:developer';
import 'package:http/http.dart' as http;

class NetworkService {
  NetworkService._();

  static const String _httpSuccessCodeEmoji = "🟢";
  static const String _httpFailCodeEmoji = "🔴";

  static void _customPrint({required http.Response response}) {
    log(
        response.statusCode.toString() +
            (response.statusCode == 200
                ? " $_httpSuccessCodeEmoji"
                : " $_httpFailCodeEmoji"),
        name: "Response Status Code");
    log(response.body.toString(), name: "Response Body");
  }

  static Future<http.Response> get({required String url}) async {
    final http.Response response =
        await http.get(Uri.parse(url)).catchError((e) => throw e);
    _customPrint(response: response);
    return response;
  }

  static Future<http.Response> post({
    required String url,
    required String body,
  }) async {
    final http.Response response = await http
        .post(Uri.parse(url), body: body, headers: null)
        .catchError((e) => throw e);
    _customPrint(response: response);
    return response;
  }
}
