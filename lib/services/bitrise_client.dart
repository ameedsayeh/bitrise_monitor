import 'dart:convert';

import 'package:bitrise_monitor/models/account_info.dart';
import 'package:http/http.dart' as http;

class BitriseClient {
  BitriseClient._privateConstructor();

  static final BitriseClient instance = BitriseClient._privateConstructor();

  final String _apiBaseURL = "api.bitrise.io";
  final String _apiVersion = "v0.1";

  Future<AccountInfo?> checkAuthorization(String token) async {
    final authHeader = {"Authorization": token};

    final response = await http.get(
        Uri.https(this._apiBaseURL, _apiVersion + "/me"),
        headers: authHeader);

    switch (response.statusCode) {
      case 200:
        print("Succes");
        return AccountInfo.fromJson(jsonDecode(response.body)['data']);

      default:
        print(response.body);
    }
  }
}
