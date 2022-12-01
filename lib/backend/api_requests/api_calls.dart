import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class EthereumCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Ethereum',
      apiUrl:
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=eth&ids=ethereum&order=market_cap_desc&per_page=100&page=1&sparkline=true',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$..image''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$..price..[0]''',
      );
}

class BitcoinCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Bitcoin',
      apiUrl:
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=btc&ids=bitcoin&order=market_cap_desc&per_page=10&page=1&sparkline=true&price_change_percentage=24',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$..price..[0]''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
      );
}

class XrpCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'xrp',
      apiUrl:
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=xrp&ids=ripple&order=market_cap_desc&per_page=10&page=1&sparkline=true&price_change_percentage=24',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$..price..[0]''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
      );
}

class CardanoCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'cardano',
      apiUrl:
          'https://api.coingecko.com/api/v3/coins/markets?vs_currency=xrp&ids=cardano&order=market_cap_desc&per_page=10&page=1&sparkline=true&price_change_percentage=24',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$..price..[0]''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$[:].image''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
