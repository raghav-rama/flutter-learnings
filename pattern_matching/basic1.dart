void main() {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [a, b, c, ...] = list;
  print('$a $b $c');
  final [d, e, f, ...g] = list;
  print('$d $e $f $g');
  final [h, _, ...] = list;
  print('$h');
}
/*
### OUTPUT ###
1 2 3
1 2 3 [4, 5, 6, 7, 8, 9]
1
*/
