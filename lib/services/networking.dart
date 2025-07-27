// networking.dart
// Handles API requests and networking logic for fetching cryptocurrency data.

import 'dart:convert';
import 'package:http/http.dart' as http;

String apiKey =
    '61092797ad3fdf6e1a884cd9f29a1332bee877dce765812ac77c5d92c097ce8f';
String baseUrl =
    'https://data-api.coindesk.com/index/cc/v1/latest/tick?market=ccix&instruments=';
String data = '';
double value = 0.0;

class NetworkHelper {
  Future<double> getExchangeRate(String bquote, String currency) async {
    try {
      http.Response response = await http.get(
        Uri.parse('$baseUrl$bquote-$currency&api_key=$apiKey'),
      );

      if (response.statusCode == 200) {
        data = response.body;
        value = jsonDecode(data)['Data']['BTC-USD']['VALUE'];
      } else {
        print('error');
      }
    } catch (e) {
      print(e);
    }
    return value;
  }
}
