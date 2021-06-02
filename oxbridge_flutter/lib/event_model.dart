
class Event {
  final int eventId;
  final String name;
  final String eventStart;
  final String eventEnd;
  final String city;
  final String eventCode;

  Event({
    required this.eventId,
    required this.name,
    required this.eventStart,
    required this.eventEnd,
    required this.city,
    required this.eventCode,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      eventId: json['eventId'],
      name: json['name'],
      eventStart: json['eventStart'],
      eventEnd: json['eventEnd'],
      city: json['city'],
      eventCode: json['eventCode'],
    );
  }
}
