import "dart:async";

void main() {
  countdown();
}

void countdown() {
  final controller = StreamController<int>();

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.addError("Something went wrong");

  controller.stream.listen((val) {
    print(val);
  }, onError: (err) {
    print(err);
  });

  controller.close();
}

/*
1
2
Something went wrong
*/
