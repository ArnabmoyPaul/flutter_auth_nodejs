// unique_shelter_code_model.dart

class UniqueShelterCode {
  final String code;
  final double latitude;
  final double longitude;

  UniqueShelterCode({
    required this.code,
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return {'code': code, 'latitude': latitude, 'longitude': longitude};
  }

  factory UniqueShelterCode.fromMap(Map<String, dynamic> map) {
    return UniqueShelterCode(
      code: map['code'] ?? '',
      latitude: map['latitude']?.toDouble() ?? 0.0,
      longitude: map['longitude']?.toDouble() ?? 0.0,
    );
  }

  @override
  String toString() =>
      'UniqueShelterCode(code: $code, latitude: $latitude, longitude: $longitude)';
}
