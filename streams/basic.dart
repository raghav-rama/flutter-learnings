Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (final value in stream) {
    sum += value;
    print('Sum: $sum');
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; ++i) {
    print('Adding $i...');
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum);
}

/*
### OUTPUT ###
Adding 1...
Sum: 1
Adding 2...
Sum: 3
Adding 3...
Sum: 6
Adding 4...
Sum: 10
Adding 5...
Sum: 15
Adding 6...
Sum: 21
Adding 7...
Sum: 28
Adding 8...
Sum: 36
Adding 9...
Sum: 45
Adding 10...
Sum: 55
55
*/
