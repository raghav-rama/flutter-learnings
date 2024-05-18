class A {
  final int a;
  final int b;
  
  const A (this.a, this.b);
}

void main() {
  final a = A(6, 9);
  print(a.a);
  print(a.b);
  
  final b = B(8, 9, 10);
  print(b.a);
  print(b.b);
  print(b._c); // can access private vars in same file
  b.setC = 69;
  print(b._c);
  
  print(C.a);
  print(C.returnOne());
}

class B {
  // private variable
  final int _a;
  final int _b;
  int _c;
  
  B (this._a, this._b, this._c);
  
  // getters
  int get a {
    return _a;
  }
  
  int get b => _b;
  
  // setters
  set setC(int c) {
    _c = c;
  }
  
}

class C {
  static int a = 5;
  static int returnOne() {
    return 1;
  }
}


/*
### OUTPUT ###
6
9
8
9
10
69
5
1
*/
