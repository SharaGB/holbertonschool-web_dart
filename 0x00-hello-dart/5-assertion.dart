void main(List<String> args) {
  num obtainNum = int.parse(args[0]);
  assert(obtainNum >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}
