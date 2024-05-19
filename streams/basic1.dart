void main() async {
  countDown().listen((val) {
    print(val);
  }, onDone: () {
    print("Stream consumed");
  });
  print("Hemlo");
}

Stream<int> countDown() async* {
  for (int i = 10; i > 0; --i) {
    yield i;
    await Future.delayed(Duration(milliseconds: 100));
  }
}
/*
### OUTPUT ###
Hemlo
10
9
8
7
6
5
4
3
2
1
Stream consumed
*/
