void main() {
  var hooman = Hooman();
  hooman.fn();
}

mixin Jump {
  int jump = 10;
}

mixin Fun {
  bool fun = true;
}

class Hooman with Jump, Fun {
  void fn() {
    print(jump);
    print(fun);
  }
}
