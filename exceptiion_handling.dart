void main() {
  print(10/3);
  print(10/0);
  try {
  print(10~/0);
  } on UnsupportedError catch (e) {
    print(e.runtimeType);
  }
  print("Ritviz");
}
