import 'dart:convert';
import 'package:hybrid_3/students.dart';

void main() {
  String json = '''
[
  {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
  {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]
''';

  //Convert the JSON string to a list of maps.
  List<dynamic> decoded = jsonDecode(json);
  List<Map<String, String>> studentList =
      decoded.map((item) => Map<String, String>.from(item)).toList();

  //Create instances of the Students class.
  Students students = Students(studentList);

  //Test the output method.
  print("Original list:");
  students.output();

  print("\nSORT by first name:");
  students.sort('first');
  students.output();

  print("\nADD a new student:");
  students.plus(
      {"first": "Reggie", "last": "Felix", "email": "feli0057@algonquinlive.com"});
  students.output();

  print("\nREMOVE students with first name 'Reggie':");
  students.remove("Reggie");
  students.output();
}
