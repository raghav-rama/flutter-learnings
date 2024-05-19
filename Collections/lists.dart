void main() {
  List<Student<String, int>> list = [Student("Raman", 90), Student("Chaman", 80), Student("Naman", 70), ];
  printStuff(list);
  list.add(Student("Gaman", 65));
  printStuff(list);
  list.insert(0, Student("Pawan", 55));
  printStuff(list);
  list.remove(list[0]);
  printStuff(list);
  list = list.where((student) => student.marks >= 70).toList();
  printStuff(list);
  
}

void printStuff(var list) {
  print(list.length);
  print(list);
}

class Student<T, N> {
  final T name;
  final N marks;
  
  Student(this.name, this.marks);
  
  @override
  String toString() {
    return '(name: $name, marks: $marks)';
  }
}

/*
### OUTPUT ###
3
[(name: Raman, marks: 90), (name: Chaman, marks: 80), (name: Naman, marks: 70)]
4
[(name: Raman, marks: 90), (name: Chaman, marks: 80), (name: Naman, marks: 70), (name: Gaman, marks: 65)]
5
[(name: Pawan, marks: 55), (name: Raman, marks: 90), (name: Chaman, marks: 80), (name: Naman, marks: 70), (name: Gaman, marks: 65)]
4
[(name: Raman, marks: 90), (name: Chaman, marks: 80), (name: Naman, marks: 70), (name: Gaman, marks: 65)]
3
[(name: Raman, marks: 90), (name: Chaman, marks: 80), (name: Naman, marks: 70)]
*/
