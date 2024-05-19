void main() {
  Map<String, int> studentMarks = {
    "Shurojit": 97,
    "Saumyajit": 98,
    "Subhojit": 99,
    "Mosumi": 69,
  };
  
  studentMarks.forEach((key, val) {
    print("$key: $val");
  });
  
  List<Map<String, int>> marks = [{
    "Math": 100,
    "Physics": 100,
    "Chem": 96,
  }, {
    "Math": 99,
    "Physics": 100,
    "Chem": 96,
  }, {
    "Math": 100,
    "Physics": 99,
    "Chem": 96,
  }];
  
  marks.map((e) {
    print(e);
  }).toList();
}
