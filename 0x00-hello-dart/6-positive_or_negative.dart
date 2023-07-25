void main(List<String> args) {
  int numArg = int.parse(args[0]);
  if (numArg > 0) {
    print('${numArg} is positive');
  } else if (numArg == 0) {
    print('${numArg} is zero');
  } else {
    print('${numArg} is negative');
  }
}
