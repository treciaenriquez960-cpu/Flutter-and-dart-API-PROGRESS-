class Student {
  final int? id;
  final String name;
  final String course;
  final String year;

  Student({
    this.id,
    required this.name,
    required this.course,
    required this.year,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      course: json['course'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "course": course,
      "year": year,
    };
  }
}