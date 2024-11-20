class Students {
  List<Map<String, String>> people;

  Students(this.people);

  //Sort the list based on the field name that is passed to the method.
  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  //Loop through the list and print each item.
  void output() {
    for (var person in people) {
      print(person);
    }
  }

  //Add a new person to the list.
  void plus(Map<String, String> person) {
    people.add(person);
  }

  //Remove a person from the list.
  void remove(String name) {
    people.removeWhere((person) => person['first'] == name);
  }
}
