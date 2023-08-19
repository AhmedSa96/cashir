import 'dart:convert';

import 'package:http/http.dart' as http;

class AppResponse<T> {
  final int statusCode;
  final T data;

  AppResponse({
    required this.statusCode,
    required this.data,
  });
}

class HttpService {
  static const _baseUrl = '';
  static const _defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  Future<AppResponse<T>> get<T>({
    required String url,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    final res = await http.get(_buildUrl(url, query), headers: {
      ..._defaultHeaders,
      ...headers,
    });

    return AppResponse(
      statusCode: res.statusCode,
      data: jsonDecode(res.body),
    );
  }

  Future<AppResponse<T>> post<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    final res = await http.post(
      _buildUrl(url, query),
      headers: {
        ..._defaultHeaders,
        ...headers,
      },
      body: jsonEncode(body),
    );

    return AppResponse(
      statusCode: res.statusCode,
      data: jsonDecode(res.body),
    );
  }

  Future<AppResponse<T>> put<T>({
    required String url,
    required Map<String, dynamic> body,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    final res = await http.put(
      _buildUrl(url, query),
      headers: {
        ..._defaultHeaders,
        ...headers,
      },
      body: jsonEncode(body),
    );

    return AppResponse(
      statusCode: res.statusCode,
      data: jsonDecode(res.body),
    );
  }

  Future<AppResponse<T>> delete<T>({
    required String url,
    Map<String, String> headers = const {},
    Map<String, dynamic> query = const {},
  }) async {
    final res = await http.delete(_buildUrl(url, query), headers: {
      ..._defaultHeaders,
      ...headers,
    });

    return AppResponse(
      statusCode: res.statusCode,
      data: jsonDecode(res.body),
    );
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
