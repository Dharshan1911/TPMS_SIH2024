// models/tyre.dart

class Tyre {
  String id;
  String name;
  double pressure;
  double temperature;

  Tyre(
      {required this.id,
      required this.name,
      required this.pressure,
      required this.temperature});

  factory Tyre.fromJson(Map<String, dynamic> json) {
    return Tyre(
      id: json['id'],
      name: json['name'],
      pressure: json['pressure'],
      temperature: json['temperature'],
    );
  }
}
