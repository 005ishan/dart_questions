class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  // copyWith method
  Person copyWith({String? name, int? age}) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}

void main() {
  final p1 = Person(name: "Alice", age: 25);

  final p2 = p1.copyWith(age: 26); // change only age
  final p3 = p1.copyWith(name: "Bob"); // change only name

  print(p1.name); // Alice
  print(p2.age);  // 26
  print(p3.name); // Bob
}
