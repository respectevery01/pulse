// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Session _$SessionFromJson(Map<String, dynamic> json) => Session(
      browser: json['browser'] as String,
      websiteId: json['websiteId'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      city: json['city'] as String?,
      country: json['country'] as String,
      device: json['device'] as String,
      id: json['id'] as String,
      os: json['os'] as String,
      region: json['region'] as String?,
      screen: json['screen'] as String,
      visits: const _FlexibleInt().fromJson(json['visits']),
      views: const _FlexibleInt().fromJson(json['views']),
      firstAt: DateTime.parse(json['firstAt'] as String),
      lastAt: DateTime.parse(json['lastAt'] as String),
      language: json['language'] as String,
      events: const _FlexibleInt().fromJson(json['events']),
      totaltime: const _FlexibleInt().fromJson(json['totaltime']),
    );

Map<String, dynamic> _$SessionToJson(Session instance) => <String, dynamic>{
      'id': instance.id,
      'browser': instance.browser,
      'websiteId': instance.websiteId,
      'os': instance.os,
      'device': instance.device,
      'screen': instance.screen,
      'country': instance.country,
      'language': instance.language,
      'region': instance.region,
      'city': instance.city,
      'visits': const _FlexibleInt().toJson(instance.visits),
      'views': const _FlexibleInt().toJson(instance.views),
      'totaltime': _$JsonConverterToJson<dynamic, int>(
          instance.totaltime, const _FlexibleInt().toJson),
      'events': _$JsonConverterToJson<dynamic, int>(
          instance.events, const _FlexibleInt().toJson),
      'createdAt': instance.createdAt?.toIso8601String(),
      'firstAt': instance.firstAt.toIso8601String(),
      'lastAt': instance.lastAt.toIso8601String(),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
