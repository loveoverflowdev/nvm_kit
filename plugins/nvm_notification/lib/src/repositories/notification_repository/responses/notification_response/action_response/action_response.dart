// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'action_color_response/action_color_response.dart';
import '../status_response/status_response.dart';
import '../status_script_response/status_script_response.dart';

export 'action_color_response/action_color_response.dart';

part 'action_response.g.dart';

@JsonSerializable()
class ActionResponse {
  @JsonKey(fromJson: _idFromJson, toJson: _idToJson)
  final String id;

  @JsonKey(name: 'requestUrl')
  final String? xhrRequestUrl;

  @JsonKey(
    name: 'requestMethod',
    fromJson: _xhrRequestMethodFromJson,
    toJson: _xhrRequestMethodToJson,
  )
  final XhrRequestMethod? xhrRequestMethod;

  @JsonKey(name: 'url')
  final String? browserUrl;

  final String actionName;
  final String actionType;
  final ActionColorResponse actionColor;
  final StatusResponse actionStatus;

  @JsonKey(name: 'statusScripts')
  final List<StatusScriptResponse> statusScriptList;

  ActionResponse({
    required this.id,
    required this.browserUrl,
    required this.xhrRequestUrl,
    required this.actionType,
    required this.actionColor,
    required this.actionStatus,
    required this.actionName,
    this.xhrRequestMethod,
    this.statusScriptList = const [],
  });

  factory ActionResponse.fromJson(Map<String, dynamic> json) =>
      _$ActionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActionResponseToJson(this);

  static String _idFromJson(dynamic bigInt) => bigInt.toString();
  static BigInt _idToJson(String bigInt) => BigInt.parse(bigInt);

  static XhrRequestMethod? _xhrRequestMethodFromJson(String? str) =>
      XhrRequestMethod.fromRawString(str);
  static String? _xhrRequestMethodToJson(XhrRequestMethod? type) =>
      type?.toRawString();
}

enum XhrRequestMethod {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  unknown(''),
  ;

  const XhrRequestMethod(this._rawString);
  final String _rawString;

  static XhrRequestMethod? fromRawString(String? value) {
    if (value == null) return null;

    switch (value.toUpperCase()) {
      case 'GET':
        return XhrRequestMethod.get;
      case 'POST':
        return XhrRequestMethod.post;
      case 'PUT':
        return XhrRequestMethod.put;
      case 'DELETE':
        return XhrRequestMethod.delete;
      default:
        return XhrRequestMethod.unknown;
    }
  }

  String toRawString() {
    return this._rawString;
  }
}
