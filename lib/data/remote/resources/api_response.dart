// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @JsonKey(name: 'status_message')
  final String? statusMessage;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'list_id')
  final int? listId;

  ApiResponse({this.statusCode, this.statusMessage, this.success, this.listId});

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: 'status_code')
  final int? statusCode;
  @JsonKey(name: 'status_message')
  final String? statusMessage;
  @JsonKey(name: 'success')
  final bool? success;

  BaseResponse({this.statusCode, this.statusMessage, this.success});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
