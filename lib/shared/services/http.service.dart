import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  static const _baseUrl = '';
  static const _defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  Future<http.Response> get({
    required String url,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    return await http.get(_buildUrl(url, query), headers: {
      ..._defaultHeaders,
      ...headers,
    });
  }

  Future<http.Response> post({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    return await http.post(
      _buildUrl(url, query),
      headers: {
        ..._defaultHeaders,
        ...headers,
      },
      body: jsonEncode(body),
    );
  }

  Future<http.Response> put({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    return await http.put(
      _buildUrl(url, query),
      headers: {
        ..._defaultHeaders,
        ...headers,
      },
      body: jsonEncode(body),
    );
  }

  Future<http.Response> delete({
    required String url,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    return await http.delete(_buildUrl(url, query), headers: {
      ..._defaultHeaders,
      ...headers,
    });
  }

  Uri _buildUrl(String url, Map<String, dynamic> query) {
    if (query.isEmpty) return Uri.parse("$_baseUrl$url");

    var queryString = query.entries.map((e) {
      if (e.value is DateTime) return '${e.key}=${e.value.toIso8601String()}';

      return '${e.key}=${e.value}';
    }).join('&');

    return Uri.parse('$_baseUrl$url?$queryString');
  }
}
