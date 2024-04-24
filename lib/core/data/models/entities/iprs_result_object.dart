class IPRS {
  final int id;
  final String firstName;
  final String middleName;
  final String lastName;
  final String gender;
  final int genderId;
  final String nationality;
  final int nationalityId;
  final String? countyOfBirth;
  final String? districtOfBirth;
  final String? divisionOfBirth;
  final String? locationOfBirth;
  final DateTime? dateOfBirth;

  IPRS(
      {required this.id,
      required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.gender,
      required this.genderId,
      required this.nationality,
      required this.nationalityId,
      this.countyOfBirth,
      this.dateOfBirth,
      this.districtOfBirth,
      this.divisionOfBirth,
      this.locationOfBirth});

  @override
  String toString() {
    return 'IPRS(id: $id, firstName: $firstName,middleName: $middleName, lastName: $lastName, gender: $gender,genderId: $genderId, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IPRS &&
        other.id == id &&
        other.firstName == firstName &&
        other.middleName == middleName &&
        other.lastName == lastName &&
        other.gender == gender &&
        other.genderId == genderId &&
        other.nationalityId == nationalityId &&
        other.nationality == nationality;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        middleName.hashCode ^
        lastName.hashCode ^
        gender.hashCode ^
        genderId.hashCode ^
        nationality.hashCode ^
        nationalityId.hashCode;
  }

  IPRS copyWith({
    int? id,
    String? firstName,
    String? middleName,
    String? lastName,
    String? gender,
    int? genderId,
    String? nationality,
    String? nationalityID,
    String? countyOfBirth,
    DateTime? dateOfBirth,
    String? districtOfBirth,
    String? divisionOfBirth,
    String? locationOfBirth,
  }) {
    return IPRS(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        gender: gender ?? this.gender,
        genderId: genderId ?? this.genderId,
        nationality: nationality ?? this.nationality,
        nationalityId: nationalityId ?? this.nationalityId,
        countyOfBirth: nationality ?? this.countyOfBirth,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        districtOfBirth: districtOfBirth ?? this.districtOfBirth,
        divisionOfBirth: divisionOfBirth ?? this.divisionOfBirth,
        locationOfBirth: locationOfBirth ?? this.locationOfBirth);
  }
}
