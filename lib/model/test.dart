class TestFields {
  static const String id = '_id';
  static const String name = 'name';
}

class Test {
  static String tableName = 'test';
  final int? id;
  final String name;

  const Test({
    this.id,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      TestFields.id: id,
      TestFields.name: name,
    };
  }

  factory Test.fromJson(Map<String, dynamic> json) {
    return Test(
      id: json[TestFields.id] as int,
      name:
          json[TestFields.name] == null ? '' : json[TestFields.name] as String,
    );
  }

  Test clone({
    int? id,
    String? name,
  }) {
    return Test(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
