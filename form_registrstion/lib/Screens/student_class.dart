class Student {
  final int id;
  final String name;
  final int age;
  final String phone;
  final String email;
  final String class_n;

   Student({ required this.id, required this.name,required this.age,required this.phone,required this.email,required this.class_n});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'phone': phone,
      'email': email,
      'class': class_n
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id'],
      name: map['name'],
      age: map['age'],
      phone: map['phone'],
      email: map['email'],
      class_n: map['class'],
    );
  }
}
