Future<String> helloAfterTwoSecs() async {
  return Future.delayed(
    Duration(seconds: 2), () async => "Async Hey!!!"  
  );
}

void main() async {
  print("Hemlo");
  print(await helloAfterTwoSecs());
  print("Cheemse");
  print("Pampa");
}

/*
Hemlo
Async Hey!!!
Cheemse
Pampa

NOTE:
If .then() is used then the output is 
Hemlo
Cheemse
Pampa
Async Hey!!
*/
