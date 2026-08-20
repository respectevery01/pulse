import 'package:json_annotation/json_annotation.dart';
part 'session.g.dart';

/// Umami's session detail endpoint returns views/events/totaltime as
/// strings ('1'), while the list endpoint returns ints. Accept both.
class _FlexibleInt implements JsonConverter<int, dynamic> {
  const _FlexibleInt();

  @override
  int fromJson(dynamic value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
  }

  @override
  dynamic toJson(int value) => value;
}

@JsonSerializable()
class Session {
  String id;
  String browser;
  String websiteId;
  String os;
  String device;
  String screen;
  String country;
  String language;
  String? region;
  String? city;
  @_FlexibleInt()
  int visits;
  @_FlexibleInt()
  int views;
  @_FlexibleInt()
  int? totaltime;
  @_FlexibleInt()
  int? events;
  DateTime? createdAt;
  DateTime firstAt;
  DateTime lastAt;

  Session({
    required this.browser,
    required this.websiteId,
    this.createdAt,
    this.city,
    required this.country,
    required this.device,
    required this.id,
    required this.os,
    this.region,
    required this.screen,
    required this.visits,
    required this.views,
    required this.firstAt,
    required this.lastAt,
    required this.language,
    this.events,
    this.totaltime,
  });

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
  Map<String, dynamic> toJson() => _$SessionToJson(this);

  static List<Session> toList(List<dynamic> dataList) {
    List<Session> loadedSessions = [];
    for (var session in dataList) {
      Session sesh = Session.fromJson(session);

      loadedSessions.add(sesh);
    }
    return loadedSessions;
  }
}
